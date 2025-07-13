SELECT d.dept_name, e.name
FROM departments d
RIGHT JOIN employees e ON e.dept_id = d.dept_id;
