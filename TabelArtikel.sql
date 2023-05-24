DROP TABLE Artikel

CREATE TABLE Artikel(
	idArtikel Int NOT NULL PRIMARY KEY,
	[Status] varchar(10) NOT NULL,
	namaArtikel varchar(255) NOT NULL,
	namaPenulis varchar(255) NOT NULL,
	isi TEXT NOT NULL,
	tanggal datetime NOT NULL,
	email varchar(255) NOT NULL 
)