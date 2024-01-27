# Write your MySQL query statement below

SELECT DISTINCT teacher_id, COUNT(DISTINCt subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id

/*This SQL query retrieves unique pairs of "teacher_id" and the count of distinct "subject_id" for each teacher from the "Teacher" table. 
It counts the number of unique subjects each teacher is associated with and displays the result for each teacher.*/






