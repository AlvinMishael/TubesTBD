ALTER PROCEDURE SearchDinamis
	@kategori varchar(255),
	@judul varchar(255),
	@penulis varchar(255)
AS
	DECLARE @tag TABLE(
		tag varchar(255)
	)

	DECLARE @idTag TABLE(
		idKategori int
	)
	DECLARE @idArtikelKategori TABLE(
		idArtikel int
	)
	DECLARE @idArtikelJudul TABLE(
		idArtikel int
	)
	DECLARE @idArtikelPenulis TABLE(
		idArtikel int
	)
	DECLARE @hasil TABLE(
		namaArtikel VARCHAR(255),
        isi TEXT,
        namaPenulis VARCHAR(255),
        statusArtikel VARCHAR(15),
        tipe VARCHAR(7),
        tanggal DATETIME
	)
	DECLARE @idHasilTemp TABLE(
		idArtikel int
	)
	DECLARE @idHasil TABLE(
		idArtikel int
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
		SELECT DISTINCT
			idArtikel
		FROM 
			DaftarKategoriArtikel
		INNER JOIN 
			@idTag tabel ON DaftarKategoriArtikel.idKategori = tabel.idKategori

		INSERT INTO @idhasilTemp
		SELECT 
			idArtikel
		FROM 
			@idArtikelKategori kategori

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

		INSERT INTO @idhasilTemp
		SELECT 
			idArtikel
		FROM 
			@idArtikelJudul kategori
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

		INSERT INTO @idhasilTemp
		SELECT 
			idArtikel
		FROM 
			@idArtikelPenulis kategoril
	END

	INSERT INTO @idHasil
	SELECT DISTINCT
		idArtikel
	FROM
		@idHasilTemp

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
        @idHasil tabel
    ON
        Artikel.idArtikel = tabel.idArtikel


--EXEC SearchDinamis 'nft,management,Education', 'quick', null