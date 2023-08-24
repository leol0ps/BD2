with x1 as (select prereq_id as course_id 
from prereq
where course_id = 'ELE16191')
select *
from prereq
where course_id in (select * from x1);

select title
from prereq join course ON prereq_id = course.course_id
where prereq.course_id = 'ELE16191'
