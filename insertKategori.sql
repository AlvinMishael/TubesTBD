ALTER PROCEDURE insertKategori
    @namaKategori VARCHAR(255)
AS
    INSERT INTO Kategori (namaKategori)
    VALUES (@namaKategori)

EXEC insertKategori 'KNN'