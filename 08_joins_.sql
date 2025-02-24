SELECT * FROM parks_and_recreation.employee_demographics;

SELECT * FROM parks_and_recreation.employee_salary;

select  dem.employee_id,frist_name ,employee_id from parks_and_recreation.employee_demographics as dem inner join
 parks_and_recreation.employee_salary as sal on 
dem.employee_id = sal.employee_id;



select * from parks_and_recreation.employee_salary inner join 
parks_and_recreation.employee_demographics on employee_salary.last_name = employee_demographics.first_name;


-- outer joins
-- leftjoin
select * from parks_and_recreation.employee_demographics as dem
 left join parks_and_recreation.employee_salary as sal on dem.employee_id = sal.employee_id;
-- right 
select * from parks_and_recreation.employee_demographics as dem
 right join parks_and_recreation.employee_salary as sal on dem.employee_id = sal.employee_id;
 
 -- self joins
 select * from 
 parks_and_recreation.employee_salary emp1 join
 parks_and_recreation.employee_salary as emp2 on emp1.employee_id + 1 = emp2.employee_id;