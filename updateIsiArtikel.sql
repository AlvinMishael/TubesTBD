ALTER PROCEDURE updateIsiArtikel
    @idArtikel INT,
    @isi TEXT
AS
    UPDATE Artikel
    SET isi = @isi
    WHERE idArtikel = @idArtikel

EXEC updateIsiArtikel 1, 'Lorem ipsum dolor sit amet.'