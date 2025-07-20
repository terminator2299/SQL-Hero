/*Question: Find the top 3 most sold products (by quantity) in each category.*/

SELECT *
FROM (
  SELECT p.category_id, p.product_id, SUM(s.quantity) AS total_quantity,
         RANK() OVER (PARTITION BY p.category_id ORDER BY SUM(s.quantity) DESC) AS rnk
  FROM sales s
  JOIN products p ON s.product_id = p.product_id
  GROUP BY p.category_id, p.product_id
) ranked_products
WHERE rnk <= 3;
