ALTER PROCEDURE InsertLogHarga
    @harga MONEY,
    @idAdmin VARCHAR(255)
AS
    DECLARE 
        @tanggal DATETIME
    
    SET @tanggal = GETDATE()

    INSERT INTO LogHarga (idAdmin, harga, tanggalBerlaku)
    VALUES (@idAdmin, @harga, @tanggal)

EXEC InsertLogHarga 30000, 'qcooper@example.org'

