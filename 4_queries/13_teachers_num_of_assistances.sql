SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY teachers.name, cohorts.name
HAVING cohorts.name = 'JUL02'
ORDER BY teachers.name;