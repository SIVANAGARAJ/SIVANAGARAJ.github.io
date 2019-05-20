use northwind
----------------------------------------------------------------------------------------------------------
select * into SRC_customer from northwind.dbo.Customers
-----------------------------------------------------------------------------------------------------------
select * into Customer_SCD1 from SRC_customer
select * from Customer_SCD1
MERGE Customer_SCD1 AS TT 
USING SRC_customer AS Src ON
  TT.CustomerID = Src.CustomerID
WHEN matched and Src.Phone != TT.Phone THEN
Update set TT.Phone=Src.Phone
WHEN NOT Matched Then
  INSERT VALUES (
     Src.CustomerID,Src.CompanyName,Src.ContactName,Src.ContactTitle,Src.Address,Src.City,Src.Region,Src.PostalCode,Src.Country,
	  Src.Phone, Src.Fax
 );
 update SRC_customer set Phone='987654321'
 Where CustomerID='ALFKI'
 
 Select * from Customer_SCD1


============================================================================
select * into Customer_SCD2 from SRC_customer 
select * from SRC_customer
alter table SRC_customer Add StartDate Date, EndDate Date, Flag int
alter table SRC_customer Add Versions int
update Customer_SCD2 set EndDate='1990-01-01'
update Customer_SCD2 set StartDate=getdate()


