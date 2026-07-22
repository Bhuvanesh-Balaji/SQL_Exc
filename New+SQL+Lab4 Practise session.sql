use hr;
-- what is the total salary os employees?
select sum(salary) as total_salary
from employees;

-- total number of employees?
select count(employee_id) as emp_count
from employees;

-- what is the average salary of the employee?
select avg(salary) as Avg_salary
from employees;

-- who is the first employee hired in the company?
select employee_id, first_name, min(Hire_date) as first_join 
from employees
group by employee_id,first_name
order by Hire_date asc
limit 1;

-- find employee count in each department?
select department_id,count(employee_id) as emp_count
from employees
group by department_id
order by emp_count desc;

-- find employee count in each department?
select department_id,count(employee_id) as emp_count
from employees
group by department_id
having emp_count>4;

select employee_id,first_name,salary
from employees
group by department_id
order by emp_count desc;



