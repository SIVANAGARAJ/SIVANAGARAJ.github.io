Create table Sales
(
sales_report varchar(20),
empname varchar(20),
productname varchar(20),
customername varchar(20),
suppliername varchar(20),
shippername varchar(20),
categoryname varchar(20),
territeraryname varchar(20),
regionname varchar(20),
quantity int,
sales_amount int,
no_of_order_by_employee int,
month_id int,
before_quantity int,
no_of_rows int

 
 
 
 
 select * from sys.all_objects 



 

create procedure Audits
 
as begin
declare @tablename varchar(20)
declare @Prev_tablename varchar(20)
set @tablename='Sales_'+  convert(varchar,datepart(dd,getdate()))+'_'+ convert(varchar,datepart(mm,getdate()))+'_'+convert(varchar,datepart(YYYY,getdate()))

if not exists(select * from sys.objects where name=@tablename and type='u')

 exec ('create table' + @tablename +'(id int,name varchar(20))')

 set @Prev_tablename='Sales_'+  convert(varchar,datepart(dd,getdate()-1))+'_'+ convert(varchar,datepart(mm,getdate()-1))+'_'+convert(varchar,datepart(YYYY,getdate()-1))

 
if exists(select * from sys.objects where name=@Prev_tablename and type='u')
exec( 'drop table ' +@Prev_tablename )

end