-- like uses for searching
-- used of %
select * from parks_and_recreation.employee_demographics where first_name LIKE 'a%';

-- used of __
select * from parks_and_recreation.employee_demographics where first_name like 'a___%';

select * from parks_and_recreation.employee_demographics where birth_date like '1989%';