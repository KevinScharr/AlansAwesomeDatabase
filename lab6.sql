--Kevin Scharr
--Lab 6
--1 good
select name, city
from customers
where city in (select city
	       From (select city, COUNT(*) AS CityCount
	       From products
	       group by city
	       order by CityCount DESC
	       LIMIT 1) SubCityCount
);

--2 good
SELECT name
from products
WHERE priceusd > (SELECT AVG(priceusd) 
		  FROM products)

--3 good
select customers.name, orders.pid, orders.totalusd
from orders
inner join customers
on customers.cid = orders.cid
order by orders.totalusd desc 

--4 good? (didn't use coalesce)
select sum(totalusd) as custcount, customers.name
from orders
right outer join customers
on customers.cid = orders.cid
group by customers.city, customers.name
order by customers.name asc

--5 good
select orders.cid, products.name, agents.name
from orders
inner join products
on orders.pid = products.pid
inner join agents
on orders.aid = agents.aid
where agents.aid in (select agents.aid
		     from agents
	             where agents.city = 'Tokyo')

--6 shows the wrong and right values, butn all values
select orders.totalusd, (orders.qty*products.priceusd)-((orders.qty*products.priceusd)*(customers.discount/100)) as CheckMath
from orders
inner join products
on products.pid = orders.pid
inner join customers
on customers.cid = orders.cid
--displays the number and order number that is wrong, but not the correct number
select orders.totalusd, orders.ordnum
from orders
where orders.totalusd not in (select (orders.qty*products.priceusd)-((orders.qty*products.priceusd)*(customers.discount/100))
			      from orders
			      inner join products
			      on products.pid = orders.pid
			      inner join customers
			      on customers.cid = orders.cid)

--7
--What’s the difference between a LEFT OUTER JOIN and a RIGHT OUTER JOIN? Give	
--example queries in SQL to demonstrate. (Feel free to use the CAP2 database to make your points here.)
--A left and right outer join allow you to select certain things from ine of two joined tables that don't meet the criteria
--of the selected joined area. So if you were selecting customers joined with orders, selecting customer name and order number
select customers.name, orders.ordnum
from customers
left outer join orders
on customers.cid = orders.cid
--a left outer join would let you see Weyland, even though Weyland never placed an order. A right outer join allows you to
--see additional information of the same kind for the table being joined. If you were selecting order number and the agent name
select orders.ordnum, agents.name
from orders
right outer join agents
on orders.aid = agents.aid
--a right outer join would let you see Bond, despite Bond not assisting an order.

