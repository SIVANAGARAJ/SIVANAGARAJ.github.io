

/*1. Display all information in the tables EMP and DEPT.*/

select *from employees;

select *from departments;

/*2. Display only the hire date and employee name for each employee.*/


select concat(first_name, '  ',last_name) as employee_name,hire_date
from employees


/*3. Display the ename concatenated with the job ID, separated by a comma and space, and
name the column Employee and Title*/


select concat(first_name, ' ',last_name,',','  ',job_id) as employee_name
from employees


/*4. Display the hire date, name and department number for all clerks.*/

select hire_date,concat(first_name, ' ',last_name) as employee_name, department_id as department_name
from employees


/*5. Create a query to display all the data from the EMP table. Separate each column by a
comma. Name the column THE_OUTPUT*/


select concat(employee_id,'  ',first_name,'  ',last_name,'  ',phone_number,'  ',email,'  ',job_id,'  ',salary,'  ',commission_pct,'  ',manager_id,'  ',department_id) as THE_OUTPUT
from employees


/*6. Display the names and salaries of all employees with a salary greater than 2000.*/

select concat(first_name, ' ',last_name) as employee_name,salary
from employees
where salary>2000


/*7. Display the names and dates of employees with the column headers “Name" and “Start Date"*/


select concat(first_name, ' ',last_name) as Name,hire_date  "Start Date"
from employees


/*8. Display the names and hire dates of all employees in the order they were hired.*/



select concat(first_name, ' ',last_name) as Name,hire_date
from employees
order by hire_date



/*9. Display the names and salaries of all employees in reverse salary order.*/


select concat(first_name, ' ',last_name) as Name,salary
from employees
order by salary desc


/*10. Display ‘ename’ and ‘deptno’ who are all earned commission and display salary in reverse
order*/

select concat(first_name, ' ',last_name) as Name,department_id,salary
from employees
where commission_pct is not Null
order by salary desc


/*11*/

select last_name,job_id
from employees
where manager_id is not Null


/*12*/


select last_name,job_id,salary
from employees
where (job_id='ST_CLERK') or (job_id='SA_REP') or (salary!=2500) or (salary!=3500) or (salary!=5000)
