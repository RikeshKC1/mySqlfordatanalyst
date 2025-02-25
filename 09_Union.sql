-- UNION
select age,gender from parks_and_recreation.employee_demographics
 UNION select first_name,last_name from parks_and_recreation.employee_salary;
 
 -- for data flitering firstname and lastname and also it will generate duplicate value 
 select first_name, last_name from parks_and_recreation.employee_demographics AS dem
 UNION all 
 select first_name, last_name from parks_and_recreation.employee_salary as sal;

 -- for data flitering firstname and lastname and it will not generate duplicate value
 select first_name, last_name from parks_and_recreation.employee_demographics AS dem
 UNION distinct 
 select first_name, last_name from parks_and_recreation.employee_salary as sal;
 
 
 select first_name ,last_name ,'OLD' AS Label from parks_and_recreation.employee_demographics where age >50 
 union first_name ,last_name ,'Highly paid Salary' AS Label from parks_and_recreation.employee_salary where salary >70000;