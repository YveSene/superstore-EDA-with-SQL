use superstore;

-- How many orders we have the last 4 years ?

SELECT COUNT(OrderID) as Total_Orders
FROM orders;

-- What was our sales ?

SELECT ROUND(SUM(Sales),2) as Total_Sales
FROM products;

-- How many profits did we make ?

SELECT ROUND(SUM(Profit),2) as Total_Profits
FROM products;

-- How many orders did we have each year ?

SELECT YEAR(OrderDate), COUNT(OrderId) as Total_orders_by_date
FROM orders
GROUP BY YEAR(OrderDate)
ORDER BY COUNT(OrderId) DESC;

-- How many products did we sell in each category?

SELECT Category, SUM(Quantity) as Total_product_by_category
FROM products
GROUP BY Category;

-- How many sales did we have in each category?

SELECT Category, ROUND(SUM(Sales),2) as Total_sales_by_category
FROM products
GROUP BY Category;

-- How many profits did we make in each category?

SELECT Category, ROUND(SUM(Profit),2) as Total_sales_by_category
FROM products
GROUP BY Category;

-- How many orders did we have in by state?

SELECT State,COUNT(OrderID) as Total_order_by_State
FROM shipping
GROUP BY State
ORDER BY COUNT(OrderID) DESC;

-- Top 10 products most sold

SELECT ProductName, SUM(Quantity) as Top_10_products_most_sold
FROM products
GROUP BY ProductName
ORDER BY SUM(Quantity) DESC
LIMIT 10;














