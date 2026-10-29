SET search_path TO classicmodels, public;

SELECT
	EXTRACT(MONTH FROM orderDate) AS bulan,
	COUNT(*) AS jumlah_pesanan
FROM orders
WHERE orderDate IN (
	SELECT orderDate
	FROM orders
	WHERE EXTRACT(YEAR FROM orderDate) = 2004
)
GROUP BY EXTRACT(MONTH FROM orderDate)
HAVING COUNT(*) > 5
ORDER BY bulan ASC; 