ALTER PROCEDURE searchKategori
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

    
    
    CREATE TABLE #artikelSesuaiTag
    (
        namaArtikel VARCHAR(255),
        isi TEXT,
        namaPenulis VARCHAR(255),
        statusArtikel VARCHAR(15),
        kategori VARCHAR(max),
        tipe VARCHAR(7),
        tanggal DATETIME
    )

    DECLARE
        @curr_idArtikel INT,
        @curr_idKategori INT,
        @curr_kategori VARCHAR(255),
        @curr_kategori_full VARCHAR(max)

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

    DECLARE cursor_idArtikel CURSOR
    FOR
        SELECT
            DaftarKategoriArtikel.idArtikel AS "idArtikel"
        FROM
            DaftarKategoriArtikel
        CROSS JOIN
            #kategoriSesuaiTag
        WHERE 
            #kategoriSesuaiTag.idKategori = DaftarKategoriArtikel.idKategori
        GROUP BY
            DaftarKategoriArtikel.idArtikel
        ORDER BY
            COUNT(#kategoriSesuaiTag.idKategori) DESC
    
    OPEN cursor_idArtikel

    FETCH NEXT FROM cursor_idArtikel INTO @curr_idArtikel
    WHILE @@FETCH_STATUS = 0
    BEGIN

        SET @curr_kategori_full = ''

        DECLARE cursor_idKategori CURSOR
        FOR
            SELECT
                idKategori
            FROM
                DaftarKategoriArtikel
            WHERE
                idArtikel = @curr_idArtikel
            ORDER BY 
                idKategori ASC
        
        OPEN cursor_idKategori

        FETCH NEXT FROM cursor_idKategori INTO @curr_idKategori
        WHILE @@FETCH_STATUS = 0
        BEGIN

            SELECT @curr_kategori = topic
            FROM 
                Kategori
            WHERE
                idKategori = @curr_idKategori
            
            SET @curr_kategori_full = CONCAT(@curr_kategori_full, ', ',  @curr_kategori)

            FETCH NEXT FROM cursor_idKategori INTO @curr_idKategori
        END

        CLOSE cursor_idKategori
        DEALLOCATE cursor_idKategori

        SET @curr_kategori_full = SUBSTRING(@curr_kategori_full, 3, (LEN(@curr_kategori_full) - 2))

        INSERT INTO #artikelSesuaiTag (namaArtikel, isi, namaPenulis, statusArtikel, kategori, tipe, tanggal)
        SELECT
            namaArtikel,
            isi,
            namaPenulis,
            [status],
            @curr_kategori_full,
            tipe,
            tanggal
        FROM
            Artikel
        WHERE
            idArtikel = @curr_idArtikel

        FETCH NEXT FROM cursor_idArtikel INTO @curr_idArtikel

    END

    CLOSE cursor_idArtikel
    DEALLOCATE cursor_idArtikel

    SELECT 
        namaArtikel ,
        isi ,
        namaPenulis ,
        statusArtikel ,
        kategori,
        tipe ,
        tanggal 
    FROM
        #artikelSesuaiTag

EXEC searchKategori 'deep learning,machine learning'
    
