
-- https://leetcode.com/problems/rising-temperature/?envType=study-plan-v2&envId=top-sql-50

-- Solution using DATEDIFF():
SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w2.recordDate, w1.recordDate) = -1
	AND w1.temperature > w2.temperature


-- Solution using ADDDATE():
-- ADDDATE(date, INTERVAL expr type)
SELECT w1.id
FROM weather w1
JOIN weather w2 
ON w1.recordDate = ADDDATE(w2.recordDate, INTERVAL 1 DAY) 
 	AND w1.temperature > w2.temperature