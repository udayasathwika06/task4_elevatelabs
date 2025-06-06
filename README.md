# task4_elevatelabs
# SQL Data Analysis Project — E-commerce Dataset

## 📝 Objective
To extract and analyze meaningful insights from an eCommerce dataset using SQL queries and best practices.

---

## 🛠 Tools Used
- **PostgreSQL** (can also use MySQL or SQLite)
- **pgAdmin** or any SQL editor
- **Spreadsheet software** for CSV view (Excel, Google Sheets)
- **Screenshot tool** for output validation

---

## 📁 Dataset Structure

The dataset consists of four related tables:

### 1. `customers`
| Column Name   | Data Type |
|---------------|-----------|
| customer_id   | INT       |
| first_name    | VARCHAR   |
| last_name     | VARCHAR   |
| country       | VARCHAR   |

### 2. `products`
| Column Name   | Data Type |
|---------------|-----------|
| product_id    | INT       |
| product_name  | VARCHAR   |
| unit_price    | NUMERIC   |

### 3. `orders`
| Column Name   | Data Type |
|---------------|-----------|
| order_id      | INT       |
| customer_id   | INT       |
| order_date    | DATE      |
| total_amount  | NUMERIC   |

### 4. `order_details`
| Column Name     | Data Type |
|-----------------|-----------|
| order_detail_id | INT       |
| order_id        | INT       |
| product_id      | INT       |
| quantity        | INT       |

---

## 📌 Tasks Completed

### ✅ Table Creation
- Created all 4 tables using `CREATE TABLE` syntax
- Included `PRIMARY KEY` and `FOREIGN KEY` constraints

### ✅ Data Import
- Imported CSV data into each table
- Verified using basic `SELECT *` queries

### ✅ Basic Queries
- `SELECT`, `WHERE`, `ORDER BY` to filter and sort results

### ✅ Aggregation & Grouping
- Used `SUM`, `AVG`, `COUNT` with `GROUP BY`

### ✅ Joins
- Performed `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` between related tables

### ✅ Subqueries
- Used subqueries to filter based on aggregated conditions

### ✅ Views
- Created views like `high_value_orders` and `customer_spending` for better analysis

### ✅ Indexes
- Created indexes on `customer_id` and `product_id` to improve query performance

---

## 📸 Output Verification
Refer to the file [`queryoutputs_screenshots.pdf`](queryoutputs_screenshots.pdf) for screenshots of query outputs.

---

## 📂 Files Included
| File Name                      |          Description                             |
|--------------------------------|--------------------------------------------------|
| `ecommerce_datset.zip`         | Compressed dataset (CSV/SQLite)                  |
| `SQL_queries_task4.sql`        | SQL queries for all tasks                        |
| `queryoutputs_screenshots.pdf` | Output screenshots of executed queries           |
| `README.md`                    | This documentation                               |

---

## 🧠 Learnings
- Hands-on practice with relational database design
- Writing efficient SQL queries
- Working with real-world eCommerce data
- Creating views and optimizing queries with indexes

---

## ✅ How to Run This Project
1. Extract `ecommerce_datset.zip`
2. Open your PostgreSQL environment
3. Run `SQL_queries_task4.sql` step-by-step
4. Review outputs to match the screenshots

---

## 🔚 Conclusion
This project showcases data extraction, joining, filtering, and analytical querying using SQL. It provides valuable insight into managing and analyzing structured business data.

