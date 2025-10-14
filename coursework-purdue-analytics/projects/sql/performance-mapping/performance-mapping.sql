use employee;

-- Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, and DEPARTMENT from the employee record table, and make a list of employees and details of their department.
select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT 
from emp_record_table;
 
 -- Write a query to fetch EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPARTMENT, and EMP_RATING if the EMP_RATING is:
 -- less than two
select emp_id, first_name, last_name, gender, dept, emp_rating
from emp_record_table
where EMP_RATING < 2;

-- greater than four
select emp_id, first_name, last_name, gender, dept, emp_rating
from emp_record_table
where EMP_RATING > 4;

-- between two and four
select emp_id, first_name, last_name, gender, dept, emp_rating
from emp_record_table
where EMP_RATING between 2 and 4;

-- Write a query to concatenate the FIRST_NAME and the LAST_NAME of employees in the Finance department from the employee table and then give the resultant column alias as NAME.
select concat(first_name, ' ', last_name) as name, DEPT
from emp_record_table
where DEPT = 'Finance';

-- Write a query to list only those employees who have someone reporting to them. Also, show the number of reporters (including the President).
SELECT  m.emp_id, m.first_name, m.last_name, m.ROLE, count(e.emp_id) as reporters
FROM emp_record_table e
join emp_record_table m on e.MANAGER_ID = m.EMP_ID
group by m.EMP_ID, m.first_name, m.last_name, m.ROLE
ORDER BY m.EMP_ID;

-- Write a query to list down all the employees from the healthcare and finance departments using union. Take data from the employee record table.
select emp_id, dept
from emp_record_table
where DEPT = 'HEALTHCARE'
UNION
select emp_id,  DEPT
from emp_record_table
where DEPT = 'FINANCE';

-- Write a query to list down employee details such as EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPARTMENT, and EMP_RATING grouped by dept. Also include the respective employee rating along with the max emp rating for the departmen
SELECT EMP_ID, FIRST_NAME, LAST_NAME, ROLE, DEPT, EMP_RATING, max(EMP_RATING) over (PARTITION BY dept) as max_rating
FROM emp_record_table 
ORDER BY DEPT;

-- Write a query to calculate the minimum and the maximum salary of the employees in each role. Take data from the employee record table.
SELECT role, min(SALARY) as minimum_salary, max(SALARY) as maximum_salary
FROM emp_record_table 
group by role;

-- Write a query to assign ranks to each employee based on their experience. Take data from the employee record table.
select emp_id,exp, dense_rank() over (ORDER BY exp DESC) as ranks
from emp_record_table;

-- Write a query to create a view that displays employees in various countries whose salary is more than six thousand. Take data from the employee record table.
drop view employees_in_various_countries;
create view  employees_in_various_countries as
select EMP_ID, first_name, last_name, SALARY, COUNTRY
from emp_record_table
where SALARY > 6000;

-- Write a nested query to find employees with experience of more than ten years. Take data from the employee record table.
select *
from emp_record_table
where EMP_ID in (select emp_id from emp_record_table where exp > 10);

-- Write a query to create a stored procedure to retrieve the details of the employees whose experience is more than three years. Take data from the employee record table.
DROP PROCEDURE experience_more_than_three_year
delimiter $$
create PROCEDURE experience_more_than_three_year()
BEGIN
select *
from emp_record_table
where exp > 3;
END $$
delimiter ;


-- Write a query using stored functions in the project table to check whether the job profile assigned to each employee in the data science team matches the organization’s set standard.
DROP FUNCTION organization’s_set_standard
delimiter $$
CREATE  FUNCTION  organization’s_set_standard (emp_id VARCHAR(55))
RETURNS varchar(255)
READS SQL DATA
BEGIN
  SELECT 
	   case
           when role = 'JUNIOR DATA SCIENTIST' and exp <= 2 then 'Meets Criteria'
           when role = 'ASSOCIATE DATA SCIENTIST' and exp BETWEEN 2 and 5 then 'Meets Criteria'
           when role = 'SENIOR DATA SCIENTIST' and exp BETWEEN 5 and 10 then 'Meets Criteria'
           when role = 'LEAD DATA SCIENTIST' and exp BETWEEN 10 and 12 then 'Meets Criteria'
           when role = 'MANAGER' and exp BETWEEN 12 and 16 then 'Meets Criteria'
		   else "Doesn't meet any Criteria"
		end as Criteria into @Criteria
   FROM employee.emp_record_table e
   where e.EMP_ID = amp_id;
RETURN @Criteria;
END $$
delimiter ;
 
-- Create an index to improve the cost and performance of the query to find the employee whose FIRST_NAME is ‘Eric’ in the employee table after checking the execution plan.
show index from emp_record_table;
create index first_name_idx on emp_record_table(first_name(50));
select *
from emp_record_table
where FIRST_NAME regexp 'Eric';

-- Write a query to calculate the bonus for all the employees, based on their ratings and salaries (Use the formula: 5% of salary * employee rating).
select  
       emp_id, first_name, last_name, role, emp_rating, salary,
       round(sum((salary * 5 / 100) * EMP_RATING)) as bonus
from emp_record_table
GROUP BY emp_id, first_name, last_name, role, emp_rating, salary;

-- Write a query to calculate the average salary distribution based on the continent and country. Take data from the employee record table.
select CONTINENT, COUNTRY, avg(SALARY) as average_salary
from emp_record_table
group by CONTINENT, COUNTRY;
