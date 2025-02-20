use sakila;

-- Subquery

select * from actor
where first_name=(select first_name from actor
				where actor_id=1);
                
select * from payment
where amount=(select amount from payment
where rental_id=1185);

-- Q. get those payments where the month matches where the month of payment id 3
select * from payment
where month(payment_date)=(select month(payment_date) 
from payment where payment_id=3);

-- Q. get those amount where the total no. of payments for the amount should be greater thean total payment of amount 0.99
select amount,count(amount) from payment group by amount 
	having count(amount)>(select count(amount) from payment
		where amount=0.99);

-- Q. get each customer_id and total amount spend where total amount>total amount spend by customer id 9
select customer_id,sum(amount) from payment
group by customer_id having sum(amount)>(select sum(amount) from payment
where customer_id=9);

-- multi-row subquery:
-- If we have a query which gives more than one row then we cannot use =,<,>,etc.
-- Operator used in multi-row subquery: in/=any ,>any
-- >any: this gives the values just greater than the amallest value of subquery
-- <any: this gives the values just smaller than the largest value of subquery
-- >all: greater than max value of subquery.
-- <all: Smaller than min value of subquery.

select * from payment 
where amount in(select amount from payment where
payment_id in (1,3));

select * from payment 
where amount =any(select amount from payment where
payment_id in (1,3));

select * from payment 
where amount >any(select amount from payment where
payment_id in (1,3));

select * from payment 
where amount <any(select amount from payment where
payment_id in (1,3));

-- What is co-related subquery
-- what is database?
-- What is database management system?
-- Type of dbms with example.
-- DBMS vs RDBMS.
-- Diff b/w where and having clause
-- SQL and type of SQL languages
-- KEYS and types with example
