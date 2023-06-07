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
    CROSS JOIN
        #kategoriSesuaiTag
    WHERE 
        #kategoriSesuaiTag.idKategori = DaftarKategoriArtikel.idKategori

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

EXEC searchKategori 'deep learning,machine learning'
    
