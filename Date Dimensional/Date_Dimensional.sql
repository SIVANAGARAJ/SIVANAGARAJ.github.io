use t5_Vijayakumar

create table date_dimensional
	(
		Date_id int ,
		Date_Desc date,
		Week_id int,
		Week_desc varchar(10),
		Month_id int,
		Month_desc varchar(10),
		Qtr_id int ,
		Qtr_desc  varchar(10),
		Year_id int ,
		Year_desc varchar(10),
		Week_day varchar(10),
		Holiday_flag varchar(10),
		Week_Start_Date date,
		Month_Start_Date date,
		Qtr_Start_Date date,
		Year_Start_Date date,
		Day_of_the_week varchar(10),
		Day_of_the_month varchar(10),
		Day_of_the_qtr varchar(10),
		Day_of_the_year varchar(10),
		leap_year_flag bit,
		Date_IND_format varchar(10),
		Date_US_format varchar(10),
	);

	select *from date_dimensional



declare @startdate date = '01-01-2018'
declare @endtdate date = getdate()-1;

with datecte
as
	(
		select @startdate as Date_desc
		union all
		select dateadd(dd,1,Date_desc)
		from datecte
		where Date_desc<=@endtdate
	) 

insert into date_dimensional

select 
 
 format (Date_desc,'ddMMyyyy') as Date_id,

 replace( convert( varchar(10),Date_desc,111),'-','/') as Date_des,

 convert(int,datepart (ww,Date_Desc)) as Week_id,

 concat ('W',datepart (ww,Date_Desc)) as Week_desc, 

 convert(int,datepart (mm,Date_Desc)) as Month_id,

 concat ('M',datepart (mm,Date_Desc)) as Month_desc,

 convert(int,datepart (qq,Date_Desc)) as Qtr_id,

 concat ('Q',datepart (qq,Date_Desc)) as Qtr_desc,

 convert(int,datepart (yyyy,Date_Desc)) as Year_id,

 concat ('Y',datepart (yyyy,Date_Desc)) as Year_desc,
 
 datename(dw,Date_Desc) as week_day,

 case 
 when datename(dw,Date_Desc)='Saturday' 
   or
	datename(dw,Date_Desc) ='Sunday'
 then 'Y'
 else 'N' 
 end as Hoilday_flag,

 dateadd(ww,datediff(ww,0,Date_Desc),0) as Week_start_day,

 dateadd(mm,datediff(mm,0,Date_Desc),0) as Month_start_day,

 dateadd(qq,datediff(qq,0,Date_Desc),0) as Qtr_start_day,

 dateadd(yy,datediff(yy,0,Date_Desc),0) as Year_start_day,

 convert(int,datediff(dd,dateadd(ww,datediff(ww,0,Date_Desc),0),Date_Desc))+2 as Day_of_the_week,

 convert(int,datediff(dd,dateadd(mm,datediff(mm,0,Date_Desc),0),Date_Desc))+1 as Day_of_the_month,

 convert(int, datediff(dd,dateadd(qq,datediff(qq,0,Date_Desc),0),Date_Desc))+1 as Day_of_the_qrt,

 convert(int,datediff(dd,dateadd(yy,datediff(yy,0,Date_Desc),0),Date_Desc))+1 as Day_of_the_year,

 case
 when
 (
 ((datepart (yyyy,Date_Desc))%4=0) and
 ((datepart (yyyy,Date_Desc))%100!=0)
 )
 or
 ((datepart (yyyy,Date_Desc))%400=0)

 then 1
 else 0
 end as Leap_year_flag,

 format(Date_Desc,'d','en-in') as Date_IND_format,

 format(Date_Desc,'d','en-us') as Date_US_format

 from datecte   option(maxrecursion 0)

 select *from date_dimensional