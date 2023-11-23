create trigger credits_earned after update of takes on (grade)
referencing new row as nrow
referencing old row as orow
for each row 
	when nrow.grade <> 'F' and nrow.grade is not null
		and (orow.grade = 'F' or orow.grade is null)
		begin atomic
				update student
				set tot_cred = tot_cred+
				(select credits
						from course
						where course.course_id = nrow.course_id)
				where stuedent.id = nrow.id;

		end;

