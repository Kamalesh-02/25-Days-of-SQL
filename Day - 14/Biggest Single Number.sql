# Write your MySQL query statement below

SELECT MAX(num) AS num
FROM  (
    SELECT num 
    FROM MyNumbers 
    GROUP BY num 
    HAVING COUNT(*) = 1)
AS SingleNum

/*This MySQL query selects the maximum value from a subquery that retrieves unique numbers ("num") from the "MyNumbers" table where each number occurs only once (COUNT equals 1). 
The subquery uses GROUP BY and HAVING clauses to filter for unique numbers. 
The outer query then selects the maximum value from these unique numbers, aliasing it as "num."*/





