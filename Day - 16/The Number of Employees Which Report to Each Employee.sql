# Write your MySQL query statement below

SELECT e1.employee_id, 
       e1.NAME, 
       Count(e2.reports_to)  AS reports_count, 
       Round(Avg(e2.age), 0) AS average_age 
FROM   employees e1 
       INNER JOIN employees e2 
               ON e1.employee_id = e2.reports_to 
GROUP  BY e1.employee_id, 
          e1.NAME 
ORDER  BY 1 ASC; 

/*This MySQL query retrieves information about employees and their reports. 
It selects the "employee_id," "name," counts the number of reports for each employee, and calculates the average age of their reports. 
The results are grouped by "employee_id" and "name" and ordered by "employee_id" in ascending order. 
The alias "reports_count" is given to the count of reports, and the alias "average_age" is given to the rounded average age.*/






