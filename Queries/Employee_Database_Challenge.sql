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
