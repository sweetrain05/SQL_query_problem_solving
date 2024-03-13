-- https://leetcode.com/problems/primary-department-for-each-employee/description/?envType=study-plan-v2&envId=top-sql-50

-- Solution #1 using UNION
select employee_id, department_id 
from Employee
where primary_flag = 'Y'
union
	select employee_id, department_id 
	from Employee
	group by employee_id
	having count(department_id) = 1

-- Solution #2 using subquery
select employee_id, department_id
from Employee
where primary_flag = 'Y'
	OR employee_id IN (
		select employee_id
		from Employee
		group by employee_id
		having count(department_id) = 1
	)