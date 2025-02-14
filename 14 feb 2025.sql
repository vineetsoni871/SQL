use sakila;

-- in operator
-- between
-- SQL =>
-- DDL , DML , DCL , TCL , DQL

-- DQL => selectuse sakila;
select * from actor;

-- and & or

SELECT * FROM actor
WHERE actor_id > 2 AND first_name = 'JOHNNY'

-- select * from actor where
-- (first_name='NICK' or first_name='ED')
-- and actor_id>2;

-- functions: Block of code -> code reusable

-- Pre-defined functions
-- 1) String function:
SELECT first_name, lower(first_name) from actor;

select first_name, last_name,
concat(first_name, '-', last_name, 'xyz'),
concat_ws('-', first_name, last_name, 'xyz')
from actor;

select * from actor
where concat(first_name,last_name) ='EDCHASE'

-- subdtr => like slicing operator in python

select first_name, 
substr(first_name,1) from actor

-- instr => to find position of any character 

select first_name,
instr(first_name,'E')
char_length(first_name)
from actor;

-- length
-- dual table
select 'hey','hello' from dual;
select 8752
from dual;

select amount from payment;

select first_name, 
lpad(first_name,5,'$') from actor;

select '     hey  ',
trim('     hey  ') from dual;

select '     hey  ',
trim(leading 'z' from 'zzzhezzz'),
trim(trailing 'z' from 'zzzhezzz') from dual;

select first_name, replace(first_name,'E','X');
;