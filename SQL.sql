
create database tejas
use tejas
----------------table
create table wsp
(roll int ,
name varchar (100),
gender char (10),
number bigint
)
-------------------select
select * from wsp
select name from wsp
-------------------------
execute sp_rename 'tejas','sher','database'
exec sp_rename 'sher','deer','database'
sp_rename 'deer','horse','database'
sp_renamedb 'horse','tiger'
alter database tiger modify name=tejas
--------------------------------
drop database tejas
-----------------------------
select * from wsp
select name from wsp
select name,roll from wsp
------------------------insert
insert into abc values (1,'viraj','male',123456)--single insert
insert into abc values-----------
(2,'kamlesh','male',987654),
(3,'sakshi','fema',456123),
(4,'pooja','fema',159634)
-------------------------------------
delete wsp where roll=1
delete wsp
--------------------------------------------where
select * from wsp where roll=1
select * from wsp where roll>1
select * from wsp where roll<3
select * from wsp where roll!=1
select * from wsp where roll<>2
select * from wsp where gender='male'
select * from wsp where gender='fema'
--------------------------------------
truncate table wsp
------------------------------------
drop table wsp
---------------------------------------
update wsp set name='divya',gender='fema' where roll=3
----------------------------------------------------
Create table emp
(
code int primary key,
name Varchar(100)
)


select * from emp
insert into emp values
(101,'vikas'),
(102,'vikas'),
(103,'sachin'),
(104,'vinod')

insert into emp(name)values('aj')
----------------------------------
create table com
(caller_id int foreign key references emp(code),
company_name varchar(100),
project int
)

select * from com
insert into com values
(101,'tcs',5),
(101,'mt',0)

insert into com values
(100,'vinod',65)
-------------------------------------------
insert into com(company_name,project)values
('apple',10)
-------------------------------------
insert into com values
(102,'mic',50),
(103,'it',20)
------------------------------------
select * from emp
select * from com
-------------------------------------------------------------------
create table abc
(
roll int ,
name varchar (100),
gender char (10),
number bigint
)
-------------------------------------
use tejas
-------------------------------------
select * from abc
------------------------------procedure
select * from abc where it='Male'
----------------------------------1
create procedure taj
as
begin
select * from abc where it='Male'
end

taj
execute aman
exec aman
--------------------------------------------2
alter procedure taj
as
begin
select * from abc where it='Female'
end

taj
-----------------------------3
create procedure user_data
@a varchar(100),
@b varchar(100)
as
begin
select * from abc where it=@a
select * from abc where name=@b
end
--------------------------------
user_data 'Female','neha'
-----------------------------4
alter procedure user_data
@a varchar(100)='Male',
@b varchar(100)='Sakshi'
with encryption
as
begin
select * from abc where it=@a
select * from abc where name=@b

end

user_data

-------------------------------------------assignment

select * from abc

create proc soham
@a int ,
@b varchar(100),
@c char(10),
@d bigint
as
begin
select * from abc where art=@a
select * from abc where name=@b
select * from abc where it=@c
select * from abc where number=@d
end

alter procedure soham
as
begin
select * from abc where art=8
select * from abc where name='suyog'
select * from abc where it='Male'
select * from abc where number=875412
end

soham

