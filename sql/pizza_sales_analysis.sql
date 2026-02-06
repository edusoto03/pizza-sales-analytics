--- Purpose: SQL queries used to generate KPIs and charts for the Pizza Sales Tableau dashboards ---

SELECT * FROM pizza_sales

---- HOURLY TREND FOR TOTAL PIZZAS SOLD----
SELECT DATEPART(HOUR, order_time) as order_hour, SUM(quantity) as Total_Pizzas_Sold
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time)

---- WEEKLY TREND FOR TOTAL ORDERS----
SELECT DATEPART(ISO_WEEK,order_date) AS Week_Number, YEAR(order_date) AS Order_Year,
COUNT(DISTINCT order_id) as Total_Orders FROM pizza_sales
GROUP BY DATEPART(ISO_WEEK,order_date), YEAR(order_date)
ORDER BY DATEPART(ISO_WEEK,order_date), YEAR(order_date)

---- PERCENTAGE OF SALES BY PIZZA CATEGORY ----
SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category

---- PERCENTAGE OF SALES BY PIZZA SIZE ----
SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size

---- TOTAL PIZZAS SOLD BY PIZZA CATEGORY ---- 
SELECT pizza_category, SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY Total_Pizzas_Sold DESC

----- TOP 5 BEST SELLING PIZZAS BY REVENUE ----
SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC

----- BOTTOM 5 WORST SELLING PIZZAS BY REVENUE ----
SELECT TOP 5 pizza_name, SUM(total_price) AS Total_Revenue FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC

---- TOP 5 BEST SELLING PIZZAS BY QUANTITY ----
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizzas_Sold FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizzas_Sold DESC

---- BOTTOM 5 WORST SELLING PIZZAS BY QUANTITY ----
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizzas_Sold FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizzas_Sold ASC


---- TOP 5 BEST SELLING PIZZAS BY TOTAL ORDERS ----
SELECT TOP 5 pizza_name, COUNT(DISTINCT(order_id)) AS Total_Pizzas_Ordered FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizzas_Ordered DESC

---- BOTTOM 5 WORST SELLING PIZZAS BY TOTAL ORDERS ----
SELECT TOP 5 pizza_name, COUNT(DISTINCT(order_id)) AS Total_Pizzas_Ordered FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizzas_Ordered ASC