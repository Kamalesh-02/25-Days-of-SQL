# Write your MySQL query statement below

SELECT query_name, ROUND(AVG(rating/position),2) AS quality,
ROUND(SUM(rating<3)/count(*) * 100,2)  AS poor_query_percentage 
FROM queries WHERE query_name IS NOT NULL
GROUP BY query_name

/*This MySQL query calculates the average quality and the percentage of poor queries for each distinct query name in the "queries" table. 
It selects "query_name," the rounded average of the ratio of "rating" to "position" as "quality," and the rounded percentage of queries with a rating less than 3 as "poor_query_percentage." 
The results are grouped by "query_name," excluding rows where "query_name" is NULL.*/






