ALTER PROCEDURE insertAdmin 
    @email VARCHAR(255),
    @password VARCHAR(255),
    @nama VARCHAR(255)
AS
    INSERT INTO Admin (email, password, nama)
    VALUES (@email, @password, @nama)

EXEC insertAdmin 'aaa@yahoo.com', '12345678', 'Alice'