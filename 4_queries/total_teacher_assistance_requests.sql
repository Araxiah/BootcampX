-- select name, count(assistance_requests.*) as total_assistances
-- from teachers 
-- join assistance_requests on teacher_id = teachers.id
-- group by teachers.name;

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;
