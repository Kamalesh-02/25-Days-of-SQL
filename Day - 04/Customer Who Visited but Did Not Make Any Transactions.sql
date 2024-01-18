# Write your MySQL query statement below

SELECT V.customer_id, COUNT(V.visit_id) AS count_no_trans
FROM Visits V
LEFT JOIN Transactions T ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id;

/*This MySQL query selects "customer_id" and the count of non-matching transactions ("count_no_trans") from the "Visits" table (aliased as "V"). 
It uses a left join with the "Transactions" table (aliased as "T") on the "visit_id" and filters for cases where there is no matching transaction. 
The result is grouped by "customer_id."*/






