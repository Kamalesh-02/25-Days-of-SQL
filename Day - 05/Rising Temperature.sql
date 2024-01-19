# Write your MySQL query statement below

SELECT weather.id AS 'Id'
FROM weather
JOIN weather w 
ON DATEDIFF(weather.recorddate, w.recorddate) = 1
AND weather.Temperature > w.Temperature

/*This MySQL query selects the "id" from the "weather" table where the temperature on a specific date is higher than the temperature on the previous day. 
It uses a self-join with the "weather" table, comparing temperatures and dates using the DATEDIFF function.*/







