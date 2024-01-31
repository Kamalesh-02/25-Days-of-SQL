# Write your MySQL query statement below

SELECT customer_id
FROM   customer
GROUP  BY customer_id
HAVING Count(DISTINCT product_key) = (SELECT
       Count(DISTINCT product_key) AS totl_prdct
                                      FROM   product)

/*This MySQL query selects unique "customer_id" values from the "customer" table. 
It groups the results by "customer_id" and filters the groups using the HAVING clause. 
The HAVING clause ensures that only those groups where the count of distinct "product_key" is equal to the total count of distinct "product_key" in the entire "product" table are included in the final result.*/