-----------------------------------Function
Create function Rashi()
Returns Varchar(100)
as
begin
 return 'Tejas Anil Jogale'
 end

 select dbo.Rashi()
 -------------------------------
 Create function Tejas(@a int,@b int)
 returns int
 as
 begin
  return @a*@b
  end

  select dbo.Tejas (5,5)
  select dbo.Tejas (9,7)
  ------------------------------------
  create Function Vote(@age int)
  returns varchar (max)
  as
  begin
   Declare @b varchar(100)
   if (@age>18)
     set @b='you are eligible'
  else if (@age=18)
      set @b='vote next time'
   else if (@age<18)
       set @b='you are not eligible'
	   Return @b
  end

  Select dbo.Vote(10)
  Select dbo.Vote(22)
  Select dbo.Vote(18)
  -----------------------------------
  sp_helptext vote
  sp_helptext Tejas
  -----------------------------------

  Create function PanCard(@age int)
  Returns Varchar (max)
  as
  begin
   Declare @b varchar(100)
   if (@age>18)
     set @b='you are eligible'
	 else if (@age=18)
      set @b='you are eligible for minor and next time for major PanCard'
   else if (@age<18)
       set @b='you are eligible for minor PanCard'
  Return @b
    end

	select dbo.PanCard(20)
	select dbo.PanCard(18)
	select dbo.PanCard(12)
	-------------------------------
	Create Function Raj()
	returns Varchar(100)
	as
	begin
	 return 'Hello Tejas Jogale'
	 end

	 select dbo.Raj()
	 --------------------------------
	 create function rohit(@a int ,@b int)
	 returns int
	 as
	 begin
	   return @a*@b
    end

	select dbo.rohit(4,5)
	----------------------------------
	create function voting(@age int)
	returns varchar(max)
	as
	begin
	Declare @b varchar (100)
	if(@age>18)
	 set @b='Your are Eligible'
	else if (@age=18)
	 set @b='Vote Next Time'
	else if (@age<18)
     set @b='Your are Not Eligible'
	return @b
	end

	select dbo.voting(17)
	--------------------------------
 create function Highest(@a int,@b int,@c int)
 returns Varchar (max)
 as
 begin
 Declare @d varchar (100)
 if(@a>@b and @a>@c)
  set @d='A is the Highest'
 else if ( @b>@a and @b>@c)
  set @d='B is the Highest'
 else if (@c>@b and @c>@a)
  set @d='C is the Highest'
 Return @d
 end

 select dbo.highest(10,15,42)
 select dbo.highest(10,51,40)
 select dbo.highest(60,51,40)
 ---------------------------------------
 create table xyz
 (
 roll int,
 Name varchar(100),
 Gender char (010),
 number bigint
 )
 -------------------------------
 select * from xyz

 insert into xyz values (1,'viraj','male',123456)--single insert
insert into xyz values-----------
(2,'kamlesh','male',987654),
(3,'sakshi','fema',456123),
(4,'pooja','fema',159634)
---------------------------------------
begin transaction
delete xyz where roll=2

rollback transaction--reverse 

commit transaction-- save
-------------------------------
select * from xyz
-------------------------------
begin transaction 
delete xyz where roll=4 

save transaction Rohit

rollback transaction---reverse

commit transaction---save

rollback transaction Rohit
-------------------------------
delete xyz where roll=2
select * from xyz
-------------------------------
set implicit_transactions on
delete xyz
drop table xyz

rollback transaction

set implicit_transactions off 

select @@Trancount
----------------------
-- Create the table
CREATE TABLE abc11 (
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    income DECIMAL(10, 2)
);

-- Insert 10 rows of sample data
INSERT INTO abc11 (name, age, gender, income) VALUES
('John', 25, 'Male', 50000.00),
('Alice', 30, 'Female', 60000.00),
('Bob', 35, 'Male', 70000.00),
('Emily', 28, 'Female', 55000.00),
('Michael', 40, 'Male', 80000.00),
('Sophia', 22, 'Female', 48000.00),
('David', 45, 'Male', 90000.00),
('Emma', 27, 'Female', 52000.00),
('James', 32, 'Male', 65000.00),
('Olivia', 29, 'Female', 57000.00);

select * from abc11
--------------------cte
with rose as
(
  select * from abc11 where gender='Male'
)
select * from rose
--------------------insert
with rose as
(
  select * from abc11 
)
insert into rose(gender) values('male')
------------------------
with rose(a,b) as
(
  select age,gender from abc11 where gender='Male'
)
select * from rose where a is null
------------------------
with rose as
(
  select * from abc11 where gender='Male'
),
sachin as
(
  select * from abc11 where gender='feMale'
)
select * from rose
union all
select * from sachin
----------------------------
with tiger as
(
  select * from abc11 where gender='Male'
)
select * from tiger
------------------duplicate
with rev as
(
select *,
ROW_NUMBER() over(partition by name,age,gender,income order  by name,age,gender,income ) as Number
from abc11
)
select * from rev
delete rev where number>1
----------------------------------sequence
create table sek
(
 Roll int,
 Name varchar(100)
)

create sequence omen
start with 1
increment by 4

insert into sek values
(next value for omen,'sachin'),
(next value for omen,'aman')

select * from sek
--------------identity
create table idn
(
 Roll int identity,
 Name varchar(100)
)

insert into idn values
('a1'),
('b1')

select * from idn

delete idn where Roll=2

