/*Question: Calculate the average gap in days between two consecutive orders for each customer.*/

WITH ranked_orders AS (
  SELECT customer_id, order_date,
         LAG(order_date) OVER (PARTITION BY customer_id ORDER BY order_date) AS prev_order_date
  FROM orders
)
SELECT customer_id,
       ROUND(AVG(order_date - prev_order_date), 2) AS avg_days_between_orders
FROM ranked_orders
WHERE prev_order_date IS NOT NULL
GROUP BY customer_id;
