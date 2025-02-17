-- practicing
select * from  parks_and_recreation.employee_demographics;
 -- using distinct
 
select distinct age from parks_and_recreation.employee_demographics;

-- using where 
select * from parks_and_recreation.employee_demographics where age=44;

select * from parks_and_recreation.employee_demographics where birth_date='';

-- using like using %
select * from parks_and_recreation.employee_demographics WHERE first_name LIKE 'a%';

-- using like using __
select * from parks_and_recreation.employee_demographics WHERE first_name like 'a___';

-- using like using % and __
select * from parks_and_recreation.employee_demographics WHERE first_name like 'a___%';

-- using !=(not equal)
select * from parks_and_recreation.employee_demographics where age!=44;

select * from parks_and_recreation.employee_demographics where gender!='male';

-- group by
select gender from parks_and_recreation.employee_demographics group by gender;

select gender , AVG(age)  from parks_and_recreation.employee_demographics group by gender;

-- max ,min ,count-it will count rows,avg

select gender,AVG(age), MAX(age) , MIN(age) , count(age) from parks_and_recreation.employee_demographics group by gender;

-- order by
select * from parks_and_recreation.employee_salary order by salary desc;

select * from parks_and_recreation.employee_salary order by occupation asc;



