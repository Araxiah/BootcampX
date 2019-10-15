-- SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assigment, SUM(completed_at - started_at) AS duration
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN assignments ON assignments.id = assignment_id
-- JOIN students ON students.id = student_id
-- GROUP BY teachers.name, students.name, assignments.name,assistance_requests.completed_at
-- ORDER BY completed_at;

SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;