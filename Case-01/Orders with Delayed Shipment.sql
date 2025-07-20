/*Question: Find orders that were delivered more than 7 days after the order date.*/



SELECT order_id, customer_id, order_date, delivery_date,
       (delivery_date - order_date) AS delay_days
FROM orders
WHERE delivery_date - order_date > 7;
