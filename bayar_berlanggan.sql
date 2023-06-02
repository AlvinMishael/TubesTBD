ALTER PROCEDURE bayar_berlangganan
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

        DECLARE cursor_harga_sekarang CURSOR
        FOR
            SELECT
                harga
            FROM
                LogHarga
            ORDER BY
                tanggalBerlaku DESC
    
        OPEN cursor_harga_sekarang

        FETCH NEXT FROM cursor_harga_sekarang INTO @harga_sekarang

        CLOSE cursor_harga_sekarang
        DEALLOCATE cursor_harga_sekarang

        INSERT INTO Transaksi (idPengguna, harga, tanggal)
        VALUES (@idMember, @harga_sekarang, @tanggal)

        UPDATE Pengguna
        SET tipeMember = 'premium'
        WHERE email = @idMember

    END

EXEC bayar_berlangganan 'aevans@example.net'


    

