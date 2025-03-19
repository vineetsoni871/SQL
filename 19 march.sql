-- Index => sequencial searching ---> reference of your data
-- help in query optimization (fast)

-- primary key , unique key create new column these key will be identifier makes all 
-- 		unique elements and make it a primary key

-- identifier
-- select * from where col=value

-- clustered index comes by default in mysql

use regex1;

create table users(id int , fname varchar(20));
insert into users values(10,"tushar"),(11,"prakul"),
						(12,"Anmol"),(13,"Guru"),(14,"Shubham"),(15,"om");
explain select * from users where id=11;                        
                        
drop table users;    
create table users(id int primary key , fname varchar(20));                    
insert into users values(10,"tushar"),(11,"prakul"),
						(12,"Anmol"),(13,"Guru"),(14,"Shubham"),(15,"om"),(16,"tushar");
explain select * from users where id=11;                        
show indexes from users;

create index user_f on users(fname);
explain select * from users where fname='tushar';

drop index `PRIMARY` on USERS;
show indexes from users;

-- Difference b/w clustered index and non clustered index?

-- Q. create table id name lastname insert 4 record 
-- 		filter fname and last name 
-- 		create index for 2 column 
-- 		again expalin query 
-- 		run query again but invert names

create table myuser(id int primary key,fname varchar(20),lname varchar(20));
insert into myuser values(10,"tushar","goyal"),(11,"prakul","jain"),
						(12,"Anmol","hemani"),(13,"Guru","singh");
explain select * from myuser where id=11;
 show indexes from myuser;
 create index user_l on users(fname,lname);
 
 