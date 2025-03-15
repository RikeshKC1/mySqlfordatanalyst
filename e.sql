select gender, dem.first_name, sal.salary,avg(salary) as Avg_salary,
row_number() over( partition by gender order by salary desc)
from parks_and_recreation.employee_demographics as dem 
JOIN parks_and_recreation.employee_salary as sal on dem.employee_id = sal.employee_id;