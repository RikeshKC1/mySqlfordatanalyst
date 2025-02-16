SELECT * 
FROM parks_and_recreation.employee_demographics;

SELECT employee_id, last_name,age
FROM parks_and_recreation.employee_demographics;

SELECT 
employee_id, 
first_name,
age,
(age + 10) * 10
FROM parks_and_recreation.employee_demographics;


SELECT distinct
gender
FROM parks_and_recreation.employee_demographics;
