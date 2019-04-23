use test
Create Table Datefunction
(
emp_id int,
Hire_date date,
resignation_date date
)

Insert into Datefunction Values(1,'1/1/2000','10/7/2013')
Insert into Datefunction Values(2,'12/4/2003','8/3/2017')
Insert into Datefunction Values(3,'9/22/2012','6/21/2015')
Insert into Datefunction Values(4,'4/13/2015',Null)
Insert into Datefunction Values(5,'06/3/2016',Null)
Insert into Datefunction Values(6,'08/8/2017',Null)
Insert into Datefunction Values(7,'11/13/2016',Null)


/*1. */
select Year,abs(month),abs(days) from (

select datediff(year, Hire_date, resignation_date) as  'year' ,
 (datediff(month,Hire_date, resignation_date)-
 (datediff(year,Hire_date, resignation_date)*12) ) as 'month' ,
 datepart(d,resignation_date)-datepart(d,Hire_date) as 'days'

from Datefunction ) as  t 

/* 2. */


select * from Datefunction
select emp_id ,
  convert(varchar,isnull(Hire_date,'12/01/1900'),101) as  'Hire_date',
   convert(varchar,isnull(resignation_date,'12/01/1900'),107) as  'Resig_date'   from Datefunction


  /* 3. */
   select Year,abs(month) as month  from (

select datediff(year, Hire_date, getdate()) as  'year' ,
 (datediff(month,Hire_date, getdate())-
 (datediff(year,Hire_date, getdate())*12))  as 'month' 

from Datefunction ) as  t 


 /*4*/


SELECT    datediff(day, dateadd(qq,  -1,getdate()) ,getdate())

 /*5*/
 SELECT    dateadd(dd, -15,  dateadd(qq,  -1,getdate()))

  /*6*/
 


 select convert(varchar,'04/01/2017',107)