set identity_insert idn on

insert into idn(roll) values
(2)

set identity_insert idn off
----------------------
dbcc checkident(idn,reseed,998)
-------------------------
create table two2
(
Roll int identity(1,5),
Name varchar(100)
)

select * from two2
insert into two2 values
('a'),
('b')

----------------------------------------------------------while
declare @a int
set @a=1
while(@a<=10)
begin
  print(@a)
  set @a=@a+1
end

------
declare @a int
set @a=10
while(@a>=1)
begin
  print(@a)
  set @a=@a-1
end
------------
declare @a int
set @a=10
while(@a>=1)
begin
  print(@a)
  set @a=@a+1
end
----------------
declare @a int
set @a=1
while(@a<=10)
begin
  print(@a)
  set @a=@a-1
end
--------------------
declare @a int
set @a=1
while(@a<=10)
begin
  print replicate(' * ',@a)
  set @a=@a+1
end
---------------
declare @a int
set @a=10
while(@a>=1)
begin
  print replicate(' * ',@a)
  set @a=@a-1
end

----------------assignment

declare @a int
set @a=2
while(@a<=20)
begin
  print(@a)
  set @a=@a*2
end
--------------1
declare @a int
set @a=2
while(@a<=20)
begin
  print(@a)
  set @a=2+@a
end
-----------------
declare @a int
set @a=2
while(@a<=20)
begin
  print(@a)
  set @a=@a+1
end
---------------
declare @a int,@b int,@c int
set @a=3,@b=1
begin
 print(@c)
 set @c=@a*@b
end

declare @a int,@b int,@c int
set @a=2,@b=1
while (@c<=20)
begin
 print(@c)
 set @c=@a*@b
end
-------------------------
DECLARE @a INT, @b INT, @c INT
 SET @a = 2
 SET @b = 1
 SET @c = @a * @b
WHILE (@c <= 20)
BEGIN
 PRINT (@c)
 SET @b = @b + 1
 SET @c = @a * @b
END
------------------------
DECLARE @a INT, @b INT, @c INT
SET @a = 2
SET @b = 1
SET @c = @a * @b

WHILE (@c <= 20)
BEGIN
    PRINT CONVERT(VARCHAR(10), @a) + ' * ' + CONVERT(VARCHAR(10), @b) + ' = ' + CONVERT(VARCHAR(10), @c)
   SET @b = @b + 1
   SET @c = @a * @b
END
----------------------------
DECLARE @a INT, @b INT, @c INT
 SET @a = 3
 SET @b = 1
 SET @c = @a * @b 
WHILE (@c <=30)
BEGIN
 PRINT(@c)
 SET @b = @b + 1 
 SET @c = @a * @b
END
-------------------------------------
create table sandesh
(
 Roll int,
 Name varchar(100)
)

insert into sandesh values
(1,'Tejas'),
(2,'sandesh'),
(3,'Raj'),
(4,'yash'),
(5,'rohan')

alter table sandesh alter column ROll int not null
alter table sandesh add primary key(Roll)
alter table sandesh add unique(Name)
alter table sandesh add check(Roll>5)
alter table sandesh add constraint aman default 'sachin' for name
-------------------------
create table two420
(
 sr_no int,
 Gender varchar(100)
)

alter table two420 add foreign key(sr_no) references  sandesh(Roll)
-----------------
create table how
(
 ROll int ,
 sr_no float,
 Gender varchar(100)
 constraint kalam primary key(Roll,sr_no)
)
---------------------
create table how1
(
 ROll int ,
 sr_no float,
 Gender varchar(100)
)
alter table how1 alter column roll int not null
alter table how1 alter column sr_no int not null

alter table how1 add constraint vsp primary key(Roll,sr_no)

------  print concat(2,'',@a,'=',2*@a)
declare @a int
set @a=1
while(@a<=20)
begin
  declare @b int
  set @b=1
  while(@b<=10)
   begin
   print concat(@a,'x',@b,'=',@a*@b)
   set @b=@b+1
   end
  set @a=@a+1
  print('---------------------------new')
end
------------------------
select * from abc11

-------------------
select gender,null,sum(income) as total from abc11 group by gender
union all
select null,Name,sum(income) as total from abc11 group by Name
union all
select gender,Name,sum(income) as total from abc11 group by gender,name
-------------------grouping set
select name,gender,sum(income) as total from abc11 group by 
grouping sets
(
 (Name,gender),
 (gender),
 ()
)
-------------------------------
Create table men
(
code int primary key,
name Varchar(100)
)

