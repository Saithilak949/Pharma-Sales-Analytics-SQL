
/********************************************************************
Pharma Sales & Market Performance Analytics (SQL-Only)
Author: Sai Thilak Bolishetti
Date: 2026-02-01
Description: This SQL script performs multi-level analysis on 
6 years of pharmaceutical sales data across 8 ATC therapy categories.
It includes market performance, YoY/MoM growth, peak demand hours, 
and weekday/weekend analysis using only SQL.
********************************************************************/

/*==============================================================
1️⃣ Peak Month Analysis
Objective: Identify months with higher-than-average sales
SQL Concepts: AVG(), GROUP BY, HAVING
==============================================================*/
SELECT
    Month,
    AVG(total_sales) AS avg_sales
FROM vw_salesmonthly_clean
GROUP BY Month
HAVING AVG(total_sales) > (SELECT AVG(total_sales) FROM vw_salesmonthly_clean)
ORDER BY avg_sales DESC;


/*==============================================================
2️⃣ Rank Drug Sales per Month
Objective: Rank individual drugs (example: N02BE) by monthly sales
SQL Concepts: CTE, SUM(), RANK() OVER(PARTITION BY ... ORDER BY ...)
==============================================================*/
WITH Rank_values AS (
    SELECT 
        month, 
        year, 
        'N02BE' AS drug, 
        SUM(total_sales) AS sales
    FROM VW_salesmonthly_clean
    GROUP BY year, month
)
SELECT *, 
       RANK() OVER (PARTITION BY Year, Month ORDER BY sales DESC) AS rank_in_month
FROM Rank_values;


/*==============================================================
3️⃣ Month-over-Month (MoM) Growth
Objective: Calculate month-to-month growth trends
SQL Concepts: LAG() OVER(), arithmetic calculations
==============================================================*/
SELECT
    Year,
    Month,
    total_sales,
    total_sales - LAG(total_sales) OVER (ORDER BY Year, Month) AS mom_growth
FROM vw_salesmonthly_clean
ORDER BY Year, Month;


/*==============================================================
4️⃣ Peak Sales Hours
Objective: Identify the hours with highest sales volume
SQL Concepts: SUM(), GROUP BY, ORDER BY
==============================================================*/
SELECT 
    COALESCE(Hour,'NULL') AS Hour,
    SUM(total_sales) AS sales
FROM VW_saleshourly_clean
GROUP BY Hour
ORDER BY sales DESC;


/*==============================================================
5️⃣ Weekday vs Weekend Analysis
Objective: Compare sales between weekdays and weekends
SQL Concepts: CASE WHEN, SUM(), GROUP BY
==============================================================*/
SELECT 
    CASE
        WHEN Weekday_name IN ('Saturday','Sunday') THEN 'WEEKEND'
        ELSE 'WEEKDAY'
    END AS Day_Type,
    SUM(Total_sales) AS Sales
FROM vw_salesdaily_clean
GROUP BY 
    CASE
        WHEN Weekday_name IN ('Saturday','Sunday') THEN 'WEEKEND'
        ELSE 'WEEKDAY'
    END
ORDER BY Sales DESC;

/*==============================================================
End of File
This SQL script can be executed in any SQL-compatible platform 
with the views: vw_saleshourly_clean, vw_salesdaily_clean, 
vw_salesweekly_clean, vw_salesmonthly_clean already created.
==============================================================*/
