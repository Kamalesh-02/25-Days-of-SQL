# Write your MySQL query statement below

SELECT (ROUND(SUM(CASE WHEN order_date = customer_pref_delivery_date THEN 1 ELSE 0 END) / COUNT(*),4)*100) 
AS immediate_percentage
FROM Delivery 
WHERE (customer_id, order_date) IN (SELECT customer_id, MIN(order_date) 
FROM Delivery
GROUP BY customer_id);

/*This MySQL query calculates the percentage of immediate deliveries for each customer in the "Delivery" table. 
It compares the "order_date" with the "customer_pref_delivery_date" and calculates the percentage of immediate deliveries. 
The subquery finds the earliest order date for each customer. The final result is a rounded percentage named "immediate_percentage."*/







