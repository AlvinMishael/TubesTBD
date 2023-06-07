ALTER PROCEDURE insertMengatur
    @idAdmin VARCHAR(255),
    @status VARCHAR(15),
    @idArtikel INT
AS
    DECLARE 
        @namaAdmin VARCHAR(255),
        @namaArtikel VARCHAR(255),
        @tanggal DATE
    
    SELECT @namaAdmin = nama
    FROM Admin
    WHERE email = @idAdmin

    SELECT @namaArtikel = namaArtikel
    FROM Artikel
    WHERE idArtikel = @idArtikel

    SET @tanggal = GETDATE()

    INSERT INTO Mengatur (idAdmin, idArtikel, status, tanggal)
    VALUES (@idAdmin, @idArtikel, @status, @tanggal)

    INSERT INTO LogArtikel (namaArtikel, aktivitas, status, tanggal, namaAktor, tipeAktor, idAktor, idArtikel)
    VALUES (@namaArtikel, @status, @status, @tanggal, @namaAdmin, 'admin', @idAdmin, @idArtikel)

    UPDATE Artikel
    SET status = @status
    WHERE idArtikel = @idArtikel


EXEC insertMengatur 'carterhannah@example.net', 'reject', 1