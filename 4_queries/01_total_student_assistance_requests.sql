SELECT COUNT(assistance_requests.*) AS total_assistance,
students.name AS student
FROM assistance_requests JOIN students
ON assistance_requests.student_id=students.id 
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;