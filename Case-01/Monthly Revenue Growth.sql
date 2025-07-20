/*Question: Calculate the month-over-month revenue growth percentage for each month. */

WITH monthly_revenue AS (
  SELECT DATE_TRUNC('month', order_date) AS month,
         SUM(amount) AS revenue
  FROM orders
  GROUP BY month
)
SELECT month,
       revenue,
       LAG(revenue) OVER (ORDER BY month) AS previous_revenue,
       ROUND((revenue - LAG(revenue) OVER (ORDER BY month)) * 100.0 / 
             NULLIF(LAG(revenue) OVER (ORDER BY month), 0), 2) AS revenue_growth_pct
FROM monthly_revenue;
