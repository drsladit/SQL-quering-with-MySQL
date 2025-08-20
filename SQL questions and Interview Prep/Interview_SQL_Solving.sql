-- Questions
/*
Find second highest salaried employee
Find employees who earns higest salary in their department.
Display alternate records
Display duplicates of a column
List the no of customers in each country, ordered by country with the most customers first.
Display employee names whos name starting with letter "M"
Display employee names whos name ending with letter "E"
Display employee names whos name having letter "Z"
Display employee names whos name NOT having letter "Z"
Display employee names whos name has exactly 4 characters
Display employee names whos name conatains 2nd letter as "o" and 4th letter as "n"
Display employee name and hire data for the employees who got hired in December
Display employees whos name contains 2 L's
Display 4th row in the employees table
Display 4th row in the employees table with all columns 
Display only selected rows 2, 3 ,5 row in the employees table
Display employees who works in US location
Display department names and their total salaries
Display employees whos salary is greater than thier manager
Display employees who joined before their manager
Display first and last row in the table
Display last 2 rows in the table
Display first and last 2 rows of the table
What will be the result when we do arthematic operation with NULL valued column
*/


--Que 1: Find second highest salaried employee
/* Approach: 
Step 1: Table and columns to use and display: employee table with empid, empname, salary
Step 2: Find Max salaried employee
Step 3: Remove max salaried employee from actual table
Step 4: Order by Desc and filter result by limit 1 
Logic:
1. Max salaried employee: select max(salary) from employee;
2. Remove max salary from actual table: select * from employee where salary != (select max(salary) from employee)
3. Order by desc and filter result by limit 1:
*/
-- Query 1:
Select * from employee where salary != (select max(salary) from employee) order by salary limit 1

/* Approach if duplicate values in Salary: 
Approach 1:
Step 1: Table and columns to use and display: employee table with empid, empname, salary
Step 2: Structure the data hierarchy
Step 3: Order by Desc and filter result by limit
Logic:
1. Use Dense_rank() to create new column on salary column
2. Use it in Sub query or CTE to get Order by desc and filter result by limit 1:*/
with empsalaryrank as (
    select empname, salary, dense_rank() over (order by salary DESC) as ranl_col from employee
)
select empname, salary from empsalaryrank where rank_col = 2;