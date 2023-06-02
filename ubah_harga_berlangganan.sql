CREATE PROCEDURE ubah_harga_berlangganan
    @harga MONEY,
    @idAdmin VARCHAR(255)
AS
    DECLARE 
        @tanggal DATETIME
    
    SET @tanggal = GETDATE()

    INSERT INTO LogHarga (idAdmin, harga, tanggalBerlaku)
    VALUES (@idAdmin, @harga, @tanggal)

EXEC ubah_harga_berlangganan 30000, 'qcooper@example.org'

