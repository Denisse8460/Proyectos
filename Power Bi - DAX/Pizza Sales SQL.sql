--select * from pizza_sales
--select sum(total_price) as Total_Revenue from pizza_sales

USE Pizza_DB;
GO
--localhost\SQLEXPRESS
select * from pizza_sales 

select sum(total_price) / count (Distinct order_id) as Avg_order_Value from pizza_sales

select sum (quantity) As Total_Pizza_Sold from pizza_sales

select count (distinct order_id) as Total_Order from pizza_sales

select cast(cast( sum(quantity) as decimal (10,2)) / 

cast (count (distinct order_id) as decimal (10,2)) as decimal (10,2)) as Avg_Pizza_Per_Order from pizza_sales

select datename(DW, order_date) as Order_day, COUNT (Distinct order_id) as Total_orders from pizza_sales group by DATENAME (DW, order_date)

select DATENAME(MONTH, order_date) as Month_Name, COUNT(DISTINCT order_id) as Total_Orders from pizza_sales
GROUP BY DATENAME(MONTH, order_date)
order by Total_Orders DESC

select pizza_category,sum(total_price) as Total_Sales, sum(total_price) * 100 / 
(select sum (total_price) from pizza_sales where month (order_date)=1) As PCT 
from pizza_sales
where month (order_date) =1
group by pizza_category

select pizza_size, CAST (sum(total_price) AS DECIMAL (10,2)) as Total_Sales, CAST (sum(total_price) * 100 / 
(select sum (total_price) from pizza_sales) as decimal (10, 2)) As PCT 
from pizza_sales
Where DATEPART (quarter, order_date) =1
group by pizza_size
order by PCT DESC

select TOP 5 pizza_name, sum (total_price) as Total_Revenue from pizza_sales 
group by pizza_name
order by Total_Revenue asc

select TOP 5 pizza_name, sum (quantity) as Total_Quantity from pizza_sales 
group by pizza_name
order by Total_Quantity asc

select TOP 5 pizza_name, COUNT (DISTINCT order_id) as Total_Quantity from pizza_sales 
group by pizza_name
order by Total_Quantity asc