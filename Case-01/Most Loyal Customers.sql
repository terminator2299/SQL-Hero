SELECT TOP 5 customer_id, COUNT(order_id) AS total_orders
FROM orders
WHERE order_date >= DATEADD(year, -1, CURRENT_DATE)
GROUP BY customer_id
ORDER  BY total_orders DESC