//Section 1
//1. Write a query to print the number of employees per department in the organization
SELECT DEPARTMENT, COUNT(*) FROM Employee GROUP BY DEPARTMENT;
//2. Write an SQL query to find the name of the top-level manager of each department
// As top level manager won’t have a supervising manager, they can be selected as manages who don’t have a supervisor.
SELECT * FROM Employee where (EMPLOYEE_ID in (SELECT DISTINCT MANAGER FROM Employee) AND MANAGER is NULL);	
/*3. Write a query to find the total incentive received by a given employee in a given month.*/
Select a.EMPLOYEE_ID, FIRST_NAME,SUM(INCENTTIVE_AMOUNT) FROM Employee A inner join Incentives B on A.EMP_ID=B. EMPLOYEE_REF_ID WHERE (A.EMP_ID=/*Given ID*/ AND MONTH(INCENTIVE_DATE)=/*Given Month*/) GROUPBY B. EMPLOYEE_REF_ID;
/*4. Write a query to find the month where employees got maximum incentive*/
// The incentives are grouped by date, sorted and the month with the highest incentive is shown
SELECT SUM(INCENTIVE_AMOUNT),Monthname(INCENTIVE_DATE) FROM Incentives group by DATE_FORMAT(INCENTIVE_DATE, "%Y-%m-01")ORDER BY SUM(INCENTIVE_AMOUNT) DESC limit 1;
