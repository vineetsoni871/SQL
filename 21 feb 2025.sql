use sakila;
-- joins
-- sql=> 1 or more than 1 able join
-- consisency
-- null na aaye

use sakila;
select * from address;
-- null pe koi operation nhi hota

create database test2;
use test2;

create table product(pid int,name varchar(20), price int);
insert into product values(10,'tv',100),(20,'apple',200),
(30,'mobile',300),(40,'shoe',1500);

select * from product;

create table orders(oid varchar(20), city varchar(20),
product_id int);
insert into orders values('A1012','Jaipur',10),
('B21012','Goa',20), ('C3012','Japan',30),('D4012','uK',60);
select * from orders;

select pid,name,price,city
from product join orders;

-- Cross join is where we haven't defined any condition in it and the rows will match with all the rows
-- cross join = cartesian join and the formila is 'm*n'

select p.pid,p.name,p.price,o.city
from product as p inner join orders as o
on p.pid=o.product_id;

-- inner join=join
-- where=on

-- left join -> the left table will always include
select p.pid, p.name, p.price, o.city from product as p left join orders as o on p.pid=o.product_id;

-- right join -> the right table will always include
select p.pid, p.name, p.price, o.city from product as p right join orders as o on p.pid=o.product_id;

-- non-equi join -> if we don't use join and in place of join we type ',' and 
	-- with where we can use any operator then it is non-equi join
select pid,city from product,orders where pid=product_id;

select * from orders;
insert into orders values('E2132','JK',10),('F213','MH',30);

select p.pid, p.name, p.price, o.oid, o.city from product as p inner join orders as o on p.pid=o.product_id;
select p.pid, p.name, p.price, o.oid, o.city from product as p left join orders as o on p.pid=o.product_id;
select p.pid, p.name, p.price, o.oid, o.city from product as p right join orders as o on p.pid=o.product_id;

-- Natural Join => 
select p.pid, p.name, p.price, o.oid, o.city from product as p natural join orders as o;

 -- natural join ->  we will not use this join anywhere -> bakwas join
-- in natural join if column name not match this behave like cross join
-- in natural join if we have common column and same value then it behaves like inner join
-- if column match with column name but values doesn"t match then it will not give any output

select p.pid, p.name, p.price, o.oid, o.city from product as p natural join orders as o;