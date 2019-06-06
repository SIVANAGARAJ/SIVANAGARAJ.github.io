 select * from [dbo].[Categories]
 select * from [dbo].[CustomerCustomerDemo]
 select * from [dbo].[CustomerDemographics]
 select * from [dbo].[Customers]
 select * from [dbo].[DailyLoad$]
 select * from [dbo].[Employees]
 select * from [dbo].[EmployeeTerritories]
 select * from [dbo].[MPS]
 select * from [dbo].[Order_Details]
 select * from [dbo].[Orders]
 select * from [dbo].[Products]
 select * from [dbo].[Region]
 select * from [dbo].[Shippers]
 select * from [dbo].[Suppliers]
 select * from [dbo].[sysdiagrams]
 select * from [dbo].[Territories]


 SELECT * FROM INFORMATION_SCHEMA.columns where Table_name='Categories'

 select * from emp


 select SupplierID,Count(*) from Products group by SupplierID having count(*)>1