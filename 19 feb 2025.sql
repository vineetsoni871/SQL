use sakila;

select amount,sum(amount) from payment
where amount!=0.99
group by amount having sum(amount)>8000;
-- First we filter the data then execute it

-- Order by: arrange column in ascending or descending 
-- It can be used on one or more columns
select * from payment
order by amount desc,rental_id desc;

-- Alias: Gives nickname to column represented by 'as'
select amount,amount*10 as `select` 
from payment;

-- subquery
-- case statement
-- condition? True:False

select amount, if(amount=0.99,'Correct','Incorrect')	-- if and else statement
from payment;

select amount, if(amount=0.99,'Correct',
	if(amount=2.99,'Yes','Incorrect'))	-- else if and else statement
from payment;

-- Case syantax:
-- select col,
-- 	case
-- 	  when condition then statement
--       when condition then statement
-- 	end

select * from payment;
select amount,
case
	when amount=0.99 then 'value is 0.99'
    when amount=2.99 then 'yes'
    else amount
end as cond
from payment;

-- Q. Take payment table if count of payments done for each 
-- amount > 10000 then print 'amount>10000' else 'amount<10000'
-- sol=>
select amount,count(amount),
case
	when count(amount)>1000 then 'amount>1000'
    else 'amount<1000'
end as count
from payment
group by amount;
-- Q. if amount > 1$ >3$ amount>7$ else amount<1$
-- sol=>
select amount,
case
	when amount>1 then 'amount>1$'
    when amount>3 then 'amount>3$'
    when amount>7 then 'amount>7$'
    else 'amount<1$'
end as count
from payment;

-- Basic terminology on subquery:
-- subquery => Query within a query is a subquery

select * from payment;

select * from payment where
amount =(select amount 
		from payment where payment_id=3);
        
-- What are keys and its uses
-- Type of relationship
-- primary key , candidate key , super key , and foreign key