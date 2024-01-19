# Write your MySQL query statement below

SELECT machine_id, 
ROUND(SUM(IF(activity_type='start',-timestamp,timestamp)) / COUNT(DISTINCT process_id), 3) as processing_time
FROM Activity
GROUP BY machine_id
ORDER BY machine_id

/*This MySQL query calculates the average processing time for each machine in the "Activity" table. 
It subtracts the timestamp for 'start' activities and adds the timestamp for other activities, then divides the result by the count of distinct process IDs. 
The ROUND function is used to round the result to three decimal places. The final result is grouped by "machine_id" and ordered by "machine_id."*/






