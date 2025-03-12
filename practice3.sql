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

