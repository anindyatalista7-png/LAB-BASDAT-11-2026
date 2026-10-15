SET search_path TO  "classicmodels", public;

SELECT customerNumber,
	SUM(amount) AS total_pembayaran
FROM payments
GROUP BY customerNumber
ORDER BY total_pembayaran DESC;