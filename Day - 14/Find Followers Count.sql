# Write your MySQL query statement below

SELECT user_id, COUNT(*) AS followers_count 
FROM Followers 
GROUP BY user_id
ORDER BY user_id

/*This MySQL query selects the "user_id" and the count of followers for each user from the "Followers" table. 
The results are grouped by "user_id" and ordered by "user_id" in ascending order. 
The count of followers is aliased as "followers_count."*/







