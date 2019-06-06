use T5_Vijayakumar

Create table SCD3_emp
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
Photo image ,
Notes ntext,
ReportsTo int,
PhotoPath nvarchar(255)
) 

Create table SCD3_Output
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
Precity nvarchar(15),
Country nvarchar(15),
Precountry nvarchar(15),
Created_date datetime,
Updated_date datetime,
Primary key(Sno)
) 
select * from SCD3_Output

select * from SCD3_emp

Insert into SCD3_emp
select * from northwind.dbo.employees

update SCD3_emp set country='USA' where EmployeeID=12 

insert into SCD3_emp values(12,'kumar','vijaya','manager','Mr.','2000-01-01','2018-01-01','25,sss street','madurai','TN',626125,'India','(222) 444-8974',222,'','Education fder',3,'')
