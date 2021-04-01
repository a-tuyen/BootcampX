SELECT id, name, email, cohort_id
FROM students
WHERE github IS NULL
ORDER BY cohort_id;


-- SELECT students.name as student_name, students.start_date as student_start_date, cohorts.name as cohort_name, cohorts.start_date as cohort_start_date
-- FROM students 
-- JOIN cohorts ON cohorts.id = cohort_id
-- WHERE students.start_date != cohorts.start_date
-- ORDER BY cohorts.start_date;


-- SELECT students.name as student, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.end_date IS NULL
-- GROUP BY students.name
-- HAVING count(assignment_submissions.*) < 100;