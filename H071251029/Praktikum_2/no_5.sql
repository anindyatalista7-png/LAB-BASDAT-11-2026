-- SOAL 5
SELECT DISTINCT
    country AS "Negara Pelanggan"
FROM customers
ORDER BY country ASC
LIMIT 5
OFFSET 5;