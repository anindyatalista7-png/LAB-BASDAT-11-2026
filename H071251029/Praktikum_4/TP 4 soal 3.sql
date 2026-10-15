SET search_path TO  "classicmodels", public;

-- SOAL 3
SELECT
    productLine,
    COUNT(productCode) AS jumlah_produk,
    ROUND(AVG(MSRP), 2) AS rata_rata_harga,
    STRING_AGG(productName, ', ') AS daftar_produk
FROM products
GROUP BY productLine
HAVING COUNT(productCode) > 10;