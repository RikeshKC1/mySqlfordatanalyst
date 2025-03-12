-- practices

-- distint
-- it will only generate unique value 
select distinct gender from parks_and_recreation.employee_demographics;

-- where 
select * from parks_and_recreation.employee_demographics where first_name='Tom';

select * from parks_and_recreation.employee_salary where salary>=50000;


select gender, dem.first_name, sal.salary
from parks_and_recreation.employee_demographics as dem 
JOIN parks_and_recreation.employee_salary as sal on dem.employee_id = sal.employee_id;

select gender, dem.first_name, sal.salary,
row_number() over( partition by gender order by salary desc) as row_num
from parks_and_recreation.employee_demographics as dem 
JOIN parks_and_recreation.employee_salary as sal on dem.employee_id = sal.employee_id;

SELECT dem.first_name,sal.salary, dem.employee_id,gender,
row_number() over(partition by gender order by salary desc ) as row_num,
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as dense_num
FROM parks_and_recreation.employee_demographics dem JOIN
parks_and_recreation.employee_salary sal on dem.employee_id = sal.employee_id ;

-- group by
select gender from parks_and_recreation.employee_demographics group by gender;

-- use of avg , count, sum, min ,max
select  gender , avg(age) as Average_age from parks_and_recreation.employee_demographics group by gender;

select gender ,count(age)  from parks_and_recreation.employee_demographics group by gender;

select gender , sum(age) from parks_and_recreation.employee_demographics group by gender;

select gender , max(age) from parks_and_recreation.employee_demographics group by gender;

select gender , max(age),min(age),count(age),sum(age) from parks_and_recreation.employee_demographics group by gender;

-- like
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'A__';

SELECT * from parks_and_recreation.employee_salary where first_name like 'a___';

-- order by
select * from parks_and_recreation.employee_demographics order by gender desc;

-- limit
select * from parks_and_recreation.employee_demographics order by gender desc limit 4;

select * from parks_and_recreation.employee_salary order by salary desc limit 2;


-- aliaing
select first_name as new_name from parks_and_recreation.employee_demographics;





