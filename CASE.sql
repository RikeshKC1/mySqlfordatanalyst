-- case statement
 select first_name, last_name,age,
 CASE
 WHEN age<=30 THEN 'rikesh'
 WHEN age between 31 and 51 then  'old'
 when age>=55 then 'they are in death door'
 
 END as 'Age_label'
 from parks_and_recreation.employee_demographics;
 
 
 

-- <50000 5% bonus 
-- > 500000 7% bonus
--  finace cha vnne 10% bonus
 
 select first_name, last_name , salary,
 CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
 END as new_salary,
 CASE 
	WHEN dept_id = 6 THEN salary * 0.10
 END as Bonus
 
 from parks_and_recreation.employee_salary;
 
 
 select * from parks_and_recreation.employee_salary;
 