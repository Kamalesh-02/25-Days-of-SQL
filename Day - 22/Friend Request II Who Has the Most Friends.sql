# Write your MySQL query statement below

WITH cte_unionall AS(
SELECT requester_id AS id
FROM RequestAccepted

UNION ALL

SELECT accepter_id AS id
FROM RequestAccepted
)
, cte_count AS(
SELECT id, count(id) num
FROM cte_unionall
GROUP BY 1
)
SELECT id, num
FROM cte_count
ORDER BY num DESC
LIMIT 1