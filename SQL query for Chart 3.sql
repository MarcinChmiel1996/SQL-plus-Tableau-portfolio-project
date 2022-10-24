SELECT e.gender, dp.dept_name, ROUND(AVG(s.salary),2) AS salary, YEAR(d.from_date) AS calendar_year
FROM t_employees e
JOIN t_salaries s ON e.emp_no=s.emp_no
JOIN t_dept_emp d ON d.emp_no = e.emp_no
JOIN t_departments dp ON dp.dept_no=d.dept_no
GROUP BY dp.dept_no, e.gender, calendar_year
HAVING calendar_year<=2002
ORDER BY dp.dept_no ASC
;