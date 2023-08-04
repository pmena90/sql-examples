CREATE TABLE sales_table (
    sale_id INT PRIMARY KEY IDENTITY(1,1),
    sale_date DATE,
    product_category VARCHAR(50),
    sale_amount DECIMAL(10, 2)
);
