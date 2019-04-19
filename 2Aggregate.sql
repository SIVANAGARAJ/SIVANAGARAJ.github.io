use hr

select distinct E.first_name,M.department_id from employees E inner join employees M on E.department_id=M.department_id and E.first_name= M.first_name;
select * from employees order by first_name;

select distinct E.first_name,M.department_id from employees E inner join employees M on E.department_id=M.department_id where E.first_name= 'steven';

select distinct m.first_name,m.department_id from employees m join employees n on m.department_id=n.department_id where m.first_name=n.first_name order by m.first_name
/* 8 */

select m.* from employees m  join 
	(select first_name,department_id,count(*)cnt from employees group by first_name,department_id having count(*) > 1) as n 
	on m.first_name=n.first_name and m.department_id=n.department_id order by m.first_name;

select first_name,department_id from employees m group by first_name,department_id having count(*) > 1

/* 8 */
select first_name,department_id from 
	(select first_name,department_id,count(*) OVER (PARTITION BY first_name , department_id) as cnt from employees) n
	where n.cnt > 1;
/* 9 */
select distinct b.manager_id,a.total_salary from employees b join (select manager_id,sum(salary) as total_salary from employees group by manager_id) as a
	on a.manager_id=b.manager_id where a.manager_id is not NULL
/* 9 */
select manager_id,sum(salary) as total_salary from employees where manager_id is not null  group by manager_id