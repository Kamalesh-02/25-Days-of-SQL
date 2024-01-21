# Write your MySQL query statement below

SELECT stu.student_id, stu.student_name, sub.subject_name, COUNT(e.subject_name) attended_exams
FROM students stu
CROSS JOIN subjects sub
LEFT JOIN examinations e
ON stu.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY stu.student_id, stu.student_name, sub.subject_name
ORDER BY stu.student_id, sub.subject_name;

/*This MySQL query retrieves information about student attendance in exams. 
It selects "student_id," "student_name," "subject_name," and the count of attended exams ("attended_exams"). It performs a cross join between the "students" and "subjects" tables and then left joins the "examinations" table to capture attended exams. 
The result is grouped by student ID, student name, and subject name, and it's ordered by student ID and subject name.*/