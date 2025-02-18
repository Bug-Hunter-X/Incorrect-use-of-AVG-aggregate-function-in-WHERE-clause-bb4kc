SELECT * FROM employees WHERE department = 'Sales' AND salary > (SELECT AVG(salary) FROM employees); -- Using a subquery

--or

WITH AverageSalary AS (
  SELECT AVG(salary) AS avg_salary FROM employees
)
SELECT * FROM employees, AverageSalary WHERE department = 'Sales' AND salary > avg_salary; -- Using a CTE