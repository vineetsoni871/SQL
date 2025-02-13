show databases;

use sakila;

show tables;

describe actor;

select * from actor;

select actor_id, first_name, ACTOR_ID FROM ACTOR;

select actor_id, first_name, ACTOR_ID*100 FROM ACTOR;

select * from actor;

-- select * from table;  => saare column selection
-- where clause

select * from actor
	where actor_id<>2;
    
-- > , < , >= , <= , = , != or <>

-- operator => between , in and like operator
select * from actor
	where actor_id between 1 and 5;
select * from actor;
	where actor_id in (2,5,500);
    
select * from actor
	where first_name in ('nick', 'ed');
    
-- like operator => finds pattern
-- wildcard character => % => zero or more charater
-- _ => only one character

select * from actor
	where first_name='ED';
    
select * from actor
	where first_name like 'E%';

select * from actor
	where first_name like '%E';

select * from actor
	where first_name like 'S%Y';
    
select * from actor
	where first_name like '%A%';
    
select * from actor
	where first_name like '%SA%';
    
-- name E% 
-- E_

select * from actor
	where first_name like '_A%';
    
-- Q. Get those name wose first name has only first 4 characters
-- Get all the information from actor table whose first name is 'i'
-- get those data where you have 'e' in middle
-- gt those user ehich have atleast 4 letters and last 3rd letter should be 'r'
-- get those details where 'ee' is present in name
-- where second letter is 'h' and second last letter 'z'

select * from actor
	where first_name like '____';
    
select * from actor
	where first_name like 'I%';

select * from actor
	where first_name like '_%E%_';    

select * from actor
	where first_name like '_R__';
    
select * from actor
	where first_name like '_%EE%_';
    
select * from actor
	where first_name like '%A';
    
select * from actor
	where first_name like '_H%Z_';