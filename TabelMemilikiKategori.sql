DROP TABLE MemilikiKategori

CREATE TABLE MemilikiKategori(
	idArtikel INT NOT NULL FOREIGN KEY REFERENCES Artikel(idArtikel),
	idKategor INT NOT NULL FOREIGN KEY REFERENCES Kategori(idKategori)
)