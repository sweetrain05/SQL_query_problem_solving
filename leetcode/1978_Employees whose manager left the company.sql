-- https://leetcode.com/problems/employees-whose-manager-left-the-company/description/?envType=study-plan-v2&envId=top-sql-50

select employee_id
from Employees
where manager_id not in (select employee_id from Employees)
    and salary < 30000
order by employee_id


-- Using column number to order by:
-- order by number selects column from SELECT columns by index starting from 1 
select employee_id
from Employees
where manager_id not in (select employee_id from Employees)
    and salary < 30000
order by 1