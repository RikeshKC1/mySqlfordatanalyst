-- CTE
WITH CTE_EXAMPLE AS
(select gender, avg(salary) as avg_salary, sum(salary)  sum_salary, max(salary) max_salary ,count(salary) count_salary from parks_and_recreation.employee_demographics as dem join
 parks_and_recreation.employee_salary as sal on dem.employee_id = sal.employee_id group by gender)
 SELECT avg(avg_salary) ,sum(sum_salary) FROM CTE_EXAMPLE
 
 ;
 

 
 WITH CTE_EXAMPLE AS (
    SELECT employee_id, gender, birth_date
    FROM parks_and_recreation.employee_demographics
    WHERE birth_date > '1985-01-01'
), 
CTE_EXAMPLE2 AS (
    SELECT employee_id, salary 
    FROM parks_and_recreation.employee_salary
    WHERE salary > 500000
)
SELECT * 
FROM CTE_EXAMPLE 
JOIN CTE_EXAMPLE2 ON CTE_EXAMPLE.employee_id = CTE_EXAMPLE2.employee_id;

