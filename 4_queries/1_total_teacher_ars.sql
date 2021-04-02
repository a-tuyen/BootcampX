SELECT name, count(assistance_requests.*) as total_ARs
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
GROUP BY teachers.name
HAVING teachers.name = 'Waylon Boehm';