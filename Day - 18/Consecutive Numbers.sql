# Write your MySQL query statement below

SELECT DISTINCT l1.Num  as ConsecutiveNums
FROM Logs l1, Logs l2, Logs l3  
WHERE l1.Id + 1 = l2.Id AND l2.Id + 1 = l3.Id AND l1.Num = l2.Num AND l2.Num = l3.Num

/*This MySQL query selects distinct values from the "Num" column in the "Logs" table where there are three consecutive rows with the same "Num" value. 
It checks for consecutive IDs and matching "Num" values in the conditions specified in the WHERE clause.*/





