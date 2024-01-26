# Write your MySQL query statement below

SELECT ROUND(COUNT(DISTINCT player_id) / (SELECT COUNT( DISTINCT player_id) FROM Activity),2) AS fraction
FROM Activity
WHERE (player_id, DATE_SUB(event_date, INTERVAL 1 DAY)) IN (SELECT player_id, MIN(event_date)
FROM Activity
GROUP BY player_id)

/*This MySQL query calculates the fraction of players who played on the day after their earliest activity in the "Activity" table.
It counts the distinct player IDs meeting the condition and divides it by the total count of distinct player IDs. 
The subquery finds the earliest event date for each player. The result is a rounded fraction named "fraction."*/







