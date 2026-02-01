Pharma Sales & Market Performance Analytics (SQL-Only)
Project Overview

This project analyzes 6 years of pharmaceutical sales data across 8 ATC therapy categories using SQL only. The goal is to generate actionable insights for commercial planning, inventory optimization, and market performance evaluation.

Business Problem

Pharmaceutical companies need to track sales trends, therapy-area performance, seasonal demand, and peak sales periods to make informed decisions. This project addresses:

Which therapy areas contribute most to revenue

Year-over-Year and Month-over-Month growth

Seasonal and weekly demand patterns

Peak sales hours and weekday vs weekend trends

Dataset Description

Data spans 2014-2019, collected from a single pharmacy’s Point-of-Sale system, and includes:

sales_hourly.csv – Hourly sales data

sales_daily.csv – Daily sales data

sales_weekly.csv – Weekly sales data

sales_monthly.csv – Monthly sales data

Columns include ATC drug categories, sales volume, date, and time attributes (Year, Month, Hour, Weekday Name).

Key SQL Analyses
1. Peak Month

Identified months with higher-than-average sales using aggregation and comparison queries.

2. Drug Ranking per Month

Ranked individual drugs (e.g., N02BE) by monthly sales using window functions (RANK() OVER).

3. Month-over-Month (MoM) Growth

Calculated MoM growth per month to track sales trends using LAG() window function.

4. Peak Sales Hours

Aggregated hourly sales to identify peak demand times for pharmacies.

5. Weekday vs Weekend Analysis

Compared sales performance between weekdays and weekends using CASE statements.

SQL Concepts Used

CTEs (Common Table Expressions)

Window Functions (LAG(), RANK(), ROW_NUMBER())

Aggregations (SUM(), AVG())

Conditional logic (CASE WHEN)

Grouping & ordering

Time-series analysis

Business Insights

Identified high-performing therapy categories (e.g., anti-inflammatory drugs).

Highlighted peak sales months for inventory planning.

Detected hourly and weekly sales patterns, helping optimize staffing and stock levels.

Tracked YoY and MoM growth trends for strategic commercial planning.

Assumptions & Limitations

Data comes from a single pharmacy; results are indicative, not national-level.

Only sales volume is available, no revenue or cost data.

Seasonal trends are approximated based on available historical data.
