-- IN statements
SELECT a from b where id in (1);
SELECT a from b where id in (2);
SELECT a from b where id in (1,2,3);

-- Table aliases
SELECT name from customers where customer_id = 1;
SELECT c.name from customers as c where c.customer_id = 1;
SELECT d.name from customers as d where d.customer_id = 1;

-- Table qualification
SELECT name from customers where customer_id = 1;
SELECT name from public.customers where customer_id = 1;
SELECT name from testing.public.customers where customer_id = 1;

-- Column aliases
select name from customers where customer_id = 1;
select name as other_name from customers where customer_id = 1;

-- Column order
select name, city from customers where customer_id = 1;
select city, name from customers where customer_id = 1;

-- CTE Order
with c as (select name from customers where customer_id = 1),
     d as (select name from customers where customer_id = 2)
select c.name, d.name from c join d on 1=1;
with d as (select name from customers where customer_id = 2),
     c as (select name from customers where customer_id = 1)
select c.name, d.name from c join d on 1=1;
