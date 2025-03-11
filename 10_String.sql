-- STRING

SELECT LENGTH('RIKESH');

SELECT first_name, Length(first_name) as LENGTH FROM parks_and_recreation.employee_demographics order by 2 ;

-- upper and lower

select upper('rikesh');
select lower('SKY');
select first_name , upper(first_name) FROM parks_and_recreation.employee_demographics order by 2;

-- trim
select trim('      sky       ');

select first_name , lower(first_name) FROM parks_and_recreation.employee_demographics order by 2 ;


-- right left 
select first_name,
right(first_name,4)
 from parks_and_recreation.employee_demographics;
 
 select last_name ,
 left(last_name,4),
 right(last_name,4),
 birth_date,
 substring(birth_date,6,2) as birth_date from parks_and_recreation.employee_demographics;
 
 -- replace
 select first_name, replace(first_name,'a','z')  from parks_and_recreation.employee_demographics;

-- locate 
select first_name, locate('an', first_name) from parks_and_recreation.employee_demographics;

-- concat
select first_name,last_name ,concat(first_name,' ',last_name) from parks_and_recreation.employee_demographics;
