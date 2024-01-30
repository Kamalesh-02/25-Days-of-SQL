# Write your MySQL query statement below

SELECT user_id,
ROUND(AVG(CASE WHEN action = 'confirmed' THEN 1 ELSE 0 END),2) as confirmation_rate
FROM confirmations
RIGHT JOIN signups USING (user_id)
GROUP BY user_id

/*This MySQL query calculates the confirmation rate for each user who signed up by performing a RIGHT JOIN between the "confirmations" and "signups" tables using the "user_id." 
It calculates the average confirmation rate, rounding it to two decimal places, and groups the results by "user_id." 
The result includes columns for "user_id" and "confirmation_rate."*/






