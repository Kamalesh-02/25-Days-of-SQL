# Write your MySQL query statement below

SELECT p.employee_id, p.department_id 
FROM Employee p 
LEFT JOIN 
(SELECT employee_id, count(employee_id)cnt 
FROM Employee 
GROUP BY employee_id)e 
ON p.employee_id=e.employee_id
WHERE p.primary_flag='Y' OR (p.primary_flag='N' AND e.cnt = 1)

/*This MySQL query selects "employee_id" and "department_id" from the "Employee" table based on certain conditions. 
It uses a LEFT JOIN with a subquery that counts the occurrences of each employee in the "Employee" table. 
The main query then filters for records where "primary_flag" is 'Y' or ('N' and the count from the subquery is 1). 
This allows for the selection of primary employees ('Y') and employees with only one occurrence ('N').*/





