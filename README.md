💊 Pharma Sales & Market Performance Analytics (SQL-Only)

📌 Project Overview

This project analyzes 6 years of pharmaceutical sales data across 8 ATC therapy categories using SQL only.
The goal is to generate actionable insights for:

Commercial planning

Inventory optimization

Market performance evaluation

🎯 Business Problem

Pharmaceutical companies need to track:

Therapy-area performance

Seasonal & weekly trends

Peak sales hours

Year-over-Year growth

These insights help optimize stock, improve revenue, and support strategic decisions.

🗂 Dataset Description

Data spans 2014–2019, collected from a single pharmacy’s Point-of-Sale system, and includes:

File	Description
sales_hourly.csv	Hourly sales data
sales_daily.csv	Daily sales data
sales_weekly.csv	Weekly sales data
sales_monthly.csv	Monthly sales data

Columns include ATC drug categories, sales volume, and time attributes (Year, Month, Hour, Weekday Name).

🔍 Key SQL Analyses

1️⃣ Peak Month

Identify months with higher-than-average sales using aggregation and comparison queries.
SQL Concepts: AVG(), GROUP BY, HAVING

2️⃣ Drug Ranking per Month

Rank individual drugs (e.g., N02BE) by monthly sales using window functions.
SQL Concepts: RANK() OVER (PARTITION BY … ORDER BY …)

3️⃣ Month-over-Month (MoM) Growth

Track month-to-month sales changes using LAG().
SQL Concepts: LAG() OVER, arithmetic calculations

4️⃣ Peak Sales Hours ⏰

Aggregate hourly sales to detect peak demand times.

5️⃣ Weekday vs Weekend Analysis 🌞🌜

Compare sales performance between weekdays and weekends using CASE statements.

💻 SQL Concepts Used

CTEs (Common Table Expressions)

Window Functions: LAG(), RANK(), ROW_NUMBER()

Aggregations: SUM(), AVG()

Conditional Logic: CASE WHEN

Grouping & Ordering

Time-Series Analysis

This demonstrates senior-level SQL skills for pharma/healthcare analytics.

📈 Business Insights

High-performing therapy areas identified (e.g., anti-inflammatory drugs)

Peak sales months detected for better inventory planning

Hourly & weekly patterns help optimize staffing & stock

YoY and MoM growth trends guide commercial strategy

⚠️ Assumptions & Limitations

Data is from one pharmacy – may not reflect national trends

Only sales volume available; no revenue/cost info

Seasonal trends approximated from historical data
