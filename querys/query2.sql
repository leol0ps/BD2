with t1 as (
   select r.course_id
   from prereq r join prereq as s ON r.prereq_id = s.course_id
   where s.prereq_id = 'MAT15936')
select title
from t1 JOIN course c ON t1.course_id = c.course_id
