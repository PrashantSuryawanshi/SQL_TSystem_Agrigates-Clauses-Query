select*from Persons1

insert into Persons1 values('Niraj',34,'Pune'),
                           ('Raj',32,'Mumbai'),
						   ('Jon',40,'Pune'),
						   ('Piterson',35,'Pune'),
						   ('Roy',34,'Mumbai'),
						   ('Nilesh',33,'Nagpur'),
						   ('Nitin',34,'Nagpur'),
						   ('Ashish',40,'Nashik'),
						   ('Avinash',28,'Dhule');
select count(*) from Persons1
select count(PersonID) from Persons1
select count(distinct City) from Persons1 --

select max(Age)as maxAge from Persons1

-----Grp By Cluse-------
select city, count(PersonID) as TotalPersons
from Persons1
group by city

select Age, count(PersonID) as TotalPersons
from Persons1
group by Age

insert into Persons1 values  ('Piter',35,'Pune');

select Age,City, count(PersonID) as TotalPersons
from Persons1
group by Age,City

------where 'in' clause--------

alter table Persons1    -----Add Column
add pSalary decimal;

update Persons1 set pSalary=22000   -----update salary column
where PersonID=1;

update Persons1 set pSalary=22000   -----update salary column
where PersonID in(2,3);


update Persons1 set pSalary=25000   -----update salary column
where PersonID in(4,5);


update Persons1 set pSalary=35000   -----update salary column
where PersonID in(6,9);

update Persons1 set pSalary=20000   -----update salary column
where PersonID in(2,8);

------Having clause--------

select City,count(City) as TotalCount from Persons1
group by City
having count(City)<2;





select City,count(PersonID) as TotalCount from Persons1
group by City
having City in ('mumbai','pune');

select*from Persons1

select*from employees

alter table employees
add exp int;

update employees set exp=10   -----update salary column
where id in(6,9);

update employees set exp=15   -----update salary column
where id in(1,2,3,4);

update employees set exp=24  -----update salary column
where id in(1,5,8,9);

update employees set exp=25  -----update salary column
where id in(10,7,11);



----Find the ename who is taking highest experinace

select name,id,exp from employees where exp=
(select max(exp) from employees) 

--- Find the employee:-name,id,exp who is taking the 2nd highest experinace

select name,id,exp from employees where exp=(
select max(exp) from employees where exp<>
(select max(exp) from employees) 
) 

-- Find the employee:-name who is taking the 2nd highest experinace