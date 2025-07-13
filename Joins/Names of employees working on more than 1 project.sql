SELECT e.name
FROM employees e
JOIN (
    SELECT emp_id
    FROM projects
    GROUP BY emp_id
    HAVING COUNT(*) > 1
) p ON e.emp_id = p.emp_id;
