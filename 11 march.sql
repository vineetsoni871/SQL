-- views
-- cte
-- views:
/* virtul table
user => queries interact kr paye
-- Don't store data on disk
-- reference to your original table
-- using query
table(test) <= select * from table join test where condition
select * from test
-- Views complex query simple
-- enhance the security => row & column
*/
use regex1;
show tables;
-- ctas(create table as select)
create table payment as select * from sakila.payment;
select * from payment;

create view pay_view
as select payment_id,customer_id from payment;
select * from pay_view;



create table payment1 as select payment_id ,customer_id from sakila.payment where payment_id<5;
create view pay_view1
as select * from payment1;
select * from pay_view1;
insert into pay_view1 values(5,10);
select * from pay_view1;
-- Here data will also inserted into original data.

create table payment2 as select payment_id from payment1;

select * from payment2;
insert into pay_view1 values(6);
-- the value will nt insert data until the other column which we cant access if the other column 
-- 					has default values it will store the values.

select * from sakila.actor;
select * from sakila.film_actor;

select * from sakila.film_actor;

create view actor1 as select a.actor_id,a.first_name,a.last_name,a.last_update,f.film_id 
from sakila.actor as a join sakila.film_actor as f where a.actor_id = f.actor_id;

select a.actor_id,a.first_name,a.last_name,a.last_update,f.film_id 
from sakila.actor as a join sakila.film_actor as f where a.actor_id=f.actor_id;
select * from actor;

CREATE TABLE t1 (a INT);
CREATE VIEW v1 AS SELECT * FROM t1 WHERE a < 2
WITH CHECK OPTION;
CREATE VIEW v2 AS SELECT * FROM v1 WHERE a > 0
WITH LOCAL CHECK OPTION;
CREATE VIEW v3 AS SELECT * FROM v1 WHERE a > 0
WITH CASCADED CHECK OPTION;

INSERT INTO v2 VALUES (1);

INSERT INTO v3 VALUES (1);