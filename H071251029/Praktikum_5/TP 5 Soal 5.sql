SET search_path = classicmodels, public;

-- soal 5
SELECT
    c.customerName,
    SUM(od.quantityOrdered * od.priceEach) AS total_transaksi,
    COUNT(DISTINCT(o.orderNumber, o.status = 'Shipped')) AS total_shipped_orders,
    ROUND(SUM(od.quantityOrdered * od.priceEach) / COUNT(DISTINCT o.orderNumber),2) AS avg_transaction_per_order
FROM customers c
JOIN orders o
    ON c.customerNumber = o.customerNumber
JOIN orderdetails od
    ON o.orderNumber = od.orderNumber
GROUP BY c.customerNumber, c.customerName
HAVING COUNT(DISTINCT EXTRACT(YEAR FROM o.orderDate)) > 1
ORDER BY total_transaksi DESC
LIMIT 5;