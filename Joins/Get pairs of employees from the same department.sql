SELECT e1.name AS emp1, e2.name AS emp2
FROM employees e1
JOIN employees e2 ON e1.dept_id = e2.dept_id AND e1.emp_id < e2.emp_id;