insert into men values
(101,'Tejas'),
(102,'Sandesh'),
(103,'Raj'),
(104,'Rahul'),
(105,'Manish')

select * from men
-------------------------Deleting a value in foreign key
/*create table men1
(
Sr_no int foreign key references men(code)
on delete cascade,
Company_name varchar (100)
)
----------------------- Deleting a value in foreign key and rename it with null
create table men1
(
Sr_no int foreign key references men(code)
on delete set null,
Company_name varchar (100)
------------------------------ Deleting a value and renaming it with default 105
create table men1
(
Sr_no int default 105  foreign key references men(code) 
on delete set default,
Company_name varchar (100)
)*/
-----------------update a value in cascade
create table men1
(
Sr_no int  foreign key references men(code) 
on update cascade on delete cascade,
Company_name varchar (100)
)

insert into men1 values
(101,'Samsung'),
(102,'Vivo'),
(103,'Oppo'),
(104,'Redmi'),
(105,'AsusRog')

select * from men1
drop table men1

alter table men1 add foreign key(sr_no)references men(code) 
select * from men
select * from men1
------------------------------------------------
delete men where code=101
--------------------------cascade
drop table men1
drop table men

update men set code=10 where code=104

-------------------------------------------------------practice
create table men1
(
Sr_no int foreign key references men(code)
on delete cascade,
Company_name varchar (100)
)
-------------------
create table men1
(
Sr_no int foreign key references men(code)
on delete set null,
Company_name varchar (100)
)
---------------------
create table men1
(
Sr_no int default 105  foreign key references men(code) 
on delete set default,
Company_name varchar (100)
)
--------------------------
create table men1
(
Sr_no int  foreign key references men(code) 
on update cascade on delete cascade,
Company_name varchar (100)
)
--------------------------------------------------------------
create table art
(
Roll int,
name varchar (100),
Gender char(10),
number bigint
)
select * from art
------------------------
insert into art values
(1,'sachin','male',500)
--------------------
create trigger emp1
on art
after insert
as
begin
  print('THANKS FOR INSERT DATA')
end
------------------------
ALTER trigger emp1
on art
after UPDATE
as
begin
  print('THANKS FOR UPDATE DATA')
end

SELECT * FROM ART
UPDATE ART SET ROLL=500 WHERE rOLL=1
-----------------------------
create trigger emp10
on art
after DELETE
as
begin
  print('THANKS FOR DELETE DATA')
end

SELECT * FROM ART
DELETE ART WHERE rOLL=500
-----------------------
create trigger emp185
on art
after insert
as
begin
 SELECT * FROM INSERTED
end

INSERT INTO ART VALUES
(1,'ABDUL','MALE',54620)
---------------------------
create trigger A5460
on art
after insert,UPDATE,DELETE
as
begin
  print('THANKS FOR 3 DATA')
end

INSERT INTO ART VALUES
(10,'ASD','S',4)
------------------------------------------------
CREATE TABLE OPP
(
ROLL INT,
NAME VARCHAR (100),
GENDER CHAR (10),
NUMBER BIGINT
)
INSERT INTO OPP VALUES
(1,'A','M',100)

select * from opp

/*create trigger aa
on opp
after insert
as
begin
  print('THANKS FOR INSERT DATA')
end*/

/*alter trigger aa
on opp
after update
as
begin
  print('THANKS FOR UPDATING DATA')
end*/

UPDATE OPP SET ROLL=2 WHERE ROLL=1

/*alter trigger aa
on opp
after DELETE
as
begin
  print('THANKS FOR DELETING DATA')
end*/

DELETE OPP WHERE ROLL=2

/*create trigger B
on OPP
after insert
as
begin
 SELECT * FROM INSERTED
end*/

INSERT INTO OPP VALUES
(1,'A','M',100)

/*create trigger C
on OPP
after insert,UPDATE,DELETE
as
begin
  print('THANKS FOR 3 DATA')
end*/

SELECT * FROM OPP
---------------------------
declare @a varchar (100)
set @a='Tejas'
print concat('Name: ',@a)
----------------------
declare @a int
set @a = -5
print 