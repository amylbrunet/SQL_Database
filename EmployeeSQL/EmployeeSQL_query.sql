-- List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
from employees e 
	left join salaries s on (e.emp_no = s.emp_no)
order by e.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986
select first_name,
	last_name,
	hire_date
from employees
where hire_date like '%1986';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
select dm.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
from employees e
	join dept_manager dm on (e.emp_no = dm.emp_no)
	join departments d on (dm.dept_no = d.dept_no);
	
-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
	join dept_emp de on (e.emp_no = de.emp_no) 
	join departments d on (de.dept_no = d.dept_no);

-- List first name, last name, and sex for employees whose 
-- first name is "Hercules" and last names begin with "B."
select first_name,
	last_name,
	sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name
select e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
from employees e
	join dept_emp de on (e.emp_no = de.emp_no) 
	join departments d on (de.dept_no = d.dept_no)
where de.dept_no = 'd007';

-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
select e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
from employees e
	join dept_emp de on (e.emp_no = de.emp_no) 
	join departments d on (de.dept_no = d.dept_no)
where de.dept_no = 'd007' or de.dept_no = 'd005';

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
select last_name,
	count(last_name) 
from employees
group by last_name
order by count(last_name) DESC;



