USE [Tubes]
GO
/****** Object:  StoredProcedure [dbo].[laporanTransaksiPerBulan1Tahun]    Script Date: 6/19/2023 4:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[laporanTransaksiPerBulan1Tahun]
    @tahun INT
AS
    SELECT
        DATEPART(MONTH, tanggal) AS 'bulan',
        COUNT(idTransaksi) AS 'banyak transaksi'
    FROM
        transaksi
    WHERE
        YEAR(tanggal) = @tahun
    GROUP BY
        DATEPART (MONTH, tanggal)
    
GO
/****** Object:  StoredProcedure [dbo].[laporanTransaksiPerTahun]    Script Date: 6/19/2023 4:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[laporanTransaksiPerTahun]
AS
    SELECT
        DATEPART(YEAR, tanggal) AS 'tahun',
        COUNT(idTransaksi) AS 'banyak transaksi'
    FROM
        transaksi
    GROUP BY
        DATEPART (YEAR, tanggal)
GO
/****** Object:  StoredProcedure [dbo].[lihatArtikelYangDitulis]    Script Date: 6/19/2023 4:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[lihatArtikelYangDitulis]
    @idMember VARCHAR(255)
AS
    SELECT
        namaArtikel,
        isi,
        [status],
        tipe,
        tanggal
    FROM
        artikel
    WHERE
        idPenulis = @idMember
GO
/****** Object:  StoredProcedure [dbo].[pencarianArtikel]    Script Date: 6/19/2023 4:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pencarianArtikel]
	@perintah int
AS
DECLARE 
	@idCurr int,
	@tanggalCurr datetime,
	@idTemp int,
	@tanggalTemp datetime,
	@statusTemp varchar(15),
	@idHasil int,
	@jarakTemp int,
	@jarakCurr int

DECLARE curs CURSOR
	FOR 
	SELECT
		idArtikel, tanggal, aktivitas
	FROM 
		LogArtikel
	GROUP BY
		idArtikel, tanggal, aktivitas
	ORDER BY
		idArtikel, tanggal ASC

IF @perintah = 1
BEGIN
	OPEN curs
	FETCH NEXT FROM curs
	INTO
		@idTemp, @tanggalTemp, @statusTemp
	WHILE @@FETCH_STATUS =0
	BEGIN
		if @statusTemp = 'publish'
		BEGIN
			SET @idCurr = @idTemp
			SEt @tanggalCurr = @tanggalTemp
		END
		ELSE IF @statusTemp = 'take down' AND @idTemp = @idCurr 
		BEGIN
			SET @jarakTemp = DATEDIFF(day, @tanggalCurr, @tanggalTemp)
			IF @jarakCurr IS NULL
			BEGIN
				SET @jarakCurr = @jarakTemp
				SET @idHasil = @idCurr
				SET @idCurr = 0
			END
			ELSE
				IF @jarakCurr > @jarakTemp
				BEGIN
					SET @jarakCurr = @jarakTemp
					SET @idHasil = @idCurr
					SET @idCurr = 0
				END
		END
		FETCH NEXT FROM curs
		INTO
			@idTemp, @tanggalTemp, @statusTemp
	END
	CLOSE curs
	DEALLOCATE curs
	
	SELECT 
		namaArtikel, isi, namaPenulis, tipe, idPenulis, @jarakCurr AS 'hari'
	FROM
		artikel
	WHERE 
		idArtikel = @idHasil
END
ELSE IF @perintah = 2
BEGIN
	OPEN curs
	FETCH NEXT FROM curs
	INTO
		@idTemp, @tanggalTemp, @statusTemp
	WHILE @@FETCH_STATUS =0
	BEGIN
		if @statusTemp = 'submit'
		BEGIN
			SET @idCurr = @idTemp
			SEt @tanggalCurr = @tanggalTemp
		END
		ELSE IF (@statusTemp = 'reject' OR @statusTemp = 'publish') AND @idTemp = @idCurr 
		BEGIN
			SET @jarakTemp = DATEDIFF(day, @tanggalCurr, @tanggalTemp)
			IF @jarakCurr IS NULL
			BEGIN
				SET @jarakCurr = @jarakTemp
				SET @idHasil = @idCurr
				SET @idCurr = 0
			END
			ELSE
				IF @jarakCurr > @jarakTemp
				BEGIN
					SET @jarakCurr = @jarakTemp
					SET @idHasil = @idCurr
					SET @idCurr = 0
				END
		END
		FETCH NEXT FROM curs
		INTO
			@idTemp, @tanggalTemp, @statusTemp
	END
	CLOSE curs
	DEALLOCATE curs
	
	SELECT 
		namaArtikel, isi, namaPenulis, tipe, idPenulis, @jarakCurr AS 'hari'
	FROM
		artikel
	WHERE 
		idArtikel = @idHasil
END
ELSE
BEGIN
	OPEN curs
	FETCH NEXT FROM curs
	INTO
		@idTemp, @tanggalTemp, @statusTemp
	WHILE @@FETCH_STATUS =0
	BEGIN
		if @statusTemp = 'submit'
		BEGIN
			SET @idCurr = @idTemp
			SEt @tanggalCurr = @tanggalTemp
		END
		ELSE IF (@statusTemp = 'reject' OR @statusTemp = 'publish') AND @idTemp = @idCurr 
		BEGIN
			SET @jarakTemp = DATEDIFF(day, @tanggalCurr, @tanggalTemp)
			IF @jarakCurr IS NULL
			BEGIN
				SET @jarakCurr = @jarakTemp
				SET @idHasil = @idCurr
				SET @idCurr = 0
			END
			ELSE
				IF @jarakCurr < @jarakTemp
				BEGIN
					SET @jarakCurr = @jarakTemp
					SET @idHasil = @idCurr
					SET @idCurr = 0
				END
		END
		FETCH NEXT FROM curs
		INTO
			@idTemp, @tanggalTemp, @statusTemp
	END
	CLOSE curs
	DEALLOCATE curs
	
	SELECT 
		namaArtikel, isi, namaPenulis, tipe, idPenulis, @jarakCurr AS 'hari'
	FROM
		artikel
	WHERE 
		idArtikel = @idHasil
END


--EXEC pencarianArtikel 1 EXEC pencarianArtikel 2 EXEC pencarianArtikel 3
GO
/****** Object:  StoredProcedure [dbo].[searchDinamis]    Script Date: 6/19/2023 4:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[searchDinamis]
	@kategori varchar(255),
	@judul varchar(255),
	@penulis varchar(255)
AS
	DECLARE 
		@idCurr int,
		@tempKategori varchar(255),
		@idKategoriCurr int,
		@kategoriCurr varchar(255)
	DECLARE @tag TABLE(
		tag varchar(255)
	)

	DECLARE @idTag TABLE(
		idKategori int
	)
	DECLARE @idArtikelKategori TABLE(
		idArtikel int,
		jumlahSama int
	)
	DECLARE @idArtikelJudul TABLE(
		idArtikel int
	)
	DECLARE @idArtikelPenulis TABLE(
		idArtikel int
	)
	DECLARE @idHasilTemp TABLE(
		idArtikel int
	)
	DECLARE @idHasil TABLE(
		idArtikel int,
		kategori varchar(255)
	)
	DECLARE @idKategori TABLE(
		idKategori int
	)
	
	IF @kategori IS NOT NULL
	BEGIN
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

		INSERT INTO @idArtikelKategori
		SELECT 
			idArtikel, COUNT(idArtikel) as jumlah
		FROM 
			DaftarKategoriArtikel
		INNER JOIN 
			@idTag tabel ON DaftarKategoriArtikel.idKategori = tabel.idKategori
		GROUP BY 
			idArtikel
		ORDER BY 
			jumlah DESC

			
	END

	IF @judul IS NOT NULL
	BEGIN
		INSERT INTO @idArtikelJudul
		SELECT 
			idArtikel
		FROM 
			artikel
		WHERE
			namaArtikel LIKE CONCAT('%', @judul, '%')

	END

	IF @penulis IS NOT NULL
	BEGIN
		INSERT INTO @idArtikelPenulis
		SELECT 
			idArtikel
		FROM 
			artikel
		WHERE
			namaPenulis LIKE CONCAT('%', @penulis, '%')

	END

	INSERT INTO @idhasilTemp
	SELECT 
		kategori.idArtikel
	FROM 
		@idArtikelKategori kategori 
		FULL OUTER JOIN 
			@idArtikelJudul judul ON kategori.idArtikel = judul.idArtikel
		FULL OUTER JOIN 
			@idArtikelPenulis penulis ON kategori.idArtikel = penulis.idArtikel
	WHERE 
		kategori.idArtikel IS NOT NULL

	DECLARE curs CURSOR 
	FOR
	SELECT
		idArtikel
	FROM 
		@idHasilTemp

	OPEN curs
	FETCH NEXT FROM 
		curs
	INTO
		@idCurr

	WHILE @@FETCH_STATUS = 0 
	BEGIN
		SET @tempKategori = ''

		DELETE FROM @idKategori

		INSERT INTO @idKategori
		SELECT 
			idKategori
		FROM 
			DaftarKategoriArtikel
		WHERE
			idArtikel = @idCurr

		DECLARE curs2 CURSOR 
		FOR
		SELECT
			idKategori
		FROM 
			@idKategori

		OPEN curs2

		FETCH NEXT FROM 
			curs2
		INTO
			@idKategoriCurr

		WHILE  @@FETCH_STATUS = 0
		BEGIN
			SELECT 
				@kategoriCurr = Topic
			FROM 
				kategori
			WHERE
				idKategori = @idKategoriCurr

			SET @tempKategori = @tempKategori + @kategoriCurr

			FETCH NEXT FROM 
				curs2
			INTO
				@idKategoriCurr

			IF @@FETCH_STATUS = 0
			BEGIN
				SET @tempKategori = @tempKategori + ', '
			END
		END


		CLOSE curs2
		DEALLOCATE curs2

		INSERT INTO @idHasil
		SELECT 
			@idCurr, @tempKategori

		FETCH NEXT FROM 
			curs
		INTO
			@idCurr
		
	END

	CLOSE curs
	DEALLOCATE curs

	SELECT
        namaArtikel,
        isi,
        namaPenulis,
        [status],
		kategori,
        tipe,
        tanggal
    FROM
        Artikel
    INNER JOIN 
        @idHasil tabel
    ON
        Artikel.idArtikel = tabel.idArtikel


--EXEC SearchDinamis 'nft,management,Education,Coaching,Meetings', 'quick', null
GO
/****** Object:  StoredProcedure [dbo].[searchKategori]    Script Date: 6/19/2023 4:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[searchKategori]
    @input VARCHAR(255)
AS
    CREATE TABLE #tag
    (
        tag VARCHAR(255)
    )

    CREATE TABLE #kategoriSesuaiTag
    (
        idKategori int
    )

    CREATE TABLE #idArtikelSesuaiTag
    (
        idArtikel int
    )

    CREATE TABLE #artikelSesuaiTag
    (
        namaArtikel VARCHAR(255),
        isi TEXT,
        namaPenulis VARCHAR(255),
        statusArtikel VARCHAR(15),
        tipe VARCHAR(7),
        tanggal DATETIME
    )

    INSERT INTO #tag
    SELECT
        value
    FROM
        STRING_SPLIT(@input, ',')
    
    INSERT INTO #kategoriSesuaiTag
    SELECT
        idKategori
    FROM 
        Kategori
    INNER JOIN
        #tag
    ON 
        LOWER(Kategori.Topic) = LOWER(#tag.tag)

    INSERT INTO #idArtikelSesuaiTag
    SELECT
        DISTINCT(DaftarKategoriArtikel.idArtikel)
    FROM
        DaftarKategoriArtikel
    INNER JOIN 
        #kategoriSesuaiTag tabel ON tabel.idKategori = DaftarKategoriArtikel.idKategori

    INSERT INTO #artikelSesuaiTag
    SELECT
        namaArtikel,
        isi,
        namaPenulis,
        [status],
        tipe,
        tanggal
    FROM
        Artikel
    INNER JOIN 
        #idArtikelSesuaiTag
    ON
        Artikel.idArtikel = #idArtikelSesuaiTag.idArtikel
    
    SELECT 
        namaArtikel ,
        isi ,
        namaPenulis ,
        statusArtikel ,
        tipe ,
        tanggal
    FROM
        #artikelSesuaiTag

--EXEC searchKategori 'nft,management,Education'
    
GO
