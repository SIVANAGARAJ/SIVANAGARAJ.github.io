Create table SCD2_emp
(
EmployeeID int Not Null,
LastName nvarchar(20) Not Null,
FirstName nvarchar(10) Not Null,
Title nvarchar(30),
TitleOfCourtesy nvarchar(25),
BirthDate datetime,
HireDate datetime,
Address nvarchar(60),
City nvarchar(15),
Region nvarchar(15),
PostalCode nvarchar(10),
Country nvarchar(15),
HomePhone nvarchar(24),
Extension nvarchar(4),
Photo image,
Notes ntext,
ReportsTo int,
PhotoPath nvarchar(255)
) 

Create table SCD2_Output
(
Sno int identity(1,1) Not Null,
EmployeeID int Not Null,
LastName nvarchar(20) Not Null,
FirstName nvarchar(10) Not Null,
Title nvarchar(30),
TitleOfCourtesy nvarchar(25),
BirthDate datetime,
HireDate datetime,
Address nvarchar(60),
City nvarchar(15),
Region nvarchar(15),
PostalCode nvarchar(10),
Country nvarchar(15),
HomePhone nvarchar(24),
Extension nvarchar(4),
Photo image,
Notes ntext,
ReportsTo int,
PhotoPath nvarchar(255),
StartDate Datetime,
EndDate Datetime,
Flag int,
Version int,
Primary key(Sno)
) 

Insert into SCD2_emp
select * from northwind.dbo.employees


select * from SCD2_Output

select * from SCD2_emp

update SCD2_emp set City='Madurai' where EmployeeID=4