--Kevin Scharr
--1 cities of agents booking an order for customer cid is 'c002'
select city
from agents
where aid in (select aid
		from orders
		where cid = 'c002');

--2 id of products, agent who deals in dallas, sorted pid highest to lowest
select pid
from orders
where aid in (select aid
		from orders
		where cid  in (select cid
				from customers
				where customers.city = 'Dallas'
				order by cid ASC));


--3 id name of customers, did not use agent a01
select cid, name
from customers
where cid not in (select cid
		from orders
		where aid = 'a01');

--4 ids of customers, ordered products 1 and 7
select cid
from orders
where orders.pid = 'p01'
Intersect 
select cid
from orders
where orders.pid = 'p07';

--5 ids of products, not ordered by customers who placed an order thru a07
select pid
from orders
where cid not in (select cid
		from orders
		where aid = 'a07');

--6 name discount and city, all customers, placed orders through agents in london or new york
Select name, discount, city
from customers
where cid in (Select cid
		from orders
		where aid in (select aid
				from agents
				where agents.city = 'London'
				Or city = 'New York'));

--7 all customers, same discount as a customer in Dallas or London
select discount
from customers
where discount in (select discount
		from customers);

--A check constraint allows you specify what you are looking about by only
-- adding data that satisfies a certain constraint. It helps to eliminate frivilous data
-- by rejecting data that might be invalid. Adding a constraint that disallows a cost of a produst to be
-- negative is a good constraint, because a product can't be negative. However using a constraint that rejects
-- products that are worth less than 10 dollars per unit is a bad use of a check constraint, because it rejects information
--that might be needed.

