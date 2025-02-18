-- limit
select * from parks_and_recreation.employee_demographics order by age desc limit 3,1;


-- Aliasing

SELECT gender, AVG(age) AS avg_age
FROM 
parks_and_recreation.employee_demographics group by
gender having
AVG(age)>40;
