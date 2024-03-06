-- https://leetcode.com/problems/project-employees-i/description/?envType=study-plan-v2&envId=top-sql-50

select 
	p.project_id, 
	ROUND(AVG(e.experience_years), 2) as average_years
from project p
join employee e
on p.employee_id = e.employee_id
group by p.project_id