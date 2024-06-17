-- Write a query to find the average salary of the five least-earning employees.
SELECT AVG(Salary) 
from (SELECT Salary from EMPLOYEES 
		ORDER BY salary LIMIT 5) as lowest_earning_table;


-- Write a query to find the records of employees older than the average age of all employees.
SELECT * FROM EMPLOYEES 
WHERE YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE, B_DATE))) > 
	(SELECT AVG(YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE, B_DATE)))) 
     FROM EMPLOYEES)


-- From the Job_History table, display the list of Employee IDs, years of service, and average years of service for all entries.
SELECT 
	EMPL_ID,
    YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE, START_DATE))) AS YEARS_OF_SERVICE,
    (SELECT AVG(YEAR(FROM_DAYS(DATEDIFF(CURRENT_DATE, START_DATE)))) FROM JOB_HISTORY) AS AVG_YEARS_OF_SERVICE
FROM JOB_HISTORY