SELECT students.name as student, avg(assignment_submissions.duration) as personal_completion_time, avg(assignments.duration) as suggested_completion_time
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY suggested_completion_time;