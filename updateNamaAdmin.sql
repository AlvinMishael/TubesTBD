ALTER PROCEDURE updateNamaAdmin
    @idAdmin VARCHAR(255),
    @nama VARCHAR(255)
AS
    UPDATE [Admin]
    SET nama = @nama
    WHERE email = @idAdmin

EXEC updateNamaAdmin 'aaa@yahoo.com', 'Gwen'