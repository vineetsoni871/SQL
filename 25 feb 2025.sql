use sakila;

-- self join: When a table is matched with it's own table. eg.- employee's table

use test1;
create table staff(eid int, ename varchar(20), manager_id int);

insert into staff values(10,'tushar',null),(11,'aman',13),
(12,'sakshi',10),(13,'shubham',11),(14,'ujjwal',12);

select * from staff;

select emp.eid, emp.ename, emp.manager_id, mng.ename
from staff as emp join staff as mng
where emp.manager_id=mng.eid;

-- Set operators in SQL:

use sakila;
select * from actor where actor_id=2
union
select * from actor where actor_id in (3,5);

-- Union: Horizontally append the data 

select * from actor where actor_id=2
union all
select * from actor where actor_id in (3,5);

-- except
select * from actor where actor_id in (2,3)
except
select * from actor where actor_id in (3,5);

select * from actor;
select * from film_actor;

desc actor;  -- Describe
-- Kis actor id ne kitni movies kari

select actor_id,first_name from actor
join actor.actor_id ;

select ac.actor_id, ac.first_name, count(f.film_id) as movies
from actor as ac join film_actor as f
where ac.actor_id = f.actor_id
group by ac.actor_id order by movies desc;

-- Learning assignment:
-- Data types in SQL
-- 
