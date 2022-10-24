
DROP PROCEDURE IF EXISTS salary_range;


DELIMITER $$
CREATE PROCEDURE salary_range (IN p_minimum_salary FLOAT, IN p_maximum_salary FLOAT)
BEGIN 
SELECT
e.gender, de.dept_name, AVG(s.salary) AS average_salary FROM
 t_salaries s
 JOIN t_employees e ON e.emp_no = s.emp_no
 JOIN t_dept_emp d ON d.emp_no = e.emp_no
 JOIN t_departments de ON d.dept_no= de.dept_no
  WHERE s.salary BETWEEN p_minimum_salary AND p_maximum_salary
 GROUP BY d.dept_no, e.gender;
 
END $$
DELIMITER ;
CALL salary_range(50000,90000);
