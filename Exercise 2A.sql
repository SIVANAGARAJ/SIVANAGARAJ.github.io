use hr

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

