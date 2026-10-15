SET search_path TO  "classicmodels", public;

-- SOAL 6
SELECT 
    productCode,
    SUM(quantityordered) AS "Total Unit Dipesan",
    SUM(quantityordered * priceeach) AS "Pendapatan Kotor",
    ROUND(AVG(priceEach), 2) AS "Rata-rata Harga Satuan",
    (MAX(priceeach) - MIN(priceeach)) AS "Volatilitas Harga"
FROM orderdetails
WHERE quantityordered > 20
GROUP BY productcode
HAVING SUM(quantityordered * priceeach) > 50000
ORDER BY "Pendapatan Kotor" DESC;