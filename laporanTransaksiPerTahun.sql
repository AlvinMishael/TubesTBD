CREATE PROCEDURE laporanTransaksiPerTahun
AS
    SELECT
        DATEPART(YEAR, tanggal) AS 'tahun',
        COUNT(idTransaksi) AS 'banyak transaksi'
    FROM
        transaksi
    GROUP BY
        DATEPART (YEAR, tanggal)

EXEC laporanTransaksiPerTahun