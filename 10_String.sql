-- STRING

SELECT LENGTH('RIKESH');

SELECT first_name, Length(first_name) FROM parks_and_recreation.employee_demographics order by 2 ;

-- upper and lower

select upper('rikesh');
select lower('SKY');
select first_name , upper(first_name) FROM parks_and_recreation.employee_demographics order by 2;

-- trim
select trim('      sky       ');

select first_name , lower(first_name) FROM parks_and_recreation.employee_demographics order by 2 ;

