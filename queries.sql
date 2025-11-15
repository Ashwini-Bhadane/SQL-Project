-- A. INNER JOIN 

SELECT e.name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- B. LEFT JOIN — List all employees even if dept missing

SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- C. Employees who DON'T have a department

SELECT name
FROM employees
WHERE dept_id IS NULL;

-- D.Count employees in each department (GROUP BY)

SELECT dept_id, COUNT(*) AS total_employees
FROM employees
GROUP BY dept_id;

-- E. Total salary per department

SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id;

-- F. Departments having more than 3 employees

SELECT dept_id, COUNT(*) AS total
FROM employees
GROUP BY dept_id
HAVING COUNT(*) > 3;

-- G. Highest salary in each department

SELECT dept_id, MAX(salary) AS highest_salary
FROM employees
GROUP BY dept_id;

-- H.Average salary per department

SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id;

-- I. Show departments having avg salary > 40000

SELECT dept_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY dept_id
HAVING AVG(salary) > 40000;

-- I. Show departments having avg salary > 40000

SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

-- J. Highest salary employee (Subquery)

SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (SELECT MAX(salary) FROM employees)
);

-- K. Second highest salary (Subquery)

SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (SELECT MAX(salary) FROM employees)
);

-- L. Employees earning above average salary

SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);