WHERE   MERGE_OUT.Action_Out = 'UPDATE';
MERGE Customer_SCD2 As cus
                    USING SRC_customer As src
                    ON ( cus.CustomerID = src.CustomerID )

           WHEN NOT MATCHED
                        THEN
		   INSERT VALUES
                ( src.CustomerID ,
                  src.CompanyName ,
                  src.ContactName ,
				  src.ContactTitle,
				  src.Address,
				  src.City,
				  src.Region,
				  src.PostalCode,
				  src.Country,
				  src.Phone,
				  src.Fax,
				  CONVERT(CHAR(10), GETDATE() - 1, 101) ,
                  getdate() ,
                  1,
				  1
                )
		    WHEN MATCHED AND cus.Flag = 1
                        AND ( cus.Phone!= src.Phone)
                        THEN
		 UPDATE          SET
                cus.Flag = 0
				cus.versions = 1,
                cus.End_date = CONVERT(CHAR(10), GETDATE() - 2, 101)
			OUTPUT $Action Action_Out, 
			( src.CustomerID ,
                  src.CompanyName ,
                  src.ContactName ,
				  src.ContactTitle,
				  src.Address,
				  src.City,
				  src.Region,
				  src.PostalCode,
				  src.Country,
				  src.Phone,
				  src.Fax,
				  CONVERT(CHAR(10), GETDATE() - 1, 101) ,
                  getdate() ,
                  1,
AS MERGE_OUT
WHERE MERGE_OUT.Action_Out = 'UPDATE';








=============================================================================


select * into Customer_SCD3 from SRC_customer 

alter table Customer_SCD3 Add New_Region varchar (255)

=============================================================================


select * into Customer_INC1 from SRC_customer 

================================================================================





create table SRC_human(
Id int,
Name varchar(50),
Salary int,
Start_Date Date,
End_Date Date,
Current_Flag int
)
insert into SRC_human
Values (1,'Jai',8000,'2014-08-08',Null,1),
		(2,'Sai',2000,'2015-06-07',Null,1 ),
		(3,'Umar',9500,'2016-05-09',Null,1)
=================================================================================================================================
SCD_TYPE_2


Select * into Target_human from SRC_human
Select * from SRC_human
select * from Target_human
drop table Target_human
ALTER TABLE SRC_human
DROP COLUMN Start_Date,End_Date,Current_Flag

Insert into Target_human
Select 
Id,Name,Salary,Start_Date,End_Date,Flag
From
(Merge Target_human As T
Using SRC_human As S On
T.Id=S.Id
When matched And  S.Salary != T.Salary and T.Current_Flag=1
Then
Update Set T.Current_Flag=0 ,T.End_Date=getdate()

When Not Matched 
Then
	Insert Values
				(S.Id,S.Name,S.Salary,getdate(),null,1)
				Output $Action Action_Out,
				S.Id,S.Name,S.Salary,getdate() [Start_Date] ,null End_Date ,1 Flag)
				AS MERGE_OUT
				WHERE MERGE_OUT.Action_Out = 'UPDATE'; 

Update SRC_human set salary=3000
 Where Id=2 


==================================================================================================
 
 select * into Target_human_type3 from SRC_human
 drop Table Target_human_type3
 create table Target_human_type3(
 Id Int,
 Name Varchar(50),
 Curren_Salary int,
 Old_Salary Int
 )
 Insert into Target_human_type3(Id,Name,Curren_Salary)
 select Id,Name,Salary from SRC_human
 select * from Target_human_type3
 select * from SRC_human

 merge Target_human_type3 TT
 Using SRC_human SS 
 On TT.Id=SS.Id
 When matched and TT.Curren_Salary!=SS.Salary
 Then
 Update Set TT.Old_Salary=TT.Curren_Salary , TT.Curren_Salary= SS.Salary
 When not matched
 Then insert values
					(SS.Id,SS.Name,SS.Salary,Null);

update SRC_human set Salary=10500
Where Id=22
===========================================================================================================
---------------------INCREMENTAL LOAD-------------------------------------


Select * into Target_incremental from SRC_human
Select * from Target_incremental
Select * from SRC_human
drop table Target_incremental
Merge Target_incremental T
Using SRC_human S
On T.Id=S.Id
When not matched
Then
Insert Values 
			(S.Id,S.Name,S.Salary)
When Matched
Then Update Set T.Salary=S.Salary;


update SRC_human set Salary = 6500 
where ID=4

==============================================================================================================================
					--INCREMENTAL LOAD
select getdate()
Select * from SRC_human

select * into SRC_human_Loading from SRC_human

Alter table SRC_human_Loading
add Created_Date Datetime,Modified_Date Datetime

Select * from SRC_human_Loading

update SRC_human_Loading
set Created_Date='2018-02-17',Modified_Date='2018-02-17'

select * into Target_incremental from SRC_human_Loading
truncate table Target_incremental

select * from Target_incremental

Merge Target_incremental T
using SRC_human_Loading S
on T.id=S.id
When not matched
Then
Insert Values 
			(S.Id,S.Name,S.Salary,S.Created_Date,S.Modified_Date)



where Created_Date>getdate()


create table lookup_table(
Table_Desc varchar(500),
updated_date datetime
)
alter table lookup_table
add Last_Row_Value int
insert into lookup_table
values ('Source_Customer',null,0)
update lookup_table
set updated_date='1900-01-01' where Table_Desc='SRC_human_Loading'
truncate table Target_incremental

select * from Target_incremental
select * from SRC_human_Loading
select * from lookup_table


alter proc incre_load(@d datetime=null)
as
Begin
declare @date_to datetime
Set @date_to=(select updated_date from lookup_table where Table_Desc='SRC_human_Loading')
Merge Target_incremental as T
using SRC_human_Loading as S
on T.id=S.id
When not matched and S.Created_Date>@date_to
Then
Insert Values 
			(S.Id,S.Name,S.Salary,S.Created_Date,S.Modified_Date)
When matched and (S.Name!=T.Name or S.Salary!=T.Salary) 
then
update Set T.Name=S.Name,
	   T.Salary=S.Salary,
	   T.Modified_Date=S.Modified_Date;
end
update lookup_table set updated_date=(select max(Created_Date) from Target_incremental  ) where Table_Desc='SRC_human_Loading'
Go

exec incre_load @date_to='2019-05-14'


@date_to=select updated_date from lookup_table where Table_Desc='SRC_human_Loading'

(select MAx(Created_Date) from Target_incremental  )

update SRC_human_Loading
set Name='Wolverine Yadav',Modified_Date=getdate() where Id=1

insert into SRC_human_Loading
values (6,'Genius',2200,getdate(),getdate())
 updated_date from lookup_table where Table_Desc='SRC_human_Loading'


========================================================================================================================
Question 3.

use northwind
--Source Table
CREATE TABLE Source_Customer(
	Skey int IDENTITY(1,1) NOT NULL Primary key,
	[CustomerID] [nchar](5) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL
) 
insert into Source_Customer
 select * from NOrthwind.[dbo].[Customers]

 select * from Source_Customer

-- Target Table 

CREATE TABLE Customer_INC3(
	Skey int  NOT NULL Primary key,
	[CustomerID] [nchar](5) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	Modified_Date Datetime
) 
insert into Customer_INC2
 select * from NOrthwind.[dbo].[Customers]


--create proc diff_compare(@i int =null)


alter proc diff_compare(@i int =null)
as
Begin
--declare @High_Value int
--Set @High_Value=(select max(Skey) from Source_Customer)

Insert into Customer_INC2
select S.* from Source_Customer as S
left join Customer_INC2 as T
On S.Skey=T.Skey
where T.Skey is null

UPDATE	Customer_INC2  
SET 
           CompanyName=S.CompanyName,
		   ContactName=S.ContactName,
		   ContactTitle=S.ContactTitle,
		   City=S.City
From Customer_INC2 T
INNER JOIN Source_Customer S ON S.Skey=T.Skey
Where S.CompanyName!=T.CompanyName or S.ContactName!=T.ContactName 
				  or S.ContactTitle!=T.ContactTitle or S.City!=T.City
end
update lookup_table set Last_Row_Value=(select max(Skey) from Customer_INC2  ) where Table_Desc='Source_Customer'
Go

--declare @XYZ int
--set @XYZ = (select max(Skey) from Customer_INC2  )
--print @XYZ+2

exec diff_compare
insert into Source_Customer
values ('XYZ','XYZ',null,null,null,null,null,null,null,null,null)
update Source_Customer
set ContactName='Wolverine' where Skey=1




select * from lookup_table
select * from Source_Customer
Select * from Customer_INC2


=================================================================================================================

4. 

Select * from lookup_table
select * from Source_Customer
select * from Customer_INC3


alter table Source_Customer
add Modified_date datetime
update Source_Customer
set Modified_Date='1900-01-01'

create proc Audit_Column(@d datetime=null)
as
Begin
Insert into Customer_INC3
select S.* from Source_Customer as S
left join Customer_INC3 as T
On S.Skey=T.Skey
where T.Skey is null

UPDATE	Customer_INC3 
SET 
           CompanyName=S.CompanyName,
		   ContactName=S.ContactName,
		   ContactTitle=S.ContactTitle,
		   City=S.City,
		   Modified_Date=S.Modified_Date
From Customer_INC3 T
INNER JOIN Source_Customer S ON S.Skey=T.Skey
Where S.CompanyName!=T.CompanyName or S.ContactName!=T.ContactName 
				  or S.ContactTitle!=T.ContactTitle or S.City!=T.City
end
update lookup_table set updated_date=(select max(Created_Date) from Customer_INC3  ) where Table_Desc='Source_Customer'
Go

exec Audit_Column

update Source_Customer
set ContactName='Iron Man',Modified_Date=getdate() where Skey=1


========================================================================================================================

5.

select * into SRC_Order from Northwind.dbo.Orders
Select * from SRC_Order

Bulk insert PRE_STG_ORDERS_EMPLOYEE_ID
from SRC_Order
===========================================================================
6.

use northwind
use T5_Jainendra
select * from [dbo].[Orders] where Shipvia=null
select * from [dbo].[Order_Details]
select * from [dbo].[Shippers]
select * from [dbo].[Suppliers]


select * into TGT_ORDERS_SHIPMENT_COMP
 from  NorthWind.[dbo].[Orders]
Where ShipVia is not null
drop table TGT_ORDERS_SHIPMENT_COMP


Select /*+ parallel */ Count(*) from [Northwind]
EXEC sp_configure 'show advanced options', 1;

====================================================================================================
7.

Select /*+ parallel */ Count(*) from [Northwind].dbo.employees
EXEC sp_configure 'show advanced options', 1;

===================================================================================================
8.

use northwind

select * from northwind.[dbo].[Orders]
select * from northwind.[dbo].Products
select * from northwind.dbo.order_details


CREATE TABLE Orders_Audit(
	[OrderID] [int] NOT NULL,
	[CustomerID] [nchar](5) NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[ShipVia] [int] NULL,
	[Freight] [money] NULL,
	[ShipName] [nvarchar](40) NULL,
	[ShipAddress] [nvarchar](60) NULL,
	[ShipCity] [nvarchar](15) NULL,
	[ShipRegion] [nvarchar](15) NULL,
	[ShipPostalCode] [nvarchar](10) NULL,
	[ShipCountry] [nvarchar](15) NULL,
	Created_Date Datetime,
	Created_By Varchar(50)
) 

insert into Orders_Audit
select O.*,getdate(),Concat(E.FirstName,' ',LastName) from northwind.dbo.Orders as O
join northwind.dbo.Employees As E
On O.EmployeeID=E.EmployeeID

Select * from Orders_Audit

=====================================================================================================================


9.

INSERT into T5_Jainendra.dbo.Stage_Fact
Select Datepart(year,O.OrderDate)As Year_Value,O.OrderID,SUM(P.ProductID) as Total_Product_Sale
from orders as O
join Order_details as OD
On O.OrderID=OD.OrderID
join products P
on OD.ProductID=P.ProductID
group by Datepart(year,O.OrderDate),O.orderID
order by Year(O.OrderDate)

Select * from Stage_Fact


Insert Into ORDERS_AGG
select Year_Value,Count(OrderID) as Total_Orders,Sum(Prod_Sale) as Product_Sales
from Stage_Fact
group by Year_Value

Select * from Orders_agg

=============================================================================================================================

12
use T5_Jainendra

select Distinct* Into T5_Jainendra.dbo.Min_Dimension_Customer
from northwind.[dbo].[Customers]
ALTER TABLE Min_Dimension_Customer
DROP COLUMN CustomerID,ContactName

=====================================================================================================================
14

use northwind
select * from northwind.dbo.orders

Use T5_jainendra

create table Junk_Dim_Orders(
Junk_Key int identity(1,1),
Employee_ID int,
ShipVia int
)

Insert into Junk_Dim_Orders
Select EmployeeID,ShipVia from northwind.dbo.orders

Select * from Junk_Dim_Orders

=======================================================================================================================
13.

select * from northwind.dbo.employees


14.

Same as Q9.
