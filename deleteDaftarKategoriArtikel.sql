CREATE PROCEDURE deleteDaftarKategoriArtikel
    @idDaftarKategoriArtikel INT
AS
    DELETE FROM DaftarKategoriArtikel
    WHERE idDaftarKategoriArtikel = @idDaftarKategoriArtikel

EXEC deleteDaftarKategoriArtikel 202