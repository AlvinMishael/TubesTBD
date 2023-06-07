ALTER PROCEDURE InsertArtikel
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

EXEC InsertArtikel 'Fiera Besari Kecelakaan', 'Fiersa Besari dan timnya mengalami kecelakaan lalu lintas pada Sabtu, 3 Juni 2023 dalam perjalanan darat dari Bone menuju Makassar, Sulawesi Selatan. Melalui unggahan Instagram Story di akunnya, Fiersa mengungkap kronologi kecelakaan yang hampir membuat mobil yang ia dan tim tumpangi jatuh ke jurang.','Rebecca Stark', 'free', 'alexander44@example.net', 'Career Advice,Entrepreneurship'
