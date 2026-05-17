# E-COMMERCE_SALES_ANALYSIS
SQL E-Commerce Sales Analysis project using MySQL to analyze sales, profit, customers, and regional performance.
# SQL E-Commerce Sales Analysis

## Project Overview
This project focuses on analyzing E-Commerce sales data using SQL and MySQL. The objective was to explore sales performance, customer behavior, profitability, and regional trends to generate meaningful business insights.

The project demonstrates practical SQL skills including data analysis, aggregation, filtering, grouping, and business reporting.

---

## Tools & Technologies Used
- MySQL
- MySQL Workbench
- SQL
- CSV Dataset

---

## Dataset Information
The dataset contains 5000+ sales records with fields such as:

- Order ID
- Customer Name
- Product Category
- Product Name
- Sales
- Quantity
- Profit
- Discount
- Region

---

## Project Objectives
- Analyze total sales and profits
- Identify top-performing regions
- Find high-value customers
- Detect loss-making products
- Generate business insights using SQL queries

---

## SQL Concepts Used
- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- Aggregate Functions
- Window Functions
- RANK()

---

## Sample SQL Queries

### Total Sales
```sql
SELECT SUM(sales) AS total_sales 
FROM sales;
```

### Sales by Region
```sql
SELECT region, SUM(sales)
FROM sales
GROUP BY region;
```

### Top Customers
```sql
SELECT customer_name, SUM(sales)
FROM sales
GROUP BY customer_name
ORDER BY SUM(sales) DESC;
```

---

## Key Business Insights
- West region generated strong sales performance
- Technology category produced high profit
- Some products created losses despite sales volume
- Top customers contributed major revenue

---

## Files Included
- `ecommerce sales analysis.sql` → SQL queries
- `ecommerce_sales_dataset.csv` → Dataset
- `sql_project_guide.docx` → Project documentation
- `sql_project_interview_guide.docx` → Interview preparation guide

---

## How to Run the Project
1. Install MySQL Workbench
2. Create a database
3. Import the CSV dataset
4. Run the SQL queries
5. Analyze outputs and business insights

---

## Author
**Obaid Vadaliwala**
