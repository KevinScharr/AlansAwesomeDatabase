--Kevin Scharr
--Lab 5

--1 good
select city
from agents
inner join orders
on orders.aid = agents.aid
AND orders.cid = 'c002';

--2 wrong	
select pid
from orders
left outer join customers
on orders.cid = customers.cid
where customers.city = 'dallas';

--3 good
select cid
from customers
where cid not in(select distinct cid
                 from orders
                );

--4 wrong
select distinct customers.cid
from customers
left outer join orders
on customers.cid not in orders.cid;

--5 good
select distinct customers.name, agents.name
from customers
inner join orders on customers.cid = orders.cid
inner join agents on agents.aid = orders.aid
where agents.city = customers.city;

--6 good
select customers.name, agents.name, customers.city
from customers
inner join agents
on customers.city = agents.city

--7 wrong
select count(city), customers.name, customers.city
from customers
inner join products
Group by city

