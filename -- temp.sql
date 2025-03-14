-- Create a temporary table
CREATE TEMPORARY TABLE temp_table (
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    favorite_movie VARCHAR(100)
);

-- Select data (will be empty initially)
SELECT * FROM temp_table;

-- Correct INSERT statement
INSERT INTO temp_table (first_name, last_name, favorite_movie) 
VALUES ('Rikesh', 'KC', 'Chakka Panja 4');

-- Verify the inserted data
SELECT * FROM temp_table;

CREATE temporary table salary_50K
select * from employee_salary where 
salary >=50000;

select * from salary_50k;

create temporary table temp_table (
first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)

)

select * from temp_table;

INSERT INTO temp_table (first_name, last_name, favorite_movie) 
VALUES ('Rikesh', 'KC', 'Chakka Panja 4');