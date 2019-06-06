use T5_Vijayakumar

Create table SCD1_Output
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
PhotoPath nvarchar(255),
Primary key(EmployeeID)
) 

drop table SCD1_emp


Create table SCD1_emp
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

drop table SCD1_Source

select * from SCD1_Output
select * from SCD1_emp

Insert into SCD1_emp
select * from northwind.dbo.employees

update SCD1_emp set City='Glendale' where EmployeeID=4 

insert into SCD1_emp values(12,'kumar','vijaya','mm','Mr.','2000-01-01','2018-01-01','25,sss street','chennai','TN',626125,'India','(222) 444-8974',222,'','Education fder',3,'')