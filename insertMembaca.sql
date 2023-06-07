ALTER PROCEDURE insertMembaca
    @idPembaca VARCHAR(255),
    @idArtikel INT
AS
    DECLARE
        @namaPembaca VARCHAR(255),
        @namaArtikel VARCHAR(255),
        @tanggal DATE
    
    SELECT @namaPembaca = nama
    FROM Pengguna
    WHERE email = @idPembaca

    SELECT @namaArtikel = namaArtikel
    FROM Artikel
    WHERE idArtikel = @idArtikel

    SET @tanggal = GETDATE()
        
    INSERT INTO Membaca (idPembaca, idArtikel)
    VALUES (@idPembaca, @idArtikel)

    INSERT INTO LogArtikel (namaArtikel, aktivitas, status, tanggal, namaAktor, tipeAktor, idAktor, idArtikel)
    VALUES (@namaArtikel, 'membaca', 'publish', @tanggal, @namaPembaca, 'member', @idPembaca, @idArtikel)

EXEC insertMembaca 'alexander44@example.net', 39
