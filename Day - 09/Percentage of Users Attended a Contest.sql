# Write your MySQL query statement below

SELECT contest_id, ROUND(COUNT(user_id)*100.00/(SELECT COUNT(*) FROM users),2) AS percentage
FROM register
GROUP BY contest_id  
ORDER BY percentage DESC, contest_id;

/*This MySQL query calculates the percentage of users registered for each contest in the "register" table. 
It selects "contest_id" and calculates the percentage using the COUNT of user IDs divided by the total count of users in the subquery. 
The ROUND function is applied to the percentage, and the result is grouped by "contest_id." 
The final output is ordered by percentage in descending order and then by "contest_id" in ascending order.*/






