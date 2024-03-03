-- https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/?envType=study-plan-v2&envId=top-sql-50

-- 1. select activity_date and filter out dates and group by activity_date 
-- 2. count number of unique user_id for each activity_date

-- Solution #1 using inequality signs
select 
	activity_date as day, 
	count(distinct user_id) as active_users 
from Activity
where activity_date > '2019-06-27' and activity_date <= '2019-07-27'
group by activity_date


-- Solution #2 using Between
select 
	activity_date as day, 
	count(distinct user_id) as active_users 
from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date


-- Solution #3 using DateDiff
select 
	activity_date as day, 
	count(distinct user_id) as active_users 
from Activity
where datediff('2019-07-27', activity_date) between 0 and 29
group by activity_date