ALTER PROCEDURE updatePasswordMember
    @inputPassword VARCHAR(255),
    @email VARCHAR(255)
AS
    UPDATE Pengguna
    SET [password] = @inputPassword
    WHERE email = @email

EXEC updatePasswordMember '12345678', 'aevans@example.net'