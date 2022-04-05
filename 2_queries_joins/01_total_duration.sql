SELECT SUM(duration) AS total_duration
FROM assignment_submissions 
JOIN students ON student_id=students.id
WHERE name LIKE 'Ibrahim Schimmel';