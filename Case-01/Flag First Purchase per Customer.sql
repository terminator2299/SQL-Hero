/*Question: Add a flag to each order indicating whether it's the customer's first purchase.*/

SELECT *,
       CASE WHEN order_date = MIN(order_date) OVER (PARTITION BY customer_id)
            THEN 1 ELSE 0 END AS is_first_purchase
FROM orders;
