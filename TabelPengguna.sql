DROP TABLE Pengguna

CREATE TABLE Pengguna(
	Email varchar(255) NOT NULL PRIMARY KEY,
	[Password] varchar(255) NOT NULL,
	tipeMember int NOT NULL,
	nama varchar(255) NOT NULL,
	alamat varchar(255) NOT NULL,
	noTelp varchar(255) NOT NULL
)