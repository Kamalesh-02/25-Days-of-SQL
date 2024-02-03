# Write your MySQL query statement below

SELECT 'Low Salary' category,sum(if(income<20000,1,0)) accounts_count FROM accounts
UNION 
SELECT 'Average Salary' category,sum(if(income between 20000 and 50000,1,0)) accounts_count FROM accounts
UNION 
SELECT 'High Salary' category,sum(if(income>50000,1,0)) accounts_count FROM accounts
