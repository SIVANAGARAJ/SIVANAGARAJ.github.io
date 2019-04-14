/* 1 */
select emp.last_name,dp.department_id,dp.department_name from employees emp inner join departments dp
on  emp.department_id=  dp.department_id 

/* 2 */
SELECT DISTINCT job_id, location_id
FROM employees, departments
WHERE employees.department_id = departments.department_id
AND employees.department_id = 4;


/* 3 */

select emp.last_name,dp.department_name, loc.location_id,loc.city from departments dp 
inner join employees emp on emp.department_id=dp.department_id    and emp.commission_pct IS NOT NULL
inner join locations loc on loc.location_id=dp.location_id 



/* 4 */

select emp.last_name,dp.department_name  from departments dp 
inner join employees emp on emp.department_id=dp.department_id  where emp.last_name like '%a%'

/* 5 */
SELECT 	e.last_name, e.job_id, e.department_id,d.department_name FROM 	employees e 
INNER JOIN departments d ON  e.department_id = d.department_id
JOIN 	locations l ON 	d.location_id = l.location_id
WHERE 	LOWER(l.city) ='Atlanta'

/* 6 */
select emp.last_name,emp.employee_id,,manager.last_name as 'Manager Name',manager.employee_id as 'Manager id' from employees emp 
inner join employees manager on  emp.manager_id=  manager.employee_id 

/* 7 */
select emp.last_name,emp.employee_id,manager.last_name as 'Manager Name',manager.employee_id as 'Manager id' from employees emp 
left join employees manager on  emp.manager_id=  manager.employee_id 


/* 8 */

 

select emp.department_id department, emp.last_name employee,emp2.last_name colleague from employees emp 
join employees emp2 on emp.department_id = emp2.department_id
where emp.employee_id <> emp2.employee_id
order by emp.department_id, emp.last_name, emp2.last_name;


/* 9 */

select emp.last_name,job.job_id,dp.department_name ,
	
	(case 
		when emp.salary>=50000 then 'A'
		when emp.salary<=30000 then 'C'
		else   'B'end) as Grade
	
	 from employees emp 
	inner join 	jobs job on emp.job_id=job.job_id
	inner join 	departments dp on dp.department_id=emp.department_id

/* 10 */

	select emp.last_name, emp.hire_date, mang.last_name, mang.hire_date FROM employees emp JOIN employees mang
	on emp.manager_id = mang.employee_id
	where emp.hire_date < mang.hire_date;

