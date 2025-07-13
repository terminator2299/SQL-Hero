Select e.name,dept_name
From employees e 
INNER JOIN departments d ON e.dept_id = d.dept_id;