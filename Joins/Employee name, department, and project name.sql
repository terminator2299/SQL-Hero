SELECT e.name, d.dept_name, p.proj_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
JOIN projects p ON e.emp_id = p.emp_id;
