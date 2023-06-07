ALTER PROCEDURE InsertTransaksi
    @idMember VARCHAR(255)
AS
    DECLARE
        @tanggal DATETIME,
        @harga_sekarang MONEY,
        @flag INT,
        @tipe_member VARCHAR(7)

    SELECT @tipe_member = tipeMember
    FROM Pengguna
    WHERE email = @idMember

    IF (@tipe_member = 'free')
    BEGIN
        SET @tanggal = GETDATE()


		SELECT TOP 1 @harga_sekarang = 
                harga
            FROM
                LogHarga
            ORDER BY
                tanggalBerlaku DESC

        INSERT INTO Transaksi (idPengguna, harga, tanggal)
        VALUES (@idMember, @harga_sekarang, @tanggal)

        UPDATE Pengguna
        SET tipeMember = 'premium'
        WHERE email = @idMember

    END

EXEC InsertTransaksi 'aevans@example.net'


    

