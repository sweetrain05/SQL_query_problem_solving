-- 1. Write a query that displays the average cost of rescuing a single dog. Note that the cost per dog would not be the same in different instances.
SELECT AVG(COST/QUANTITY) FROM PETRESCUE 
	WHERE ANIMAL = 'Dog';

-- 2. Write a query that displays the animal name in each rescue in uppercase without duplications.
SELECT DISTINCT UCASE(ANIMAL) FROM PETRESCUE;

-- 3. Write a query that displays all the columns from the PETRESCUE table where the animal(s) rescued are cats. Use cat in lowercase in the query.
SELECT * FROM PETRESCUE 
	WHERE LCASE(ANIMAL)="cat";

-- 4. Write a query that displays the number of rescues in the 5th month.
SELECT SUM(QUANTITY) FROM PETRESCUE 
	WHERE MONTH(RESCUEDATE)="05";

-- 5. The rescue shelter is supposed to find good homes for all animals within 1 year of their rescue. Write a query that displays the ID and the target date.
SELECT 
	ID, 
	date_add(RESCUEDATE, INTERVAL 1 year) as target_date 
from PETRESCUE