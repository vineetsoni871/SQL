-- TCL
-- Transaction controlled language: Set of logical statement

-- DDL , DML , DCL ---> Transaction
-- Start ya stop

-- Start => DML task
-- DDL , DCL => Transactions are stopped
-- TCL: commit , savepoint , rollback

select @@autocommit;	-- by defult value of autocommit is 1.
set autocommit=0;

use regex1;
create table yash(id int, fname varchar(20));
insert into yash values(10,"Shubham");
select * from yash;
commit;	-- save the data peranently

insert into yash values(11,"Aman");
rollback;	-- discard the running transaction temporarily and stop it.
select * from yash;

insert into yash values(12,"Shubham");
update yash set fname="Regex";
select * from yash;

insert into yash values(12,"Shubham");
update yash set fname="Regex";
create table dd(id int);
-- It will run DDl and DCL command then transaction will automatically commit and saved permanently
-- With this we don't need to use commit or rollback in this case.
select * from yash;

insert into yash values(13,"Isha");
select * from yash;
update yash set fname="Vineet";
select * from yash;

savepoint yash_raj_sv;
insert into yash values(14,"pp");
select * from yash;
rollback to yash_raj_sv;
-- If we have given specific savepoint name in the rollback then transaction will be rollbacked 
-- after the savepoint the transaction done in it.

-- Learning Assignmet
-- What are windows function?
-- Rank , dense rank , row number?
-- What are acid properties in database and why we use it
-- Normalization?