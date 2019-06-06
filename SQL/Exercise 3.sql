\* 1.

select employee_id,first_name,(upper(SUBSTRING(last_name,2,1))+lower(SUBSTRING(last_name,3,3))) as Lastname,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id from employees
or

select employee_id,first_name,(upper(SUBSTRING(last_name,2,1))+lower(SUBSTRING(last_name,3,Datalength(last_name)))) as Lastname,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id from employees


\* 2.
select (first_name+ '-'+last_name) as Name,month(hire_date) as 'Month of Joining' from employees

or

select (first_name+ '-'+last_name) as Name,Datepart(month,hire_date) as 'Month of Joining' from employees

\* 3.

select last_name,salary,
case
when salary/2>10000 then salary*1.1+1500
else salary*1.115+1500 end as 'Raised Salary' from employees

/*4*/

select employee_id,LEFT(employee_id,2)+'00'+RIGHT(employee_id,len(employee_id)-2)+'-E' as 'Employee_Id' ,
department_id,salary,
case
when employee_id in (select distinct manager_id from employees) then
UPPER(REPLACE(first_name,'z','$'))
else
first_name end as Name from employees;

/*5*/

select last_name,((upper(SUBSTRING(last_name,1,1)))+lower(SUBSTRING(last_name,2,DATALENGTH(last_name)))) 
as 'Last name',len(last_name) as 'Length of the names' from employees 
where Substring(last_name,1,1) in('J','A','M') order by last_name

/*6*/

select last_name, Right(Replicate('$',15)+left(salary,15),15) salary from employees;

/*7*/

select first_name,
case
when reverse(first_name)=first_name then 'Palindrome'
else 'Not Palindrome'
end as employees_name from employees

/*8 Pending */

select Upper(Substring(first_name,1,1))+lower(Substring(first_name,2,len(first_name))) from employees

select * from employees

/*9*/
select (SUBSTRING(temp.address,1,CHARINDEX(' ',temp.address))) 'Result Address' from 
(select (SUBSTRING(street_address,CHARINDEX(' ',street_address)+1,DATALENGTH(street_address))) 
as address from locations) temp;

or

select 
case
when CHARINDEX(' ',temp.address) <> 0 then
	(SUBSTRING(temp.address,1,CHARINDEX(' ',temp.address)))  
else 
 (SUBSTRING(temp.address,1,DATALENGTH(temp.address))) end  as 'Result Address'
from
(select (SUBSTRING(street_address,CHARINDEX(' ',street_address)+1,DATALENGTH(street_address))) 
as address from locations) temp;

/*10.*/

select first_name,Lower(LEFT(first_name,1)+last_name+'@systechusa.com') as 'E-mail Address' from employees

/*11.*/

select e.first_name,j.job_title from employees e join jobs j on e.job_id=j.job_id 
where j.job_id in (select e1.job_id from employees e1 where first_name='Trenna')

/*12.  Pending */

select e.first_name,d.department_name,l.city from employees e join departments d on
e.department_id=d.department_id join locations l on l.location_id=d.location_id 
where d.department_id in(select department_id from employees where first_name='Trenna')


/*13.*/

select first_name,salary as 'Minimum Salary' from employees 
	where salary in (select min(salary) from employees)

/* 14.*/

select first_name,salary as 'Salary' from employees 
	where salary not in (select min(salary) from employees)
	
