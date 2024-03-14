-- https://leetcode.com/problems/percentage-of-users-attended-a-contest/description/?envType=study-plan-v2&envId=top-sql-50

select 
    contest_id, 
    ROUND(COUNT(user_id) / (select COUNT(user_id) from Users) * 100, 2) as percentage
from Register
group by contest_id 
order by percentage DESC, contest_id ASC