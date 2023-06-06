ALTER PROCEDURE updateNamaArtikel
    @idArtikel INT,
    @nama VARCHAR(255)
AS
    UPDATE Artikel
    SET [namaArtikel] = @nama
    WHERE idArtikel = @idArtikel

EXEC updateNamaArtikel 1, 'Machine Learning'