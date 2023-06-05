ALTER PROCEDURE insertMember
    @email VARCHAR(255),
    @password VARCHAR(255),
    @nama VARCHAR(255),
    @alamat VARCHAR(255),
    @noTelp VARCHAR(255),
    @tipeMember VARCHAR(7)
AS
    
    INSERT INTO Pengguna (email, password, nama, alamat, tipeMember, noTelp)
    VALUES (@email, @password, @nama, @alamat, @tipeMember, @noTelp)

EXEC insertMember 'bob@yahoo.com', '12345678', 'Bob', 'Jl mawar no 51', '082537281636', 'free'