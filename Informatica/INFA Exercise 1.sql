/**********1**************/

/****** Done ************/

/**********2**************/

Create table Dim_Region
(
RegionID int not Null,
RegionDescription nchar (50) Not null
)	

/****** Done ************/

/**********3**************/

/****** Done ************/

/**********4**************/
/****** Done ************/

/**********5**************/

/****** Done ************/

/*********6*************/

Create table dim_emp_detail
(
Full_name varchar(30),
Designation varchar(30),
Location varchar(30)
)

select * from dim_emp_detail
/****** Done ************/


/*********7*************/

Create table Dim_Sales_Rep
(
EmployeeID int Not Null,
Last_name nvarchar(20) Not Null,
First_name nvarchar(20) Not Null,
Title nvarchar(30)
)

select * from Dim_Sales_Rep

/****** Done ************/

/*********8*************/

Create table Dim_Emp_Loc
(
EmployeeID int Not Null,
Last_name nvarchar(20) Not Null,
First_name nvarchar(20) Not Null,
Title nvarchar(30),
City nvarchar(15),
Address nvarchar(60)
)

select * from Dim_Emp_Loc

/****** Done ************/

/*********9*************  Used Expression Transformation** /

Create table suppliers_empid
(
Company_name nvarchar(40) Not Null,
Contact_name nvarchar(30),
Fax nvarchar(24)
)

select * from suppliers_empid

/*********10*************/

select * from Dim_Sales_Rep

/****** Done ************/


/*********11*************/

Create table dim_emp_uk
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
Photo Varchar(Max),
Notes ntext,
ReportsTo int,
PhotoPath nvarchar(255)
)

select * from dim_emp_uk

/****** Done ************/

/*********12*************/*

Create table dim_sales_1997
(
CategoryName nvarchar(15) Not Null,
ProductName nvarchar(40) Not Null,
ProductSales decimal(20,4)
)

select * from dim_sales_1997

/****** Done ************/