-- Windows function: Window function is a special type of function by which we perform calculation
-- 					On specific type of record.

-- Over function: We use over function and we define window with it and perform calculation
-- 					and apply window function or aggregate function

use sakila;
select * from employees;
drop table employees;
create table employees(id int primary key auto_increment,
dept varchar(20), salary int);
insert into employees(dept, salary) values("hr",200),
("hr",300),("hr",100),
("marketing",70),("marketing",50),
("marketing",200),("marketing",400),("marketing",200),
("marketing",600),
("dsa",150),("dsa",120),("dsa",40),("dsa",90),("dsa",500);

select *, sum(salary) over(),
max(salary) over(), avg(salary) over()
from employees;

-- windows partition by
select *,
sum(salary) over(),
sum(salary) over(partition by dept)
from employees order by id;

select *, sum(salary) over(order by salary desc)
from employees;

select *, sum(salary) over(partition by dept order by salary)
from employees;
-- -------------------------------
-- Q. avg salary of each department, running avg of each dept.

select *,avg(salary) over(partition by dept) as avg_salary_of_each_dept ,
avg(salary) over(partition by dept order by salary) as running_avg_of_each_dept 
from employees;

-- --------------------------
select *,
row_number() over(partition by dept order by salary) from employees;

select *,
rank() over(order by salary)
from employees;

-- The rank function in SQL assigns the rank based on the defined attributes to each 
-- row within the given partition.

select *,
rank() over(order by salary),
dense_rank() over(order by salary)
from employees;

-- In SQL, the RANK() function skips ranks when there are ties, while the DENSE_RANK() 
--   		function does not. Both functions are used to rank and identify patterns in data. 

-- Learning Assignment:
-- lag, lead, ntile

select *,lag(salary,1) over(partition by dept order by salary) from employees;
select *, lead(salary,2) over(partition by dept order by salary) from employees;
select *, ntile(5) over(partition by dept order by salary) from employees;