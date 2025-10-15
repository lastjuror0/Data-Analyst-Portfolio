# ScienceQtech Employee Performance Mapping

Course-end Project  
Simplilearn | Purdue University

---

## Description

ScienceQtech is a startup that works in the Data Science field. ScienceQtech has worked on fraud detection, market basket analysis, self-driving cars, supply chain, algorithmic early detection of lung cancer, and more. The objective is to facilitate a better understanding of employee performance, helping HR finalize employee performance mapping using manager ratings. As a DBA, you should find the max rating given to each employee by their manager.

---

## Dataset Description

### emp_record_table

Contains information of all the employees.

- `EMP_ID` – ID of the employee
- `FIRST_NAME` – First name of the employee
- `LAST_NAME` – Last name of the employee
- `GENDER` – Gender of the employee
- `ROLE` – Post of the employee
- `DEPT` – Field of the employee
- `EXP` – Years of experience the employee has
- `COUNTRY` – Country in which the employee is presently living
- `CONTINENT` – Continent in which the country is
- `SALARY` – Salary of the employee
- `EMP_RATING` – Performance rating of the employee
- `MANAGER_ID` – The manager under which the employee is assigned 
- `PROJ_ID` – The project on which the employee is working or has worked on

### proj_table

Contains information about the projects.

- `PROJECT_ID` – ID for the project
- `PROJ_Name` – Name of the project
- `DOMAIN` – Field of the project
- `START_DATE` – Day the project began
- `CLOSURE_DATE` – Day the project was or will be completed
- `DEV_QTR` – Quarter in which the project was scheduled
- `STATUS` – Status of the project currently

### data_science_team

Contains information about all the employees in the Data Science team.

- `EMP_ID` – ID of the employee
- `FIRST_NAME` – First name of the employee
- `LAST_NAME` – Last name of the employee
- `GENDER` – Gender of the employee
- `ROLE` – Post of the employee
- `DEPT` – Field of the employee
- `EXP` – Years of experience the employee has
- `COUNTRY` – Country in which the employee is presently living
- `CONTINENT` – Continent in which the country is

---

## Tasks to Perform

Perform the following tasks using SQL:

1. Create a database named `employee`, then import `data_science_team.csv`, `proj_table.csv`, and `emp_record_table.csv` into the employee database from the given resources.
2. Create an ER diagram for the given employee database.
3. Write a query to fetch `EMP_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, and `DEPT` from the employee record table, and make a list of employees and details of their department.
4. Write a query to fetch `EMP_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `DEPT`, and `EMP_RATING` if the `EMP_RATING` is:
   • less than two
   • greater than four
   • between two and four
5. Write a query to concatenate the `FIRST_NAME` and the `LAST_NAME` of employees in the Finance department from the employee table and then give the resultant column alias as `NAME`.
6. Write a query to list only those employees who have someone reporting to them. Also, show the number of reporters (including the President).
7. Write a query to list down all the employees from the healthcare and finance departments using union. Take data from the employee record table.
8. Write a query to list down employee details such as `EMP_ID`, `FIRST_NAME`, `LAST_NAME`, `ROLE`, `DEPT`, and `EMP_RATING` grouped by dept. Also include the respective employee rating along with the department.
9. Write a query to calculate the minimum and the maximum salary of the employees in each role. Take data from the employee record table.
10. Write a query to assign ranks to each employee based on their experience. Take data from the employee record table.
11. Write a query to create a view that displays employees in various countries whose salary is more than six thousand. Take data from the employee record table.
12. Write a nested query to find employees with experience of more than ten years. Take data from the employee record table.
13. Write a query to create a stored procedure to retrieve the details of the employees whose experience is more than three years. Take data from the employee record table.
14. Write a query using stored functions in the project table to check whether the job profile assigned to each employee in the data science team matches the organization’s set standard.
    The standard being:
    - For an employee with experience less than or equal to 2 years assign 'JUNIOR DATA SCIENTIST'
    - For an employee with experience of 2 to 5 years assign 'ASSOCIATE DATA SCIENTIST'
    - For an employee with experience of 5 to 10 years assign 'SENIOR DATA SCIENTIST'
    - For an employee with experience of 10 to 12 years assign 'LEAD DATA SCIENTIST'
    - For an employee with experience of 12 to 16 years assign 'MANAGER'
15. Create an index to improve the cost and performance of the query to find the employee whose `FIRST_NAME` is ‘Eric’ in the employee table after checking the execution plan.
16. Write a query to calculate the bonus for all the employees, based on their ratings and salaries (Use the formula: 5% of salary * employee rating).
17. Write a query to calculate the average salary distribution based on the continent and country. Take data from the employee record table.
