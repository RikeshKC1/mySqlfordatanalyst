-- window
SELECT gender,avg(salary) over(partition by gender)
as Avg_salary FROM parks_and_recreation.employee_demographics dem JOIN
parks_and_recreation.employee_salary sal on dem.employee_id = sal.employee_id ;

SELECT dem.first_name,sal.salary ,sum(salary) over(partition by gender order by dem.employee_id)
as Rolling_total FROM parks_and_recreation.employee_demographics dem JOIN
parks_and_recreation.employee_salary sal on dem.employee_id = sal.employee_id ;


SELECT dem.first_name,sal.salary, dem.employee_id,gender,
row_number() over(partition by gender order by salary desc ) as row_num,
rank() over(partition by gender order by salary desc) as rank_num,
dense_rank() over(partition by gender order by salary desc) as dense_num
FROM parks_and_recreation.employee_demographics dem JOIN
parks_and_recreation.employee_salary sal on dem.employee_id = sal.employee_id ;