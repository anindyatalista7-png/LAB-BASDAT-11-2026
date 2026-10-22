SET search_path TO classicmodels, public;

-- soal 3
select 
	c.customername,
	count(distinct o.ordernumber) as total_order,
	round(avg(od.quantityordered),2) as avg_quantity_per_order
from customers as c
join orders as o
	on c.customernumber = o.customernumber
join orderdetails as od
	on o.ordernumber = od.ordernumber
group by c.customername
having count(distinct o.ordernumber) > 3
and round(avg(od.quantityordered),2) > 35
order by total_order desc, avg_quantity_per_order desc;