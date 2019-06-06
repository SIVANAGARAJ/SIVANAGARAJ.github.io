\* 1.

select max(salary) as 'Maximum Salary',min(salary) as 'Minimum Salary',avg(salary) as 'Average Salary',Sum(commission_pct) as 'Commission Earned' from employees

\* 2.

select department_id,Sum(salary) as 'Total Salary Payout',Sum(commission_pct) as 'Total Commission Payout'	from employees Group by department_id

\* 3.

select department_id,count(*) as 'Number of Employees' from employees Group by department_id

\* 4.

select department_id,Sum(salary) as 'Total Salary of Employees' from employees Group by department_id

\* 5.

select first_name + last_name as 'Employees Name' from employees where commission_pct is Null order by 1

\* 6.

select first_name + last_name as 'Employees Name',department_id, case when commission_pct is Null then 'No Commission' else cast(commission_pct as varchar(30)) end as Commission from employees




\* 7.

select first_name + last_name as 'Employees Name',salary, case when commission_pct is Null then 'No Commission' else cast(commission_pct*2 as varchar) end as Commission from employees

select * from employees

\* 8.

select first_name,department_id from employees group by first_name,department_id having count(*) > 1

     or
\* 8. other method

select first_name,department_id from 
	(select first_name,department_id,count(*) OVER (PARTITION BY first_name , department_id) as cnt from employees) n
	where n.cnt > 1;

	other method


select m.first_name,m.department_id from employees m  join 
(select first_name,department_id,count(*)cnt from employees group by first_name,department_id having count(*) > 1) as n 
on m.first_name=n.first_name and m.department_id=n.department_id order by m.first_name;


\* 9.

 select manager_id,sum(salary) as total_salary from employees where manager_id is not null  group by manager_id
 select * from employees 

 \* or Other Method */ 

select distinct b.manager_id,a.total_salary from employees b join (select manager_id,sum(salary) as total_salary from employees group by manager_id) as a
	on a.manager_id=b.manager_id where a.manager_id is not NULL

\* 10.
select e.first_name as 'Managers Name',count(e1.employee_id) as 'Number of Employees',e1.manager_id from employees e join employees e1 on  e.employee_id=e1.manager_id
group by e.first_name,e1.manager_id

\* 11. Doubt***************************

select e.last_name as 'Employee Name',e.department_id,e.salary from employees e 
join employees m on e.employee_id=m.manager_id where e.last_name like '_a%' group by e.last_name,e.department_id,e.salary

\* 12.

select department_id,Sum(salary)/count(salary) as Average from employees group by department_id

\* or other method*\

select department_id,avg(salary) as Average from employees group by department_id

\* 13.

select department_id,max(salary) as 'Maximum Salary' from employees group by department_id

\* 14.

select commission_pct,case when commission_pct is Null then 1 else (salary*10/100) end as Updated_Commission from employees


***********************************************************









