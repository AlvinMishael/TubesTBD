ALTER PROCEDURE updateNamaMember
    @inputNama VARCHAR(255),
    @email VARCHAR(255)
AS
    UPDATE Pengguna
    SET nama = @inputNama
    WHERE email = @email

EXEC updateNamaMember 'Aevans', 'aevans@example.net'