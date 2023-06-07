ALTER PROCEDURE insertDaftarKategoriArtikel
    @idArtikel INT,
    @idKategori INT
AS
    INSERT INTO DaftarKategoriArtikel (idArtikel, idKategori)
    VALUES (@idArtikel, @idKategori)

EXEC insertDaftarKategoriArtikel 1, 163