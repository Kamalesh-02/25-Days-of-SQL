# Write your MySQL query statement below

SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM activity
WHERE DATEDIFF('2019-07-27',activity_date) < 30
AND activity_date <= '2019-07-27'
GROUP BY activity_date

/*This MySQL query counts the number of distinct active users for each day within the last 30 days leading up to '2019-07-27' in the "activity" table.
 It selects the "activity_date" as "day" and counts the distinct "user_id" for each day. 
 The results are grouped by "activity_date."*/






