ALTER PROCEDURE DeleteAdmin
	@email varchar(255)
AS
	UPDATE [Admin]
	SET flag = 'inactive'
	WHERE email = @email

EXEC DeleteAdmin 'carterhannah@example.net'