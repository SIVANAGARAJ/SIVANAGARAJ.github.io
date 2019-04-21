select * from flights;

select * from employees;

select * from Aircraft

select * from Certified

/*1.*/

select * from Flights where frm='madison' and arr_to='New York' and convert(varchar,arrives,108) < '18:00'
select convert(varchar,getdate(),108)

