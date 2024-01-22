# Write your MySQL query statement below

SELECT user_id,
ROUND(AVG(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END),2) as confirmation_rate
FROM confirmations
RIGHT JOIN signups USING (user_id)
GROUP BY user_id

/*This MySQL query calculates the confirmation rate for each user by joining the "confirmations" table with the "signups" table using the "user_id." 
It uses a RIGHT JOIN to include all signups, even those without corresponding confirmations. The ROUND function is applied to the average confirmation status, and the result is grouped by "user_id." 
The final output includes "user_id" and "confirmation_rate."*/