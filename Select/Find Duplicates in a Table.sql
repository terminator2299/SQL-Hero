SELECT name, COUNT(*) AS dup_count
FROM employees
GROUP BY name
HAVING COUNT(*) > 1;
