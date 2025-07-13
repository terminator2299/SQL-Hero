SELECT d.dept_name, MAX(e.salary) AS max_salary
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
