SET search_path TO  "classicmodels", public;

-- SOAL 1
SELECT
    customerNumber,
    SUM(amount) AS total_pembayaran,
    COUNT(DISTINCT checkNumber) AS jumlah_transaksi,
    MAX(amount) AS pembayaran_terbesar
FROM payments
GROUP BY customerNumber
HAVING COUNT(DISTINCT checkNumber) > 4
   AND AVG(amount) > 20000;