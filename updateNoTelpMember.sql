ALTER PROCEDURE updateNoTelpMember
    @inputNoTelp VARCHAR(255),
    @email VARCHAR(255)
AS
    UPDATE Pengguna
    SET noTelp = @inputNoTelp
    WHERE email = @email

EXEC updateNoTelpMember  '082536828', 'aevans@example.net'