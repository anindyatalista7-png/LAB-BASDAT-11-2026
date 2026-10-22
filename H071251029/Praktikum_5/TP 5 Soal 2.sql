SET search_path TO classicmodels, public;

-- soal 2
select
	c.customername,
	sum(p.amount) as total_payment,
	max(p.amount) as max_single_payment
from customers as c
join payments as p
	on c.customernumber = p.customernumber
group by c.customernumber
having sum(p.amount) > 50000
order by total_payment desc;