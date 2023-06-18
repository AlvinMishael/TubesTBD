CREATE PROCEDURE lihatArtikelYangDitulis
    @idMember VARCHAR(255)
AS
    SELECT
        namaArtikel,
        isi,
        [status],
        tipe,
        tanggal
    FROM
        artikel
    WHERE
        idPenulis = @idMember

EXEC lihatArtikelYangDitulis 'alexander44@example.net'