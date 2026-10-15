SET search_path TO  "classicmodels", public;

-- SOAL 5
SELECT
    productCode,
    SUM(quantityOrdered) AS total_unit_terjual,
    ROUND(AVG(priceEach), 2) AS rata_rata_harga
FROM orderdetails
WHERE priceEach > 100
GROUP BY productCode
HAVING SUM(quantityOrdered) > 50
ORDER BY total_unit_terjual DESC;