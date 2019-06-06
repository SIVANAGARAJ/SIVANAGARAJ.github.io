use hr
select * from employees
select * from departments
select * from locations


\* 1.

select last_name,hire_date from employees where department_id in(select department_id from departments where department_name='Sales')

\* 2.

select employee_id,last_name from employees where salary>(select avg(salary) from employees)Order by salary

\* 3. 

select employee_id,last_name from employees where department_id in(select department_id from departments where last_name like '%u%');

\* 4. 

select last_name,department_id,job_id from employees where department_id=(select department_id from departments where location_id=(select location_id from locations where city='Atlanta'));


\* 5.

select last_name,salary from employees where manager_id in(select employee_id from employees where last_name like '%Fillmore%')

\* 6. 

select department_id,last_name,job_id from employees where department_id in(select department_id from departments where department_name='Operations')

\* 7.
select employee_id,last_name,salary from employees where salary>(select avg(salary) from employees) and department_id in (select department_id from departments where last_name like '%u%')


\* 8.

select first_name,last_name from employees where department_id=(select department_id from departments where department_name='Sales')

\* 9.

select  '5%' as 'Raise percentages', employee_id, salary,   (salary * 5.0 / 100.0)  as raise   from employees  
 where department_id in(10,30)

 union
  
  select   '10%' as 'Raise percentages', employee_id,  salary,   (salary * 10.0 / 100.0)  as raise   from employees  
 where department_id =20
 union

  select   '15%' as 'Raise percentages', employee_id, salary,    (salary * 15.0 / 100.0)  as raise   from employees  
 where department_id in(40,50)

 union

  select   'No Raise' as 'Raise percentages', employee_id, salary,    (salary * 0.0 / 100.0)  as raise   from employees  
 where department_id =60

 \* 10. 

 select top 3 salary,last_name from 

(
select top 3 salary,last_name from employees order by salary desc

)TEMP

\* 11.

select last_name as employeename,salary,isnull(commission_pct,0) as commission from employees

\* 12.

select * from
(
select top 3 dp.department_id,dp.department_name,emp.last_name as 'Manager Name',emp.salary from employees emp
inner join employees managers on emp.manager_id=managers.employee_id inner join departments dp
on dp.department_id=emp.department_id order by emp.salary desc)temp





