use Northwind
use t5_Vijayakumar


Create table t5_Vijayakumar.dbo.SRC_Customer 
as (select * from Northwind.dboCustomers)


select *into SRC_Customer  from Northwind.dbo.Customers 

select * from Customer_SCD1

select *into Customer_SCD1  from Northwind.dbo.Customers 
select *into Customer_SCD2  from Northwind.dbo.Customers 
select *into Customer_SCD3  from Northwind.dbo.Customers 
select *into Customer_INC1  from Northwind.dbo.Customers

Update SRC_Customer set phone='040-0064312' where CustomerID='ALFKI'


 Merge Customer_SCD1 as SCD1 using SRC_Customer as SRC
 on SCD1.CustomerID=SRC.CustomerID when matched and SCD1.phone<>SRC.phone
 then update set SCD1.phone=SRC.phone when not matched by Target
 then insert Values(SRC.CustomerID,SRC.CompanyName,SRC.ContactName,SRC.ContactTitle,SRC.Address,SRC.City,SRC.Region,SRC.PostalCode,SRC.Country,SRC.Phone,SRC.Fax);