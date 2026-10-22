SET search_path TO classicmodels, public;

-- soal 6 
select
	c.customername,
	c.city as customer_city,
	of.city as office_city,
	sum(od.quantityordered) as total_unit_terjual,
	round(sum(od.priceeach*od.quantityordered)/count(distinct o.ordernumber),2) as avg_nilai_per_order
from customers as c
join employees as e
	on c.salesrepemployeenumber = e.employeenumber
join offices as of
	on e.officecode = of.officecode
join orders as o
	on c.customernumber = o.customernumber
join orderdetails as od
	on o.ordernumber = od.ordernumber
where of.territory = 'EMEA'
group by c.customernumber,c.customername,c.city,of.city
having 
	count(distinct extract(year from o.orderdate)) > 2
	and sum(od.quantityordered) > 1000
	and sum(od.priceeach*od.quantityordered)/count(distinct o.ordernumber) > 10000
order by avg_nilai_per_order desc;