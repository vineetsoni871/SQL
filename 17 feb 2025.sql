-- numerical functions & date functions
use sakila;
select first_name, substr(first_name,2)
from actor;

-- numeric functions:
-- Round , truncade , mod , pow
select round(12.48), round(12.41,2) from dual;
-- converting ones place to roundoff value:
select round(841.41,-1) from dual;  -- output=840
-- tens place
select round(841.41,-2) from dual; -- output=800
-- hundreds place
select round(841.41,-3) from dual;  -- output=1000

-- truncate is used to remove the value of given position
-- mod and power function usage:
select truncate(279.48,1), mod(21,2),
21%2, pow(2,3) from dual;

-- date functions
select curdate(),curtime(), now(), current_timestamp() 
from dual;
-- work of now() and current_timestamp() is same.
-- curdate() shows the cirrent date in our system.
-- curtime() shows the current time in our system.

select adddate(curdate(),1) from dual;
-- added one day in current date!

select adddate(curdate(),interval 1 month) from dual;
-- added a month in current date!

select datediff(curdate(),
	adddate(curdate(), interval -1 week)) 
    from dual;
    
select month(now()),last_day(now()) from dual;

select date_format(now(),
	'current month is %M') from dual;  
-- out.=current month is february

-- YYYY-MM-DD
select curdate(),
str_to_date('17 2025 02','%d %Y %m') from dual;