select 
    case 
       when g.grade>=8 then s.name
        else null
    end
, g.grade, s.marks
from Students s left join Grades g
on s. marks between g.min_mark and g.max_mark
order by g.grade desc,s.name ,s.marks