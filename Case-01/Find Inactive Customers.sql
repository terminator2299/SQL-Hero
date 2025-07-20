/*Question: List customers who haven't placed any orders in the last 90 days.*/

SELECT c.customer_id, c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id 
                    AND o.order_date >= DATEADD(DAY, -90, GETDATE())
WHERE o.order_id IS NULL;
