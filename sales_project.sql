SELECT * FROM cst_data LIMIT 10;

SELECT * FROM order_data LIMIT 10;

DESCRIBE order_data;

## Changing the data type of "order_date" & "ship_date" columns from VARCHAR to DATE.
UPDATE order_data
    SET order_date = CASE 
    WHEN order_date LIKE '%/%' THEN str_to_date(order_date, '%m/%d/%Y')
    ELSE NULL
END;

ALTER TABLE order_data
MODIFY COLUMN  order_date DATE;

UPDATE order_data
    SET ship_date = CASE 
    WHEN ship_date LIKE '%/%' THEN str_to_date(ship_date, '%m/%d/%Y')
    ELSE NULL
END;

ALTER TABLE order_data
MODIFY COLUMN  ship_date DATE;

DESCRIBE order_data;

-- The answers of the Generic Questions:
-- 1- How many unique cities does the data have?
SELECT 
    COUNT(DISTINCT city) AS Number_of_unique_cities
FROM CST_data;

-- 2- How many unique categories does the data have?
SELECT 
    COUNT(DISTINCT category) AS Number_of_unique_categories
FROM order_data;

SELECT 
    category,
    COUNT(DISTINCT category) AS Number_of_unique_categories
FROM order_data
GROUP BY category;

-- The answers related to the Product:
-- 1- How many unique sub-category does the data have?
SELECT 
	COUNT(DISTINCT sub_category) AS Number_of_unique_sub_category
FROM order_data;

SELECT 
    sub_category,
    COUNT(DISTINCT sub_category) AS Number_of_unique_sub_category
FROM order_data
GROUP BY sub_category;

-- 2- What is the highest-selling category?
SELECT 
    category,
    SUM(Price) AS sum_of_the_sales
FROM order_data
GROUP BY category
ORDER BY sum_of_the_sales DESC;

-- 3- What is the highest-selling sub-category?
SELECT 
    sub_category,
    SUM(Price) AS sum_of_the_sales
FROM order_data
WHERE category = 'Office Supplies'
GROUP BY sub_category
ORDER BY sum_of_the_sales DESC;

-- 4- What is the total sales by Segment?
SELECT
    cd.segment,
    SUM(price) AS sum_of_the_sales
FROM 
    cst_data AS cd
INNER JOIN 
    order_data AS od
ON 
    cd.cst_id = od.cst_id
GROUP BY 
    cd.segment
ORDER BY 
    sum_of_the_sales DESC;
    
-- 5- What is the top 5 cities that have the largest revenue?
SELECT
    city,
    SUM(price) AS sum_of_the_sales
FROM 
    cst_data AS cd
INNER JOIN 
    order_data AS od
ON 
    cd.cst_id = od.cst_id
GROUP BY 
    cd.city
ORDER BY 
    sum_of_the_sales DESC
LIMIT 5;

-- 6- What is the most selling product?
SELECT
    item_name,
    SUM(price) AS sum_of_the_sales
FROM 
    cst_data AS cd
INNER JOIN 
    order_data AS od
ON 
    cd.cst_id = od.cst_id
GROUP BY 
    item_name
ORDER BY 
    sum_of_the_sales DESC
LIMIT 20;

-- 7- Fetch each product name and add a column to those product line showing "Good", "Bad". Good if its greater than average sales
SELECT 
    item_name, price, avg_price,
    CASE
        WHEN price > avg_price THEN 'Good'
        ELSE 'Bad'
    END AS good_or_bad
FROM ( SELECT item_name, AVG(price) OVER () AS avg_price, price FROM order_data) AS subquery
GROUP BY item_name, price
LIMIT 20;

-- The answers that related to the Sales
-- 1- What is the number of orders made per month, and which month has the highest number of orders?
-- In this question I created a new column called month_name and updated it based on the order_date
ALTER TABLE order_data
ADD COLUMN month_name VARCHAR(10);

UPDATE order_data
SET month_name = MONTHNAME(order_date);

SELECT * FROM order_data LIMIT 10;

SELECT
 month_name,
 COUNT(month_name) AS number_of_orders
FROM order_data
GROUP BY month_name
ORDER BY number_of_orders DESC;

-- 2- Which of the ship mode brings in the most revenue?
SELECT 
 ship_mode,
 SUM(price) AS sum_of_sales
FROM order_data
GROUP BY ship_mode
ORDER BY sum_of_sales DESC;

-- 3- Which Region has the lowest sales?
SELECT 
    region,
    SUM(price) AS sum_of_sales
FROM cst_data cd
INNER JOIN order_data od
ON cd.cst_id = od.cst_id
GROUP BY region
ORDER BY sum_of_sales ASC;

-- 4- What is the average pay for the customers in California, New York, and Texas?
SELECT
    state,
    AVG(price) AS avg_sales
FROM cst_data cd
INNER JOIN order_data od
ON cd.cst_id = od.cst_id
WHERE state IN ('California','New York','Texas')
GROUP BY state
ORDER BY state ASC;

-- The answers that related to the Customers
-- 1- How many unique customer names does the data have?
SELECT 
    COUNT(DISTINCT cst_name) AS number_of_unique_names
FROM cst_data;

-- 2- What segment of the customer has the highest count of orders?
SELECT
    segment,
    COUNT(segment) AS count_of_orders_per_segment
FROM cst_data
GROUP BY segment
ORDER BY count_of_orders_per_segment DESC;
