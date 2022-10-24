
SELECT YEAR(d.from_date) AS calendar_year, e.gender, COUNT(e.emp_no) AS num_of_employees
FROM t_dept_emp AS d
JOIN t_employees e ON e.emp_no = d.emp_no
GROUP BY calendar_year, gender
HAVING calendar_year >= '1990';