USE [Tubes]
GO

ALTER PROCEDURE pencarianArtikel
	@perintah int
AS
DECLARE 
	@idCurr int,
	@tanggalCurr datetime,
	@idTemp int,
	@tanggalTemp datetime,
	@statusTemp varchar(15),
	@idHasil int,
	@jarakTemp int,
	@jarakCurr int
DECLARE @tabelLogTemp TABLE(
	idArtikel int,
	[status] varchar(15),
	tanggal datetime
)
INSERT INTO @tabelLogTemp
SELECT
	idArtikel, aktivitas, tanggal
FROM 
	LogArtikel
GROUP BY
	idArtikel, aktivitas, tanggal

--SELECT * FROM @tabelLogTemp ORDER BY idArtikel, tanggal 

DECLARE curs CURSOR
	FOR 
	SELECT 
		idArtikel, tanggal, [status]
	FROM 
		@tabelLogTemp
	ORDER BY
		idArtikel, tanggal ASC

IF @perintah = 1
BEGIN
	OPEN curs
	FETCH NEXT FROM curs
	INTO
		@idTemp, @tanggalTemp, @statusTemp
	WHILE @@FETCH_STATUS =0
	BEGIN
		if @statusTemp = 'publish'
		BEGIN
			SET @idCurr = @idTemp
			SEt @tanggalCurr = @tanggalTemp
		END
		ELSE IF @statusTemp = 'take down' AND @idTemp = @idCurr 
		BEGIN
			SET @jarakTemp = DATEDIFF(day, @tanggalCurr, @tanggalTemp)
			IF @jarakCurr IS NULL
			BEGIN
				SET @jarakCurr = @jarakTemp
				SET @idHasil = @idCurr
				SET @idCurr = 0
			END
			ELSE
				IF @jarakCurr > @jarakTemp
				BEGIN
					SET @jarakCurr = @jarakTemp
					SET @idHasil = @idCurr
					SET @idCurr = 0
				END
		END
		FETCH NEXT FROM curs
		INTO
			@idTemp, @tanggalTemp, @statusTemp
	END
	CLOSE curs
	DEALLOCATE curs
	
	SELECT 
		namaArtikel, @jarakCurr AS 'hari'
	FROM
		artikel
	WHERE 
		idArtikel = @idHasil
END
ELSE IF @perintah = 2
BEGIN
	OPEN curs
	FETCH NEXT FROM curs
	INTO
		@idTemp, @tanggalTemp, @statusTemp
	WHILE @@FETCH_STATUS =0
	BEGIN
		if @statusTemp = 'submit'
		BEGIN
			SET @idCurr = @idTemp
			SEt @tanggalCurr = @tanggalTemp
		END
		ELSE IF (@statusTemp = 'reject' OR @statusTemp = 'publish') AND @idTemp = @idCurr 
		BEGIN
			SET @jarakTemp = DATEDIFF(day, @tanggalCurr, @tanggalTemp)
			IF @jarakCurr IS NULL
			BEGIN
				SET @jarakCurr = @jarakTemp
				SET @idHasil = @idCurr
				SET @idCurr = 0
			END
			ELSE
				IF @jarakCurr > @jarakTemp
				BEGIN
					SET @jarakCurr = @jarakTemp
					SET @idHasil = @idCurr
					SET @idCurr = 0
				END
		END
		FETCH NEXT FROM curs
		INTO
			@idTemp, @tanggalTemp, @statusTemp
	END
	CLOSE curs
	DEALLOCATE curs
	
	SELECT 
		namaArtikel, @jarakCurr AS 'hari'
	FROM
		artikel
	WHERE 
		idArtikel = @idHasil
END
ELSE
BEGIN
	OPEN curs
	FETCH NEXT FROM curs
	INTO
		@idTemp, @tanggalTemp, @statusTemp
	WHILE @@FETCH_STATUS =0
	BEGIN
		if @statusTemp = 'submit'
		BEGIN
			SET @idCurr = @idTemp
			SEt @tanggalCurr = @tanggalTemp
		END
		ELSE IF (@statusTemp = 'reject' OR @statusTemp = 'publish') AND @idTemp = @idCurr 
		BEGIN
			SET @jarakTemp = DATEDIFF(day, @tanggalCurr, @tanggalTemp)
			IF @jarakCurr IS NULL
			BEGIN
				SET @jarakCurr = @jarakTemp
				SET @idHasil = @idCurr
				SET @idCurr = 0
			END
			ELSE
				IF @jarakCurr < @jarakTemp
				BEGIN
					SET @jarakCurr = @jarakTemp
					SET @idHasil = @idCurr
					SET @idCurr = 0
				END
		END
		FETCH NEXT FROM curs
		INTO
			@idTemp, @tanggalTemp, @statusTemp
	END
	CLOSE curs
	DEALLOCATE curs
	
	SELECT 
		namaArtikel, @jarakCurr AS 'hari'
	FROM
		artikel
	WHERE 
		idArtikel = @idHasil
END


--EXEC pencarianArtikel 1 EXEC pencarianArtikel 2 EXEC pencarianArtikel 3