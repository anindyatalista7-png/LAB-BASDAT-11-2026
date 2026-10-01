-- SOAL TAMBAHAN
SET search_path TO classicmodels, public;

SELECT orderNumber, orderDate, customerNumber
FROM orders
WHERE status = 'Cancelled'
ORDER BY orderNumber DESC;