
declare cur_sample cursor
for
select contactname from [tgt_customers_t-SQL]
open cur_sample
fetch next from cur_sample



select * from[src_customers_t-SQL]

select * from[tgt_customers_t-SQL]

create table control_table
	(
		table_name nvarchar(100),
		action nvarchar(50),
		created_date datetime,
		modified_date datetime
	)



alter trigger inc_trigger2
on [tgt_customers_t-SQL]
after insert
as
if ((select count(1) from [src_customers_t-SQL]) = (select count(1) from [tgt_customers_t-SQL]))
return;
else 
insert into control_table
values
	(
		'[tgt_customers_t-SQL]',
		@action,
		0,
		getdate()
	);


alter procedure inc_load 
as
begin
declare @action nvarchar(50)
merge [tgt_customers_t-SQL] as t
using [src_customers_t-SQL] as s
on (s.customerid = t.customerid)     
when matched and s.phone <> t.phone
then 
update 
set t.phone = s.phone
when not matched by target
then 
insert ([CustomerID],[CompanyName],[ContactName],[ContactTitle],[Address],[City],[Region],[PostalCode],[Country],[Phone],[Fax])
values(
		s.CustomerID,
		s.CompanyName,
		s.ContactName,
		s.ContactTitle,
		s.Address,
		s.City,
		s.Region,
		s.PostalCode,
		s.Country,
		s.Phone,
		s.Fax)
	 
end;


exec inc_load


select * from control_table

truncate table control_table

select * from [tgt_customers_t-SQL]


update [src_customers_t-SQL]
set phone = '99440'
where customerid = 'ALFKI'


insert into [src_customers_t-SQL]
values
	('SHAFi', 'shanhu & co', 'shanu', 'CEO', 'thasami sumeru', 'coimbatore', 'TN', '641024', 'india', 9944059254, 43121)

--=====================================================================================================================================================

SELECT TE.*  
FROM sys.trigger_events AS TE  
JOIN sys.triggers AS T ON T.object_id = TE.object_id  
WHERE T.parent_class = 0 AND T.name = 'inc_trigger'; 


  
  select * from sys.triggers

 select count(*) from control_table


 DECLARE @MyTableVar table(  
  EmployeeID   int NOT NULL,  
  LastName     nvarchar(20) NOT NULL,  
  FirstName    nvarchar(20) NOT NULL,  
  CurrentSales money NOT NULL,  
  ProjectedSales money NOT NULL  
  ); 
select * from @MyTableVar


--=============================================================================================


create view [sample]
as 
select * from [tgt_customers_t-SQL]




