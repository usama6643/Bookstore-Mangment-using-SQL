
# 📚 Bookstore Management & Analytics System (SQL)

## 📌 Project Overview
This project focuses on building and analyzing a Relational Database for a Online/Retail Bookstore using **PostgreSQL / SQL**. The database manages core business entities such as **Books** and **Customers**, allowing the business to keep track of inventory metrics, pricing analysis, and customer demographics.

The main objective is to solve crucial business problems and operational questions using advanced SQL querying, data aggregation, and filtering techniques.

## 🗂️ Database Schema & Architecture
The project utilizes two primary operational tables:
* **Books Table:** Contains book metadata including Title, Author, Genre, Publication Year, Price, and Stock Levels.
* **Customers Table:** Contains demographic info including Customer Name, Email, Location (City, Country).

---

## 🚀 Key Business Problems Solved (SQL Capabilities)
The analysis script successfully delivers data-driven insights for the following management queries:

### 📊 Inventory & Demographics Analysis
* **Total Inventory Volume:** Counts total available titles.
* **Low Stock Alerts:** Identifies high-risk books with stock levels falling below 10 units.
* **Historical Distribution:** Isolates vintage titles vs modern releases (Post-2000).

### 💰 Financial & Pricing Insights
* **Average Book Costing:** Provides statistical mean of pricing structures using `ROUND()`.
* **Outlier Tracking:** Finds absolute maximum and minimum product costs using `LIMIT` and `ORDER BY`.

### 🎯 Segmentation & Categorization
* **Genre Analysis:** Groups books dynamically and isolates major genres with heavy volumes using `HAVING` filters.
* **Geographical Demographics:** Maps international customer density across global regions.

---

## 🛠️ How to Run This Project
1. Clone this repository to your local system.
2. Open your preferred SQL database management tool (e.g., pgAdmin, DBeaver, or MySQL Workbench).
3. Copy the script from `bookstore_analysis.sql` and run it to setup the tables and fetch insights.
