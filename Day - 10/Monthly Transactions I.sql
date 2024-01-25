# Write your MySQL query statement below

SELECT DATE_FORMAT(trans_date,"%Y-%m") as month, 
country, 
COUNT(trans_date) AS trans_count, 
SUM(IF(state = 'approved', 1, 0)) AS approved_count, 
SUM(amount) AS trans_total_amount,
SUM(IF(state = 'approved', amount, 0)) AS approved_total_amount
FROM Transactions
GROUP BY month,country

/*This MySQL query extracts the year and month from the "trans_date" column, and then aggregates transaction information by month and country in the "Transactions" table. 
It includes counts of total transactions, approved transactions, and sums of total and approved transaction amounts. 
The results are grouped by the combination of "month" and "country."*/






