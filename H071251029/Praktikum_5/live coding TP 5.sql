SET search_path TO classicmodels, public;

select 
	c.customername,
	c.creditlimit,
	o.city,
	(c.creditlimit - 500) AS credit_limit_bersih
from customers c
join employees e
	on c.salesrepemployeenumber = e.employeenumber
join offices o
	on e.officecode = o.officecode
where c.creditlimit > 50000
	and o.city in ('San Francisco', 'Paris'); 