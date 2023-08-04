-- SQL Query to calculate monthly revenue by product category for the past year
SELECT
    DATEPART(MONTH, sale_date) AS month,
    product_category,
    SUM(sale_amount) AS revenue
FROM
    sales_table
WHERE
    sale_date >= DATEADD(YEAR, -1, GETDATE())
GROUP BY
    DATEPART(MONTH, sale_date),
    product_category
ORDER BY
    DATEPART(MONTH, sale_date),
    product_category;
