SET search_path TO  "classicmodels", public;

-- SOAL 2
SELECT
    customerNumber,
    SUM(amount) AS total_pembayaran
FROM payments
GROUP BY customerNumber
HAVING SUM(amount) > 80000
ORDER BY total_pembayaran DESC;