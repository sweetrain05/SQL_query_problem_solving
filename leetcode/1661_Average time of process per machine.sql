-- https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50

select 
    a1.machine_id, 
    ROUND(AVG(a2.timestamp - a1.timestamp), 3) as processing_time
from Activity a1
join Activity a2
where a1.machine_id = a2.machine_id 
    AND a1.process_id = a2.process_id
    AND a1.activity_type = 'start' 
    AND a2.activity_type = 'end' 
group by a1.machine_id



select 
    a1.machine_id, 
    ROUND(AVG(a2.timestamp - a1.timestamp), 3) as processing_time
from Activity a1
join Activity a2 
using (machine_id, process_id)
where 
    a1.activity_type = 'start' 
    AND a2.activity_type = 'end' 
group by a1.machine_id