use ecommerce_project;
	CREATE TABLE sales (
    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2)
);
select * from sales
limit 10;

select round(sum(sales),2) as total_sales
from sales;

select round(sum(profit),2) as total_profit
from sales;

select count(distinct order_id) as total_orders
from sales;

-- region wise sales

select region, round(sum(sales),2) as total_sales
from sales
group by region
order by total_sales desc;

-- category wise profit

select category, round(sum(profit),2) as total_profit
from sales
group by category
order by total_profit desc;

-- top products

select product_name, round(sum(sales),2) as revenue
from sales
group by product_name
order by revenue desc
limit 10;

-- loss making products

select product_name, round(sum(profit),2) as total_profit
from sales
group by product_name
order by total_profit asc
limit 10;

-- customer ranking

select customer_name, round(sum(sales),2) as spending,
rank() over(order by sum(sales) desc) as customer_rank
from sales
group by customer_name;
