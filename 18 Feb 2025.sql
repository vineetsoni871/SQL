use sakila;
-- multi row functions
-- Aggregate functions

select sum(amount) from payment;  -- out.: 67406.56
select count(amount) from payment;

select avg(amount), sum(amount)/count(amount)
from payment;

select amount from payment;  -- all values
select distinct(amount),payment_id from payment;  -- unique values

select count(distinct(amount)), count(amount)
from payment;

select count(amount) from payment 
where amount=2.99;
-- If the value is not present the count will skip those columns and doesn't calculate them
-- primary key is a unique value and can't be empty

-- Group by: Its a clause Collect the similar values together.
-- You cannot use another column in 'group by' rather than what you've selected

select amount, count(amount) 
from payment group by amount;

select amount, count(payment_id), sum(amount), avg(amount) 
from payment group by amount;

select month(payment_date), sum(amount)
from payment
group by month(payment_date);

-- get total amount and avg amount spent by each customer
select * from payment;
select customer_id,sum(amount),avg(amount) from payment
group by customer_id;

-- Get the total amount and th max and min amount for each staff_id
select staff_id, max(amount), min(amount) from payment
group by staff_id;
-- Get the total no. of payments done by each staff
select staff_id, count(amount) from payment
group by staff_id;
-- Get the total amount, total no. of entries , the avg amount and max amount by each customer where amount value should be greater than two dollars and payment_id is greater than 10
select customer_id,sum(amount),count(customer_id), 
avg(amount), max(amount),min(amount) from payment 
where amount>2 and payment_id>10 group by customer_id;

-- If we use aggregate functions then we are not able to use where clause in it 
-- We apply where clause in which the column is physically present in the table
-- we use having clause with aggregate function but we dont use where clause with aggregate function  

select amount,sum(amount) from payment
	where amount>5 group by amount
		having sum(amount)>5000;