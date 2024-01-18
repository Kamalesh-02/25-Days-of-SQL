# Write your MySQL query statement below

SELECT p.product_name, s.year, s.price
FROM Sales s 
JOIN Product p ON s.product_id = p.product_id

/*This MySQL query selects "product_name" from the "Product" table (aliased as "p"), and "year" and "price" from the "Sales" table (aliased as "s"). 
It uses a join where the "product_id" in the "Sales" table matches the "product_id" in the "Product" table.*/