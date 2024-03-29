/****** Object:  StoredProcedure [dbo].[deleteAdmin]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[deleteAdmin]
	@email varchar(255)
AS
	UPDATE [Admin]
	SET flag = 'inactive'
	WHERE email = @email
GO
/****** Object:  StoredProcedure [dbo].[deleteDaftarKategoriArtikel]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleteDaftarKategoriArtikel]
    @idDaftarKategoriArtikel INT
AS
    DELETE FROM DaftarKategoriArtikel
    WHERE idDaftarKategoriArtikel = @idDaftarKategoriArtikel
GO
/****** Object:  StoredProcedure [dbo].[deleteKategori]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deleteKategori]
    @idKategori INT
AS

    DELETE FROM DaftarKategoriArtikel
    WHERE idKategori = @idKategori

    DELETE FROM Kategori
    WHERE idKategori = @idKategori
GO
/****** Object:  StoredProcedure [dbo].[deletePengguna]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deletePengguna]
	@email varchar(255)
AS
	UPDATE [pengguna]
	SET flag = 'inactive'
	WHERE email = @email
GO
/****** Object:  StoredProcedure [dbo].[insertAdmin]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertAdmin] 
    @email VARCHAR(255),
    @password VARCHAR(255),
    @nama VARCHAR(255)
AS
    INSERT INTO Admin (email, password, nama)
    VALUES (@email, @password, @nama)
GO
/****** Object:  StoredProcedure [dbo].[insertArtikel]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertArtikel]
	@namaArtikel varchar(255),
	@isi text,
	@namaPenulis varchar(255),
	@tipe varchar(7),
	@email varchar(255),
	@kategori varchar(255)
AS
	DECLARE
		@tanggal datetime,
		@idArtikel int,
		@idTagCurr int
	DECLARE @tag TABLE(
		tag varchar(255)
	)

	DECLARE @idTag TABLE(
		idKategori int
	)

	INSERT INTO @tag
    SELECT
        value
    FROM
        STRING_SPLIT(@kategori, ',')

	INSERT INTO @idTag
	SELECT
		idKategori
	FROM 
		kategori
	INNER JOIN
		@tag tag ON tag.tag = kategori.topic

	SET @tanggal = GETDATE()

	INSERT INTO artikel (namaArtikel, isi, namaPenulis, [status], tipe, tanggal, idPenulis)
	SELECT @namaArtikel, @isi, @namaPenulis, 'submit', @tipe, @tanggal, @email

	SELECT TOP 1
		@idArtikel = idArtikel
	FROM 
		artikel
	WHERE
		namaArtikel = @namaArtikel AND idPenulis = @email
	ORDER BY 
		idArtikel DESC
	
	DECLARE cursorkategori CURSOR 
	FOR 
		SELECT
			idKategori
		FROM 
			@idTag

	OPEN cursorkategori

	FETCH NEXT FROM cursorKategori INTO @idtagCurr

	WHILE @@FETCH_STATUS = 0
	BEGIN
		
		INSERT INTO daftarkategoriartikel (idArtikel, idKategori)
		SELECT @idArtikel, @idTagCurr

		FETCH NEXT FROM cursorKategori INTO @idtagCurr
		
	END

	CLOSE cursorkategori
	DEALLOCATE cursorkategori

	INSERT INTO logArtikel (namaArtikel, aktivitas, [status], tanggal, namaAktor, tipeAktor, idAktor, idArtikel)
	SELECT @namaArtikel, 'submit','submit',@tanggal, @namaPenulis,'member',  @email, @idArtikel

--EXEC InsertArtikel 'Fiera Besari Kecelakaan', 'Fiersa Besari dan timnya mengalami kecelakaan lalu lintas pada Sabtu, 3 Juni 2023 dalam perjalanan darat dari Bone menuju Makassar, Sulawesi Selatan. Melalui unggahan Instagram Story di akunnya, Fiersa mengungkap kronologi kecelakaan yang hampir membuat mobil yang ia dan tim tumpangi jatuh ke jurang.','Rebecca Stark', 'free', 'alexander44@example.net', 'Career Advice,Entrepreneurship'
GO
/****** Object:  StoredProcedure [dbo].[insertDaftarKategoriArtikel]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertDaftarKategoriArtikel]
    @idArtikel INT,
    @idKategori INT
AS
    INSERT INTO DaftarKategoriArtikel (idArtikel, idKategori)
    VALUES (@idArtikel, @idKategori)
GO
/****** Object:  StoredProcedure [dbo].[insertKategori]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertKategori]
    @namaKategori VARCHAR(255)
AS
    INSERT INTO Kategori (topic)
    VALUES (@namaKategori)
GO
/****** Object:  StoredProcedure [dbo].[insertLogHarga]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertLogHarga]
    @harga MONEY,
    @idAdmin VARCHAR(255)
AS
    DECLARE 
        @tanggal DATETIME
    
    SET @tanggal = GETDATE()

    INSERT INTO LogHarga (idAdmin, harga, tanggalBerlaku)
    VALUES (@idAdmin, @harga, @tanggal)
GO
/****** Object:  StoredProcedure [dbo].[insertMembaca]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertMembaca]
    @idPembaca VARCHAR(255),
    @idArtikel INT
AS
    DECLARE
        @namaPembaca VARCHAR(255),
        @namaArtikel VARCHAR(255),
        @tanggal DATE
    
    SELECT @namaPembaca = nama
    FROM Pengguna
    WHERE email = @idPembaca

    SELECT @namaArtikel = namaArtikel
    FROM Artikel
    WHERE idArtikel = @idArtikel

    SET @tanggal = GETDATE()
        
    INSERT INTO Membaca (idPembaca, idArtikel)
    VALUES (@idPembaca, @idArtikel)

    INSERT INTO LogArtikel (namaArtikel, aktivitas, status, tanggal, namaAktor, tipeAktor, idAktor, idArtikel)
    VALUES (@namaArtikel, 'membaca', 'publish', @tanggal, @namaPembaca, 'member', @idPembaca, @idArtikel)
GO
/****** Object:  StoredProcedure [dbo].[insertMember]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertMember]
    @email VARCHAR(255),
    @password VARCHAR(255),
    @nama VARCHAR(255),
    @alamat VARCHAR(255),
    @noTelp VARCHAR(255),
    @tipeMember VARCHAR(7)
AS
    
    INSERT INTO Pengguna (email, password, nama, alamat, tipeMember, noTelp)
    VALUES (@email, @password, @nama, @alamat, @tipeMember, @noTelp)
GO
/****** Object:  StoredProcedure [dbo].[insertMengatur]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertMengatur]
    @idAdmin VARCHAR(255),
    @status VARCHAR(15),
    @idArtikel INT
AS
    DECLARE 
        @namaAdmin VARCHAR(255),
        @namaArtikel VARCHAR(255),
        @tanggal DATE
    
    SELECT @namaAdmin = nama
    FROM Admin
    WHERE email = @idAdmin

    SELECT @namaArtikel = namaArtikel
    FROM Artikel
    WHERE idArtikel = @idArtikel

    SET @tanggal = GETDATE()

    INSERT INTO Mengatur (idAdmin, idArtikel, status, tanggal)
    VALUES (@idAdmin, @idArtikel, @status, @tanggal)

    INSERT INTO LogArtikel (namaArtikel, aktivitas, status, tanggal, namaAktor, tipeAktor, idAktor, idArtikel)
    VALUES (@namaArtikel, @status, @status, @tanggal, @namaAdmin, 'admin', @idAdmin, @idArtikel)

    UPDATE Artikel
    SET status = @status
    WHERE idArtikel = @idArtikel
GO
/****** Object:  StoredProcedure [dbo].[insertTransaksi]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertTransaksi]
    @idMember VARCHAR(255)
AS
    DECLARE
        @tanggal DATETIME,
        @harga_sekarang MONEY,
        @flag INT,
        @tipe_member VARCHAR(7)

    SELECT @tipe_member = tipeMember
    FROM Pengguna
    WHERE email = @idMember

    IF (@tipe_member = 'free')
    BEGIN
        SET @tanggal = GETDATE()


		SELECT TOP 1 @harga_sekarang = 
                harga
            FROM
                LogHarga
            ORDER BY
                tanggalBerlaku DESC

        INSERT INTO Transaksi (idPengguna, harga, tanggal)
        VALUES (@idMember, @harga_sekarang, @tanggal)

        UPDATE Pengguna
        SET tipeMember = 'premium'
        WHERE email = @idMember

    END
GO
/****** Object:  StoredProcedure [dbo].[updateAlamatMember]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateAlamatMember]
    @inputAlamat VARCHAR(255),
    @email VARCHAR(255)
AS
    UPDATE Pengguna
    SET alamat = @inputAlamat
    WHERE email = @email
GO
/****** Object:  StoredProcedure [dbo].[updateIsiArtikel]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateIsiArtikel]
    @idArtikel INT,
    @isi TEXT
AS
    UPDATE Artikel
    SET isi = @isi
    WHERE idArtikel = @idArtikel
GO
/****** Object:  StoredProcedure [dbo].[updateNamaAdmin]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateNamaAdmin]
    @idAdmin VARCHAR(255),
    @nama VARCHAR(255)
AS
    UPDATE [Admin]
    SET nama = @nama
    WHERE email = @idAdmin
GO
/****** Object:  StoredProcedure [dbo].[updateNamaArtikel]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateNamaArtikel]
    @idArtikel INT,
    @nama VARCHAR(255)
AS
    UPDATE Artikel
    SET [namaArtikel] = @nama
    WHERE idArtikel = @idArtikel
GO
/****** Object:  StoredProcedure [dbo].[updateNamaMember]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateNamaMember]
    @inputNama VARCHAR(255),
    @email VARCHAR(255)
AS
    UPDATE Pengguna
    SET nama = @inputNama
    WHERE email = @email
GO
/****** Object:  StoredProcedure [dbo].[updateNoTelpMember]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateNoTelpMember]
    @inputNoTelp VARCHAR(255),
    @email VARCHAR(255)
AS
    UPDATE Pengguna
    SET noTelp = @inputNoTelp
    WHERE email = @email
GO
/****** Object:  StoredProcedure [dbo].[updatePasswordAdmin]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updatePasswordAdmin]
    @idAdmin VARCHAR(255),
    @password VARCHAR(255)
AS
    UPDATE Admin
    SET [password] = @password
    WHERE email = @idAdmin
GO
/****** Object:  StoredProcedure [dbo].[updatePasswordMember]    Script Date: 6/7/2023 9:18:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updatePasswordMember]
    @inputPassword VARCHAR(255),
    @email VARCHAR(255)
AS
    UPDATE Pengguna
    SET [password] = @inputPassword
    WHERE email = @email
GO
