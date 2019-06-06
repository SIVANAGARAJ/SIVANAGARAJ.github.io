Create table Datefunction
(
emp_id int Not Null,
Hire_date Date,
Resignation_date Date
)

Drop table Datefunction

Insert into Datefunction Values(1,'1/1/2000','10/7/2013')
Insert into Datefunction Values(2,'12/4/2003','8/3/2017')
Insert into Datefunction Values(3,'9/22/2012','6/21/2015')
Insert into Datefunction Values(4,'4/13/2015',NULL)
Insert into Datefunction Values(5,'06/3/2016',Null)
Insert into Datefunction Values(6,'8/08/2017',Null)
Insert into Datefunction Values(7,'11/13/2016',Null)

/* 1. */

SELECT DATEDIFF(Day, Hire_date, Resignation_date)%(365/30) No_Of_Days,
DATEDIFF(YEAR, Hire_date, Resignation_date) No_Of_Years,
DATEDIFF(MONTH, Hire_date, Resignation_date)%(365/30) No_Of_Months
from Datefunction

or

SELECT CAST(DATEDIFF(yy, t.Hire_date, t.Resignation_date) AS varchar(4)) +' year '+
       CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, t.Hire_date, t.Resignation_date), t.Hire_date), t.Resignation_date) AS varchar(2)) +' month '+
       CAST(DATEDIFF(dd, DATEADD(mm, DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, t.Hire_date, t.Resignation_date), t.Hire_date), t.Resignation_date), DATEADD(yy, DATEDIFF(yy, t.Hire_date, t.Resignation_date), t.Hire_date)),  t.Resignation_date) AS varchar(2)) +' day' AS result
  FROM (SELECT * from Datefunction) t

  /*   OR   CORRECT QUERY   */

  SELECT Year,ABS(Month) as Months,ABS(Day) as Days from 

  (Select Datediff(year,Hire_date,Resignation_date) as 'Year',
  (Datediff(month,Hire_date,Resignation_date)-
  (Datediff(year,Hire_date,Resignation_date)*12)) as 'Month',
  Datepart(day,Resignation_date)-Datepart(day,Hire_date) as 'Day'
  from Datefunction)as t
  use T5_Vijayakumar


/* 2. */

select convert(varchar,Hire_date,110) as Hire_date,
case
when Resignation_date is Not Null then convert(varchar,Resignation_date,107) 
when Resignation_date is Null then 'DEC 01th 1900'
end as Resignation_date
from Datefunction

/*  OR     */

select emp_id ,
  convert(varchar,isnull(Hire_date,'12/01/1900'),101) as  'Hire_date',
   convert(varchar,isnull(resignation_date,'12/01/1900'),107) as  'Resig_date' from Datefunction

/* 3. */

SELECT emp_id,CAST(DATEDIFF(yy, t.Hire_date, t.Resignation_date) AS varchar(4)) +' Years and '+
       CAST(DATEDIFF(mm, DATEADD(yy, DATEDIFF(yy, t.Hire_date, t.Resignation_date), t.Hire_date), t.Resignation_date) AS varchar(2))+ ' Months' AS 'Employee Experiences'
FROM (SELECT * from Datefunction) t

/*  OR     */

select Year,abs(month) as month  from (

select datediff(year, Hire_date, getdate()) as  'year' ,
 (datediff(month,Hire_date, getdate())-
 (datediff(year,Hire_date, getdate())*12))  as 'month' 
from Datefunction ) as  t 


/* 4. Output Pending */

SELECT Datediff(day,Dateadd(qq,-1,Getdate()),Getdate())

/* 5. */

select dateadd(week,1,dateadd(qq,datediff(qq,0,Getdate())-1,0))   OR  SELECT dateadd(dd, -16, dateadd(qq, -1,getdate()))



/* 6. */

Select convert(varchar(20),(dateadd(week,15,dateadd(day,datediff(day,0,Getdate())-23,0))),101) as '15th week of the financial year'


/* 7  */

 with result as (
SELECT ( DATEADD(mm,DATEDIFF(mm,0,'01/01/2005')+1,0)-DATEPART(dw,DATEADD(mm,DATEDIFF(mm,0,'01/01/2005')+1,0)) ) as  LastSaturday

	   )

select * from result


/* 8  */

select ID_psg,Name,DATEDIFF(d,first,last) as 'elapsed' from (
select pass.ID_psg,pass.name, max(trp.date) as 'last', min(trp.date) as 'first' from Passenger pass inner join Pass_in_trip trp
on pass.ID_psg=trp.ID_psg
group by pass.ID_psg,pass.name  ) a

/*9 */

select Plane,town_from,town_to, DATEDIFF(SECOND,time_out,time_in)/60 as 'Minutes',DATEDIFF(SECOND,time_out,time_in)%60 as 'Seconds'   from Trip
where town_from='Rostov' and town_to='Moscow'



 