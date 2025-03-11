-- window
SELECT gender,avg(salary) over(partition by gender)
as Avg_salary FROM parks_and_recreation.employee_demographics dem JOIN
parks_and_recreation.employee_salary sal on dem.employee_id = sal.employee_id ;

