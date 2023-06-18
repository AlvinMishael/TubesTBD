CREATE PROCEDURE laporanTransaksiPerBulan1Tahun
    @tahun INT
AS
    SELECT
        DATEPART(MONTH, tanggal) AS 'bulan',
        COUNT(idTransaksi) AS 'banyak transaksi'
    FROM
        transaksi
    WHERE
        YEAR(tanggal) = @tahun
    GROUP BY
        DATEPART (MONTH, tanggal)
    
    

EXEC laporanTransaksiPerBulan1Tahun 2015