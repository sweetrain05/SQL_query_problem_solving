-- https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description/?envType=study-plan-v2&envId=top-sql-50



select 
    e1.employee_id, 
    e1.name, 
    count(e2.employee_id) as reports_count, 
    round(sum(e2.age) / count(e2.age)) as average_age
from Employees e1
inner join Employees e2
on e1.employee_id = e2.reports_to
group by e1.employee_id
order by e1.employee_id


-- Solution: more readable code by naming the same table with different names
select 
	mgr.employee_id, 
	mgr.name, 
	COUNT(emp.employee_id) as reports_count, 
	ROUND(AVG(emp.age)) as average_age
from employees mgr
join employees emp
on mgr.employee_id = emp.reports_to
group by employee_id
order by employee_id