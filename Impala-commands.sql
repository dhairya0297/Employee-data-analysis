---A list showing employee number, last name, first name, sex, and salary for each employee1. A list showing first name, last
---name, and hire date for employees who were hired in 1986.


SELECT * FROM employees
SELECT * FROM salaries
------------------------------
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries  s on 
s.emp_no=e.emp_no;
------------------------
SELECT last_name,first_name, hire_date FROM employees
WHERE YEAR(Hire_date)=1986
---------------------------
---2. A list showing the manager of each department with the following information: department number, department name,
---the manager's employee number, last name, first name.
SELECT * FROM dept_manager
SELECT * FROM departments
SELECT * FROM employees

SELECT d.dept_no, de.dept_name,e.emp_no,e.first_name, e.last_name
FROM employees e
JOIN dept_manager d
ON d.emp_no=e.emp_no
JOIN departments de
ON d.dept_no=de.dept_no;

---3. A list showing the department of each employee with the following information: employee number, last name, first
---name, and department name.
SELECT * FROM employees e
Select * FROM departments d
SELECT * FROM dept_emp de

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON de.emp_no=e.emp_no
JOIN departments d
on de.dept_no=d.dept_no



---4. A list showing first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B.“

SELECT first_name,last_name,sex FROM employees
WHERE first_name like 'Hercules' AND Last_name	Like 'b%'


---5. A list showing all employees in the Sales department, including their employee number, last name, first name, and
---department name.
SELECT * FROM employees e
SELECT * FROM dept_emp de
SELECT * FROM departments d
---------------------------
SELECT e.emp_no, e.last_name, e.first_name,d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no=de.emp_no
JOIN departments d
ON de.dept_no=d.dept_no
WHERE dept_name='Sales'

---6. A list showing all employees in the Sales and Development departments, including their employee number, last name,
---first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name,d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no=de.emp_no
JOIN departments d
ON de.dept_no=d.dept_no
WHERE dept_name LIKE('Sales') OR Dept_name LIKE('Development')
---7. A list showing the frequency count of employee last names, in descending order. ( i.e., how many employees share each
---last name

SELECT last_name, COUNT(last_name) AS COUNT_LastName FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;


