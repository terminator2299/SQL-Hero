SELECT employee_id,
  MAX(CASE WHEN quarter = 'Q1' THEN sales ELSE 0 END) AS Q1,
  MAX(CASE WHEN quarter = 'Q2' THEN sales ELSE 0 END) AS Q2,
  MAX(CASE WHEN quarter = 'Q3' THEN sales ELSE 0 END) AS Q3,
  MAX(CASE WHEN quarter = 'Q4' THEN sales ELSE 0 END) AS Q4
FROM sales
GROUP BY employee_id;
