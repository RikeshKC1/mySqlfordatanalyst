select * from employee_demographics;

select * from employee_salary;

DELIMITER $$

create procedure large_salary54()
begin
select * from employee_salary where salary>=60000;
end $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER employee_insert
AFTER insert on employee_salary
for each row
begin
 insert into employee_demographics(employee_id, first_name,last_name)
 values(new.employee_id,new.first_name,new.last_name);
 
 

end $$

DELIMITER ;

7min
