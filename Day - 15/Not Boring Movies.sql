# Write your MySQL query statement below

SELECT * 
FROM Cinema 
WHERE id%2 = 1 and description != "boring"
ORDER BY rating DESC;

/*This MySQL query selects all columns from the "Cinema" table where the ID is odd (not divisible by 2) and the description is not equal to "boring." 
The results are then ordered by the "rating" column in descending order.*/






