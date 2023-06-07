ALTER PROCEDURE DeletePengguna
	@email varchar(255)
AS
	UPDATE [pengguna]
	SET flag = 'inactive'
	WHERE email = @email

EXEC DeletePengguna 'aevans@example.net'