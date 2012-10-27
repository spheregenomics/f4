// Course Table
select a.course_name, 
l1.lookup_text as "course_type", 
a.synopsis, 
l2.lookup_text as "course_language", 
l3.lookup_text as "status", 
l4.lookup_text as "target_level" 
from courses a, lookups l1, lookups l2, lookups l3, lookups l4
where l1.id = a.course_type
and l2.id = a.course_language
and l3.id = a.status
and l4.id = a.target_level

// Unit Table


// Lesson Table


