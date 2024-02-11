ALTER PROCEDURE SearchDinamis
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
	SELECT DISTINCT
		idArtikel
	FROM 
		@idArtikelKategori 
	WHERE 
		idArtikel IS NOT NULL
	
	INSERT INTO @idhasilTemp
	SELECT DISTINCT
		idArtikel
	FROM 
		@idArtikelJudul 
	WHERE 
		idArtikel IS NOT NULL

	INSERT INTO @idhasilTemp
	SELECT DISTINCT
		idArtikel
	FROM 
		@idArtikelPenulis 
	WHERE 
		idArtikel IS NOT NULL
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


--EXEC SearchDinamis 'nft,management,Education,Coaching,Meetings', 'use', null