# Write your MySQL query statement below

SELECT e.name, b.bonus 
FROM employee AS e 
LEFT JOIN bonus b ON e.empid = b.empid 
WHERE bonus < 1000 OR bonus IS NULL

/*This MySQL query selects the "name" from the "employee" table (aliased as "e") and the "bonus" from the "bonus" table (aliased as "b"). 
It uses a LEFT JOIN to match records based on the "empid" and includes rows where the bonus is less than 1000 or where there is no matching bonus.*/