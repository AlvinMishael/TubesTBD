ALTER PROCEDURE updatePasswordAdmin
    @idAdmin VARCHAR(255),
    @password VARCHAR(255)
AS
    UPDATE Admin
    SET [password] = @password
    WHERE email = @idAdmin

EXEC updatePasswordAdmin 'aaa@yahoo.com', '87654321'