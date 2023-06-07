ALTER PROCEDURE deleteKategori
    @idKategori INT
AS

    DELETE FROM DaftarKategoriArtikel
    WHERE idKategori = @idKategori

    DELETE FROM Kategori
    WHERE idKategori = @idKategori

EXEC deleteKategori 163