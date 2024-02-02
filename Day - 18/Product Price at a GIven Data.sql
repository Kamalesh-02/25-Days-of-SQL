WITH
    T AS (SELECT DISTINCT product_id FROM Products),
    P AS (
        SELECT product_id, new_price AS price
        FROM Products
        WHERE
            (product_id, change_date) IN (
                SELECT product_id, MAX(change_date) AS change_date
                FROM Products
                WHERE change_date <= '2019-08-16'
                GROUP BY 1
            )
    )
SELECT product_id, IFNULL(price, 10) AS price
FROM
    T
    LEFT JOIN P USING (product_id);

/*This SQL query performs the following tasks:

Creates a common table expression (CTE) named T that selects distinct product IDs from the "Products" table.

Creates another CTE named P that selects the latest price for each product based on the maximum change date before or equal to '2019-08-16'.

Selects the product IDs and prices from the CTEs, using a left join to handle cases where there might be missing prices.

Uses the IFNULL function to replace null prices with a default value of 10.

In summary, the query retrieves the latest prices for each product up to a specified date and, if available, otherwise defaults to a price of 10.*/





