# Write your MySQL query statement below

SELECT product_id,year AS first_year,quantity, price 
FROM Sales WHERE (product_id,year) IN
(SELECT product_id, MIN(year) 
FROM Sales 
GROUP BY product_id)

/*This MySQL query selects columns "product_id," "year" as "first_year," "quantity," and "price" from the "Sales" table. 
It retrieves records where the combination of "product_id" and "year" is in the set of minimum years for each "product_id" as calculated in the subquery. 
The subquery finds the minimum year for each product and groups the result by "product_id."*/






