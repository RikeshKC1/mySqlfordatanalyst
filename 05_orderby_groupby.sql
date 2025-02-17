-- group by
SELECT gender,AVG(age) FROM  parks_and_recreation.employee_salary
 GROUP BY gender;

SELECT AVG(salary) FROM  parks_and_recreation.employee_salary;

SELECT occupation,salary FROM parks_and_recreation.employee_salary group by occupation,salary ;

-- order by

SELECT * FROM  parks_and_recreation.employee_demographics order by gender desc, age;


