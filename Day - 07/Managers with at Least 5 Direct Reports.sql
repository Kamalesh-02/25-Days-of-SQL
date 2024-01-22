# Write your MySQL query statement below

SELECT e1.name
FROM Employee AS e1
INNER JOIN Employee AS e2 ON e1.id=e2.managerId 
GROUP BY e2.managerId 
HAVING COUNT(e2.managerId) >= 5

/*This MySQL query selects the names of employees (aliased as "e1") who are managers (have employees reporting to them). 
It uses an INNER JOIN with the "Employee" table (aliased as "e2") based on matching manager IDs. 
The result is grouped by manager ID from "e2," and the HAVING clause ensures that only those managers with at least 5 direct reports are included in the final result.*/






