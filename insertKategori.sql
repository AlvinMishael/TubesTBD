ALTER PROCEDURE insertKategori
    @namaKategori VARCHAR(255)
AS
    INSERT INTO Kategori (topic)
    VALUES (@namaKategori)

EXEC insertKategori 'KNN'