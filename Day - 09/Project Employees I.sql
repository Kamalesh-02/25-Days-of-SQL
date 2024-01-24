# Write your MySQL query statement below

SELECT p.project_id, ROUND(AVG(e.experience_years),2) AS average_years
FROM Project p 
INNER JOIN Employee e 
ON p.employee_id = e.employee_id
GROUP BY project_id

/*This MySQL query calculates the average number of years of experience for each project. 
It selects the "project_id" from the "Project" table (aliased as "p") and uses an INNER JOIN with the "Employee" table (aliased as "e") based on matching employee IDs. 
The ROUND function is applied to the average experience years, and the result is grouped by "project_id." 
The alias "average_years" is given to the calculated average.*/






