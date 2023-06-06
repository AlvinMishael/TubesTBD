ALTER PROCEDURE updateAlamatMember
    @inputAlamat VARCHAR(255),
    @email VARCHAR(255)
AS
    UPDATE Pengguna
    SET alamat = @inputAlamat
    WHERE email = @email


EXEC updateAlamatMember 'Jl. Mawar no.2', 'aevans@example.net'