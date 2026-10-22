SET search_path TO classicmodels, public;

-- soal 1
select 
	c.contactfirstname as "nama depan kontak pelanggan",
	c.customername as "nama lengkap pelanggan",
	of.city as "kota tempat kantor cabang",
	e.firstname || ' ' || e.lastname as "nama lengkap sales"
	
from customers as c
join employees as e
	on c.salesrepemployeenumber = e.employeenumber
join offices as of 
	on of.officecode = e.officecode
where c.contactfirstname ilike 'A%'
	and of.city not like 'NYC'
order by c.customername;