--https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50

select 
    s1.student_id, 
    s1.student_name,
    s2.subject_name,
    count(e.student_id) as attended_exams
from Students s1
cross join Subjects s2
left join Examinations e
    on e.student_id = s1.student_id and e.subject_name = s2.subject_name
group by s1.student_id, s1.student_name, s2.subject_name
order by student_id, subject_name