SET search_path TO classicmodels, public;

select
    od.productCode,
    sum (od.quantityOrdered) as total_unit_terjual,
    COUNT(DISTINCT od.orderNumber) AS jumlah_pesanan
FROM orderdetails od
GROUP BY od.productCode
HAVING
    SUM(od.quantityOrdered) > (
        SELECT AVG(quantityOrdered)
        FROM orderdetails
    )
    AND COUNT(DISTINCT od.orderNumber) > 10
ORDER BY total_unit_terjual DESC;