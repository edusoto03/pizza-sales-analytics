# 🍕 Pizza Sales Analytics Case Study
SQL → KPIs → Tableau Dashboards

## Project Overview

This repository supports a **client-style analytics case study** for a pizza shop seeking to better understand sales performance, customer demand, and menu effectiveness.

Using one year of transactional sales data, SQL was used to aggregate and model key business metrics, which were then visualized through interactive Tableau dashboards to support data-driven decisions around staffing, promotions, pricing, and menu strategy.

👉 **Interactive dashboards (Tableau Public):**  
[https://public.tableau.com/views/PizzaSalesPerformanceDashboardSQLTableau/Home?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link]

---

## Business Objective

The objective of this analysis was to answer the following business questions:

- Which pizzas drive **revenue** versus **order volume**?
- When does **customer demand peak** by hour and by week?
- Which menu items consistently **underperform**?
- How does ordering behavior impact **average order value (AOV)**?

The goal was to move beyond reporting and deliver decision-ready insights, mirroring a real consulting or business intelligence engagement.

---

## Tools Used

- **SQL Server** – data aggregation and KPI calculations  
- **Tableau** – interactive dashboard design and storytelling  
- **Excel** – light data inspection and validation  

---

## Dataset Description

- One full year of pizza sales transaction data  
- Each row represents an order line item  
- Key fields include:
  - Order ID  
  - Order date and time  
  - Pizza name, category, and size  
  - Quantity sold  
  - Price  

---

## Data Preparation & SQL Analysis

SQL was used to transform raw transactional data into structured, analysis-ready datasets.

Key tasks included:
- Aggregating revenue, order counts, and quantities sold  
- Calculating core KPIs:
  - Total Revenue  
  - Total Orders  
  - Total Pizzas Sold  
  - Average Order Value (AOV)  
- Grouping performance by:
  - Pizza type  
  - Category  
  - Size  
  - Hour of day  
  - Week of year  

All SQL files used in this analysis are available in the `/sql` folder.

---

## Tableau Dashboards

Two dashboards were built to support different levels of decision-making.

### 1. Business Performance Overview
- Executive-level KPI summary  
- Hourly and weekly demand trends  
- Sales distribution by pizza category and size  

**Primary use:** staffing, scheduling, and high-level performance tracking.

---

### 2. Best & Worst Sellers Analysis
- Top and bottom pizzas ranked by:
  - Revenue  
  - Quantity sold  
  - Total orders  
- Identification of consistently underperforming menu items  

**Primary use:** menu optimization and promotion strategy.

---

## Key Insights

- Revenue leaders are not always volume leaders  
- A small subset of pizzas drives a disproportionate share of total orders  
- Demand peaks consistently during lunch and early evening hours  
- Certain menu items consistently underperform across multiple metrics  

---

## Repository Structure

pizza-sales-analytics/
├── sql/
│ ├── kpi_calculations.sql
│ ├── best_worst_sellers.sql
│ └── hourly_weekly_trends.sql
│
├── data/
│ └── pizza_sales.csv
│
└── README.md


---

## Skills Demonstrated

- SQL aggregation and KPI development  
- Business-oriented analytical thinking  
- Tableau dashboard design and storytelling  
- Hypothesis-driven analysis  
- Translating data into actionable recommendations  

---

## Links

👉 **Tableau Public Dashboard:**  
[https://public.tableau.com/views/PizzaSalesPerformanceDashboardSQLTableau/Home?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link]

👉 **GitHub Repository:**  
(This repository contains all SQL queries and documentation supporting the analysis.)

---

## Final Notes

This project demonstrates how analytics can move beyond reporting to actively support business decision-making.

Effective analytics isn’t about flashy visuals, it’s about asking the right questions, testing assumptions with data, and helping decision-makers act with confidence.





