SET search_path TO  "classicmodels", public;

-- SOAL NO 3
SELECT productcode,
	productname,
	buyprice,
	msrp,
	GREATEST (buyprice, msrp) AS "Harga Tertinggi",
	LEAST (buyprice, msrp) AS "Harga Terendah"
FROM products
WHERE productname ILIKE '%car%';