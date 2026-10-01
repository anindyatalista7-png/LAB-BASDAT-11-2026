-- SOAL 4
SELECT
    productCode,
    productName,
    buyPrice
FROM products
WHERE buyPrice > 50
ORDER BY buyPrice DESC
LIMIT 7;