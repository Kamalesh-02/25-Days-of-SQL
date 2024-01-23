# Write your MySQL query statement below

SELECT p.product_id, 
IFNULL(ROUND(SUM(price * units) / SUM(units), 2), 0) AS average_price
FROM Prices AS p
LEFT JOIN UnitsSold AS u
ON p.product_id = u.product_id AND purchase_date BETWEEN start_date AND end_date
GROUP BY 1;

/*This MySQL query calculates the average price for each product based on the "Prices" and "UnitsSold" tables. 
It uses a LEFT JOIN on the "product_id" and filters by the "purchase_date" falling within a specified range.
The ROUND function is applied to the average price, and IFNULL ensures that if there are no matching sales, the average price is set to 0. 
The result is grouped by "product_id."*/







