-- https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50

-- using IF(condition, true, false)
select 
    query_name, 
    round(avg(rating / position), 2) as quality,
    round(sum(IF(rating < 3, 1, 0)) / count(*) * 100, 2) as poor_query_percentage
from Queries
where query_name IS NOT NULL
group by query_name

-- using CASE WHEN ~ THEN ~ ELSE ~ END
select 
    query_name, 
    round(avg(rating / position), 2) as quality,
    round(sum(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / count(*) * 100, 2) as poor_query_percentage
from Queries
where query_name IS NOT NULL
group by query_name