select e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
into retirement_titles
from employees as e
left join titles as t
on e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no;

select distinct on (r.emp_no) r.emp_no,
r.first_name,
r.last_name,
r.title
into unique_titles
from retirement_titles as r
order by r.emp_no asc, r.to_date desc;

select count(u.title), u.title as "Title"
into retiring_titles
from unique_titles as u
group by u.title
order by count desc;

select distinct on (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
d.from_date,
d.to_date,
t.title
into mentorship_eligibility
from employees as e
left join dept_emp as d
on e.emp_no = d.emp_no
left join titles as t
on e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
     AND (d.to_date = '9999-01-01')
order by e.emp_no;

--
--Query Suggestions/Testing
--

--Create a table with all non-retirement personnel
select e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
into non_retirement_titles
from employees as e
left join titles as t
on e.emp_no = t.emp_no
WHERE e.birth_date > '1955-12-31'
order by e.emp_no;

--Create a table with only the most recent department name of each employee
select distinct on (de.emp_no) de.*, d.dept_name
into current_dept_emp_names
from dept_emp as de
left join departments as d
on de.dept_no = d.dept_no
order by de.emp_no asc, de.to_date desc;

----Join the current departments table to the non_retirement_titles table
--This will compile a list of non-retirement and current employees by number, name, title and department
select distinct on (n.emp_no) n.emp_no,
n.first_name,
n.last_name,
n.title,
d.dept_name
into non_retirement_unique_titles
from non_retirement_titles as n
left join current_dept_emp_names as d
on n.emp_no = d.emp_no
order by n.emp_no asc, n.to_date desc;



--Join the Titles table to the current department names table, filtering for current employees that have been with PH since 2000-01-01
--This will compile a list of current employees by number, their departments and title
select cdem.*, t.title
-- into current_employees_with_title
from current_dept_emp_names as cdem
left join titles as t
on cdem.emp_no = t.emp_no
where (t.to_date = '9999-01-01') and (cdem.from_date < '2000-01-01');

select distinct on (t.emp_no) t.*
-- into current_dept_emp_names
from titles as t
order by t.emp_no asc, t.to_date desc;

select cd.*, 
r.first_name,
r.last_name,
r.title
-- into unique_titles
from retirement_titles as r
order by r.emp_no asc, r.to_date desc;


select * from titles;
