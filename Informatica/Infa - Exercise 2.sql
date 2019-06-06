/************1*********************/

Create table Tgt_Infex_t1
(
Product_Name nvarchar(40) Not Null,
Category_Name nvarchar(15) Not Null,
SupplierName nvarchar(40) Not Null
)

select * from Tgt_Infex_t1

/************Done*********************/

/************2*********************/
Create Table TgtInfext2
(
Order_Id varchar(20) Not Null,
Contact_Name nvarchar(30),
Order_Date datetime,
Shipping_Company_Name nvarchar(40),
Ship_Country nvarchar(15)
)

select * from TgtInfext2

/************Done*********************/

/************3*********************/
Create table Tgt_Infex_t3
(
Product_name nvarchar(40),
Contact_Title nvarchar(30)
)
select * from Tgt_Infex_t3
/************Done*********************/

/************4*********************/

Create table Tgt_Infex_t4
(
Supplier_ID int Not Null,
Company_Name nvarchar(40) Not Null,
Contact_Name nvarchar(30),
Contact_Title nvarchar(30),
Address nvarchar(60),
City nvarchar(15),
Region nvarchar(15),
Postal_Code nvarchar(10),
Country nvarchar(15),
Phone nvarchar(24),
Fax nvarchar(24),
Home_Page ntext,
Product_ID int Not Null,
Product_Name nvarchar(40) Not Null
)

select * from Tgt_Infex_t4
/************Done*********************/

/************5*********************/

Create table Tgt_Infex_t5
(
Supplier_ID int Not Null,
Company_Name nvarchar(40) Not Null,
Contact_Name nvarchar(30),
UnitPrice money,
Contact_Title nvarchar(30),
Address nvarchar(60),
City nvarchar(15),
Region nvarchar(15),
Postal_Code nvarchar(10),
Country nvarchar(15),
Phone nvarchar(24),
Fax nvarchar(24),
Home_Page ntext
)

select * from Tgt_Infex_t5

/************Done*********************/

/************6*********************/
Create table Tgt_Infex_t6
(
CustomerID nchar(5),
ShipName nvarchar(40),
Shipcity nvarchar(15),
TerritoryDescription nchar(50) Not Null,
Unitprice money Not Null,
Discount real Not Null,
TerritoryID nvarchar(20) Not Null
)

select * from Tgt_Infex_t6

drop table Tgt_Infex_t6


/************7*********************/
create table Tgt_Infex_t7
(
OrderID int Not Null,
CustomerID nchar(5),
Unitprice money Not Null,
Quantity smallint Not Null
)

select * from Tgt_Infex_t7

/************Done*********************/

/************8*********************/

create table Tgt_Infex_t8
(
Categoryid int Not Null,
CategoryName nvarchar(15) Not Null,
Description ntext,
ProductName nvarchar(40) Not Null,
SupplierID int,
Unitprice money
)

/************Doubt*********************/

/************9*********************/

create table Tgt_Infex_t9
(
Order_Id varchar(20) Not Null,
Contact_Name nvarchar(30),
Order_Date datetime,
Shipping_Company_Name nvarchar(40),
Ship_Country nvarchar(15)
)

select * from Tgt_Infex_t9

/************Done*********************/

/************10*********************/

create table Tgt_Infex_t10_Shipvia1
(
Productname nvarchar(40) Not Null,
Shipvia int
)

create table Tgt_Infex_t10_Shipvia2
(
Productname nvarchar(40) Not Null,
Shipvia int
)

create table Tgt_Infex_t10_Shipvia3
(
Productname nvarchar(40) Not Null,
Shipvia int
)

select * from Tgt_Infex_t10_Shipvia1
select * from Tgt_Infex_t10_Shipvia2
select * from Tgt_Infex_t10_Shipvia3

/************Done*********************/
