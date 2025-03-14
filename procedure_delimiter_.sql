-- stored procedure

select * from employee_salary where salary>=50000;

create procedure large_salary()
select * from employee_salary where salary>=50000;


create procedure gender_classification()
select * from employee_demographics order by gender;

select * from gender_classification;

call large_salary();


-- delimiter

DELIMITER $$
create procedure large_salary2()
begin
select * from employee_salary where salary>=50000;
select * from employee_salary where salary>=10000;
end $$
DELIMITER ;

call large_salary2();

DELIMITER $$
create procedure large_salary3(employee_id int)
begin
select * from employee_salary where salary>=50000;
end $$
DELIMITER ;

call large_salary3(1);



DELIMITER $$
create procedure employee_id(employee_id int)
begin
select salary from employee_salary where 
employee_id = employee_id;
end $$
DELIMITER ;

call employee_id(1);
