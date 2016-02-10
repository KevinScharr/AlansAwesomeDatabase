--Kevin Scharr

--Shows the order number and totalUSD from the orders table
select ordnum, totalUSD
from orders;

--Shows all agents named smith and their city
Select name, city
from agents
where agents.name = 'Smith';

--shows all products with quantity greater than 208000
select pid, name, priceUSD
from products
where products.quantity > 208000;

--Shows customers names from Dallas
select name, city
from customers
where customers.city = 'Dallas';

--Shows agents names who are not in New York or Tokyo
select name
from agents
where agents.city != 'New York'
And City != 'Tokyo';

--Shows products in Dallas and Duluth with a price greater than or equal to 1
select *
from Products
where Products.city != 'Dallas'
And City != 'Duluth'
And priceUSD >= 1;

--Shows all orders from January and March
select *
from Orders
where Orders.mon = 'jan'
Or mon = 'mar';

--orders from feb less than 500
select *
from Orders
where Orders.mon = 'feb'
And totalUSD < 500;

--Shows all orders with the cid of C005
select *
from Orders
where Orders.cid = 'C005';
