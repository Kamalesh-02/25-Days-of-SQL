# Write your MySQL query statement below

SELECT class 
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5

/*This MySQL query selects distinct "class" values from the "Courses" table. 
It groups the results by "class" and includes only those classes where the count of students is equal to or greater than 5, using the HAVING clause.*/


