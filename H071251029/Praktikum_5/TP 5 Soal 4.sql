SET search_path TO classicmodels, public;

-- soal 4
select
	p.productline,
	sum(od.quantityordered) as total_terjual,
	round(avg(od.priceeach),2) as rata_rata_harga,
	round(avg((p.msrp-od.priceeach)/p.msrp*100),2) as avg_discount_persentage
from orderdetails as od
join products as p
	on od.productcode = p.productcode
group by p.productline
having sum(od.quantityordered) > 3000
and round(avg(od.priceeach),2) > 80
order by total_terjual desc;