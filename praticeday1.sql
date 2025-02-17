SELECT * FROM parks_and_recreation.employee_demographics;

SELECT   first_name FROM parks_and_recreation.employee_demographics;

select age, age+10 FROM parks_and_recreation.employee_demographics;

SELECT distinct gender  from parks_and_recreation.employee_demographics;

SELECT * from parks_and_recreation.employee_salary where first_name !='April';

SELECT * from parks_and_recreation.employee_salary WHERE salary > 50000;

SELECT * from parks_and_recreation.employee_demographics WHERE birth_date > '1979-09-25';

