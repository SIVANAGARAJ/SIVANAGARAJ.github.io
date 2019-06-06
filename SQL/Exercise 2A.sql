use HR

\* 1.

select job_id,
case 
when job_title like'%Account%' then 'A'
when job_title like'%Research%' then 'B'
when job_title like'%sales%' then 'C'
when job_title like'%Operations%' then 'D'
else '0' end as Grade from jobs

\* 2.  

select e.first_name,j.job_title,e.salary, case when job_title like '%Clerk%' then (salary*1.1) else (salary*1.07) end as Raised_Salary from employees e inner join jobs j on e.job_id=j.job_id

\* 3.

select first_name,salary,IsNull(commission_pct,0) as commission_pct from employees

\* 4.

select first_name,coalesce(Null,salary*commission_pct,0)+salary as Total from employees

\* 5.

select first_name,coalesce(Null,salary*commission_pct,0)+salary as Total from employees order by first_name desc

\* 6.

select * from
(
select top 3 dp.department_id,dp.department_name,emp.first_name as 'Manager Name',emp.salary from employees emp
inner join employees managers on emp.manager_id=managers.employee_id inner join departments dp
on dp.department_id=emp.department_id order by emp.salary desc)temp

\* 7.

select e.first_name,j.job_title from employees e inner join jobs j on e.job_id=j.job_id where j.job_title like '%Sales%'

\* 8.

select e.first_name+last_name as employee_name,d.department_name from employees e inner join departments d on e.department_id=d.department_id where department_name='analyst'

\* 9.
Create View employees_vu 
As select employee_id,first_name as employee,department_id from employees

select * from employees_vu

\10.

Create View dept3
As select employee_id as empno,last_name as employee,department_id as deptno from employees


select * from dept3

Deny update on
dept3 (department_id) to guest  \* user name*\


