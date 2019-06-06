CREATE TABLE [dbo].[Customer_SCD1](
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
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[Customer_SCD2](
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
	[version] [int] NOT NULL,
	[startDate] [date] NOT NULL,
	[endDate] [date] NOT NULL,
	[Flag] [int] NOT NULL
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[Customer_SCD3](
	[CustomerID] [nchar](5) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Current_Region] [nvarchar](15) NULL,
	[Previous_Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL 

) ON [PRIMARY]

 GO
CREATE TABLE [dbo].[Customer_INC1](
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

) ON [PRIMARY]

GO
--SCD 1-CREATE STORED PROCEDURE

Merge Customer_SCD1 as SCD1 using SRC_Customer as SRC
 on SCD1.CustomerID=SRC.CustomerID when matched and SCD1.phone<>SRC.phone
 then update set SCD1.phone=SRC.phone when not matched by Target
 then insert Values(SRC.CustomerID,SRC.CompanyName,SRC.ContactName,SRC.ContactTitle,SRC.Address,SRC.City,SRC.Region,SRC.PostalCode,SRC.Country,SRC.Phone,SRC.Fax);


/********2(2)****************/

DECLARE @CurrentDateTime datetime
DECLARE @MinDateTime datetime
DECLARE @MaxDateTime datetime
SELECT
	@CurrentDateTime = cast(getdate() as date),
	@MinDateTime = cast('1900-01-01' as date),
	@MaxDateTime = cast('9999-12-31' as date)
 
 INSERT INTO [Customer_SCD2]
(
	CustomerID,
	CompanyName,
	ContactName,
	ContactTitle,
	Address,
	City,
	Region,
	PostalCode,
	Country,
	Phone,
	Fax,
	version,
	startDate,
	endDate,
	Flag
)
 SELECT 
	CustomerID,
	CompanyName,
	ContactName,
	ContactTitle,
	Address,
	City,
	Region,
	PostalCode,
	Country,
	Phone,
	Fax,
	version,
	startDate,
	endDate,
	Flag
FROM
	( MERGE [Customer_SCD2]  CM
		USING  SRC_Customer CS
	ON (CM.CustomerID = CS.CustomerID )
	WHEN NOT MATCHED THEN
		INSERT VALUES (
	CS.CustomerID,
	CS.CompanyName,
	CS.ContactName,
	CS.ContactTitle,
	CS.Address,
	CS.City,
	CS.Region,
	CS.PostalCode,
	CS.Country,
	CS.Phone,
	CS.Fax,
	 1,
	@MinDatetime,
	 @MaxDateTime, 1)
	 
	WHEN MATCHED AND
	([EndDate] = @MaxDateTime OR ([EndDate] IS NULL AND @MaxDateTime IS NULL))
	AND
	 CM.Flag = 1 AND (CM.PostalCode <> CS.PostalCode ) THEN
		 UPDATE SET CM.Flag =0, CM.Enddate = @CurrentDateTime
 
	OUTPUT $Action Action_Out, 
			CS.CustomerID,
	CS.CompanyName,
	CS.ContactName,
	CS.ContactTitle,
	CS.Address,
	CS.City,
	CS.Region,
	CS.PostalCode,
	CS.Country,
	CS.Phone,
	CS.Fax,
	INSERTED.VERSION+1 AS VERSION,
	@CurrentDateTime as startDate, 
			@MaxDateTime EndDate, 
			1 Flag) 
			

AS MERGE_OUT
WHERE MERGE_OUT.Action_Out = 'UPDATE';



--truncate table [Customer_SCD3]

SELECT * INTO SRC_Customer FROM NorthWind..CUSTOMERS

MERGE [Customer_SCD3]  CM
USING  SRC_Customer CS
ON (CM.CustomerID = CS.CustomerID )
WHEN NOT MATCHED   THEN
INSERT VALUES (
CS.CustomerID,
CS.CompanyName,
CS.ContactName,
CS.ContactTitle,
CS.Address,
CS.City,
CS.Region,
NULL,
CS.PostalCode,
CS.Country,
CS.Phone,
CS.Fax )
	 
WHEN MATCHED AND  (CM.Current_Region <> CS.Region ) THEN
UPDATE SET CM.Previous_Region=CM.Current_Region, CM.Current_Region= CS.REGION; 			


--INCREMENTAL LOAD
 --2  -->4

	MERGE [Customer_INC1]  CM
	USING  SRC_Customer CS
	ON (CM.CustomerID = CS.CustomerID )
	WHEN NOT MATCHED BY TARGET THEN
	INSERT VALUES (
	CS.CustomerID,
	CS.CompanyName,
	CS.ContactName,
	CS.ContactTitle,
	CS.Address,
	CS.City,
	CS.Region,
	CS.PostalCode,
	CS.Country,
	CS.Phone,
	CS.Fax )
	 
	WHEN MATCHED AND 
	(
					CS.CompanyName <> CM.CompanyName
                  OR CS.ContactName <> CM.ContactName
                  OR CS.ContactTitle <> CM.ContactTitle
                  OR CS.Address <> CM.Address
				  OR CS.City <> CM.City
                  OR CS.Region <> CM.Region
                  OR CS.PostalCode <> CM.PostalCode
				  OR CS.Country <> CM.Country
				  OR CS.Phone <> CM.Phone
                  OR CS.Fax <> CM.Fax
	)
	
	THEN
	UPDATE SET  CM.CompanyName = CS.CompanyName,
                    CM.ContactName = CS.ContactName,
                    CM.ContactTitle = CS.ContactTitle,
                    CM.Address = CS.Address,
				    CM.City = CS.City,
                    CM.Region = CS.Region,
                    CM.PostalCode = CS.PostalCode,
				    CM.Country = CS.Country,
				    CM.Phone = CS.Phone,
                    CM.Fax = CS.Fax 

					WHEN NOT MATCHED BY SOURCE THEN DELETE;
					
														
 --3  
	MERGE [Customer_INC1]  CM
	USING  SRC_Customer CS
	ON (CM.CustomerID = CS.CustomerID )
	WHEN NOT MATCHED BY TARGET THEN
	INSERT VALUES (
	CS.CustomerID,
	CS.CompanyName,
	CS.ContactName,
	CS.ContactTitle,
	CS.Address,
	CS.City,
	CS.Region,
	CS.PostalCode,
	CS.Country,
	CS.Phone,
	CS.Fax )
	 
	WHEN MATCHED AND 
	(
					BINARY_CHECKSUM(CS.CompanyName,CS.ContactName,CS.ContactTitle,CS.Address,CS.City,CS.Region,CS.PostalCode,CS.Country,CS.Phone,
					CS.Fax)!=BINARY_CHECKSUM(
					CM.CompanyName,CM.ContactName,CM.ContactTitle,CM.Address,CM.City,CM.Region,CM.PostalCode,CM.Country,CM.Phone,
					CM.Fax)

					 
	)
	
	THEN
	UPDATE SET  CM.CompanyName = CS.CompanyName,
                    CM.ContactName = CS.ContactName,
                    CM.ContactTitle = CS.ContactTitle,
                    CM.Address = CS.Address,
				    CM.City = CS.City,
                    CM.Region = CS.Region,
                    CM.PostalCode = CS.PostalCode,
				    CM.Country = CS.Country,
				    CM.Phone = CS.Phone,
                    CM.Fax = CS.Fax 

					WHEN NOT MATCHED BY SOURCE THEN DELETE;
					
-->4			

	MERGE [Customer_INC3]  CM
	USING  SRC_Customer CS
	ON (CM.CustomerID = CS.CustomerID )
	WHEN NOT MATCHED BY TARGET THEN
	INSERT VALUES (
	CS.CustomerID,
	CS.CompanyName,
	CS.ContactName,
	CS.ContactTitle,
	CS.Address,
	CS.City,
	CS.Region,
	CS.PostalCode,
	CS.Country,
	CS.Phone,
	CS.Fax,
	Modified_Date )
	 
	WHEN MATCHED AND 
	(
				CS.Modified_Date>CM.Modified_Date 
	)
	
	THEN
	UPDATE SET  CM.CompanyName = CS.CompanyName,
                    CM.ContactName = CS.ContactName,
                    CM.ContactTitle = CS.ContactTitle,
                    CM.Address = CS.Address,
				    CM.City = CS.City,
                    CM.Region = CS.Region,
                    CM.PostalCode = CS.PostalCode,
				    CM.Country = CS.Country,
				    CM.Phone = CS.Phone,
                    CM.Fax = CS.Fax,
					CM.Modified_Date=CS.Modified_Date

					WHEN NOT MATCHED BY SOURCE THEN DELETE;					
														
--5

--CREATE NEW DB

CREATE TABLE [dbo].[PRE_STG_ORDERS_EMPLOYEE_ID](
	ID INT IDENTITY(1, 1) NOT NULL, 
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
	[ShipCountry] [nvarchar](15) NULL
) ON [PRIMARY]

GO


CREATE TABLE [dbo].[STG_ORDERS_EMPLOYEE_ID](
	ID INT IDENTITY(1, 1) NOT NULL, 
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
	[ShipCountry] [nvarchar](15) NULL
) ON [PRIMARY]

GO

 
CREATE TABLE [dbo].[TGT_ORDERS_EMPLOYEE_ID](
	ID INT IDENTITY(1, 1) NOT NULL, 
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
	[ShipCountry] [nvarchar](15) NULL
) ON [PRIMARY]

 
GO							
							
							
SELECT * INTO SRC_ORDER FROM NorthWind..Orders


--BULK LOAD
INSERT INTO PRE_STG_ORDERS_EMPLOYEE_ID

SELECT * FROM SRC_ORDER

--TRUNCATE AND LOAD
GO
TRUNCATE  TABLE STG_ORDERS_EMPLOYEE_ID
GO
INSERT INTO  STG_ORDERS_EMPLOYEE_ID

SELECT ORDERID,CUSTOMERID,EMPLOYEEID,ORDERDATE,REQUIREDDATE,SHIPPEDDATE,SHIPVIA,FREIGHT,SHIPNAME,SHIPADDRESS,SHIPCITY,SHIPREGION,SHIPPOSTALCODE,SHIPCOUNTRY
FROM PRE_STG_ORDERS_EMPLOYEE_ID


GO

--INCREMENTAL LOAD

 	MERGE [TGT_ORDERS_EMPLOYEE_ID]  CM
	USING  STG_ORDERS_EMPLOYEE_ID CS
	ON (CM.OrderID = CS.OrderID )
	WHEN NOT MATCHED BY TARGET THEN
	INSERT VALUES (
	CS.ORDERID,
	CS.CUSTOMERID,
	CS.EMPLOYEEID,
	CS.ORDERDATE,
	CS.REQUIREDDATE,
	CS.SHIPPEDDATE,
	CS.SHIPVIA,
	CS.FREIGHT,
	CS.SHIPNAME,
	CS.SHIPADDRESS,
	CS.SHIPCITY,
	CS.SHIPREGION,
	CS.SHIPPOSTALCODE,
	CS.SHIPCOUNTRY )
	 
	WHEN MATCHED AND 
	(
				CS.ORDERDATE>CM.ORDERDATE 
	)
	
	THEN
	UPDATE SET  CM.CUSTOMERID = CS.CUSTOMERID,
			CM.EMPLOYEEID = CS.EMPLOYEEID,
			CM.ORDERDATE = CS.ORDERDATE,
			CM.REQUIREDDATE = CS.REQUIREDDATE,
			CM.SHIPPEDDATE = CS.SHIPPEDDATE,
			CM.SHIPVIA = CS.SHIPVIA,
			CM.FREIGHT = CS.FREIGHT,
			CM.SHIPNAME = CS.SHIPNAME,
			CM.SHIPADDRESS = CS.SHIPADDRESS,
			CM.SHIPCITY = CS.SHIPCITY,
			CM.SHIPREGION=CS.SHIPREGION,
			CM.SHIPPOSTALCODE = CS.SHIPPOSTALCODE,
			CM.SHIPCOUNTRY = CS.SHIPCOUNTRY
			 
			WHEN NOT MATCHED BY SOURCE THEN DELETE;		
						
---6
 
SELECT *INTO TGT_ORDERS_SHIPMENT_COMP
 FROM NORTHWIND..ORDERS WHERE SHIPPEDDATE IS NOT NULL
 
 SELECT *INTO TGT_ORDERS_SHIPMENT_NOT_COMP
 FROM NORTHWIND..ORDERS WHERE SHIPPEDDATE IS   NULL

----7

Select /*+ parallel */ Count(*) from [Northwind].dbo.employees
EXEC sp_configure 'show advanced options', 1;

 
---8

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

 
 --9
 
 CREATE TABLE ORDERS_AGG
(
ID INT IDENTITY(1,1) NOT NULL,
PRODUCTID INT,
YEAR INT,
SALES DECIMAL(15,2)
)


INSERT INTO ORDERS_AGG
SELECT ORDD.PRODUCTID,DATEPART(YEAR, ORDERDATE) AS YEAR,ROUND(SUM((UNITPRICE*QUANTITY)-DISCOUNT),1) AS SALES  FROM
NORTHWIND..ORDER_DETAILS ORDD INNER JOIN  NORTHWIND..ORDERS ORD
ON
ORD.ORDERID=ORDD.ORDERID
GROUP BY DATEPART(YEAR, ORDERDATE),ORDD.PRODUCTID  ORDER BY PRODUCTID,DATEPART(YEAR, ORDERDATE)

--10

 --Dimension History-scd 2 type
CREATE TABLE [dbo].[Subscriber_Dim](
	[Sub_Key] [int] NOT NULL,
	[Account_ID] [int] NOT NULL,
	[Phone_Number] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
	[eff_date] [datetime] NOT NULL,
	[exp_Date] [datetime] NOT NULL,
	[Flag] int	
) ON [PRIMARY]

GO

--source fact
CREATE TABLE [dbo].[SRC_Sub_Credit_Fact](
	[Account_id] [int] NOT NULL,
	[Credit_Count] [int] NOT NULL,
	[eff_date] [datetime] NOT NULL,
	[exp_Date] [datetime] NOT NULL
) ON [PRIMARY]



 
--target fact
CREATE TABLE [dbo].[Sub_Credit_Fact](
	[Sub_Key] [int] NOT NULL,
	[Credit_Count] [int] NOT NULL,
	[eff_date] [datetime] NOT NULL,
	[exp_Date] [datetime] NOT NULL
) ON [PRIMARY]

GO


--Run the script before loading fact table 
BEGIN TRANSACTION;

	--When loading the fact record, the associated dimension table history has to be searched to find out the appropriate surrogate key which is effective at the time of the transaction occurrences
	 --Find dimension Id   from dimension scd 2 history table by using natural Key , eff_date and exp_Date  
    	
    ---To insert late arriving fact members
  
	INSERT INTO sub_credit_fact (Sub_Key, Credit_Count, eff_date,exp_Date)
    SELECT  dim.Sub_Key, fact.Credit_Count,dim.eff_date,dim.exp_Date
    FROM [SRC_Sub_Credit_Fact] AS fact
    INNER JOIN  Subscriber_Dim AS dim ON fact.[Account_id]=dim.[Account_id] and
	fact.eff_date=dim.eff_date and fact.exp_Date=dim.exp_Date

COMMIT TRANSACTION;

							
--11  

--SCD TYPE 1

--- This is the dimension table:
CREATE TABLE DW.dimension (
    [ID] int IDENTITY(1, 1) NOT NULL,
    naturalKey varchar(10) NOT NULL,
    [name] varchar(100) NOT NULL,
    isLateArriving bit NOT NULL,
    PRIMARY KEY CLUSTERED ([ID])
);



--- This is the fact table, complete with foreign key constraint:
CREATE TABLE DW.fact (
    [date] date NOT NULL,
    _dimension_ID int NOT NULL,
    amount numeric(10, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([date], _dimension_ID),
    FOREIGN KEY (_dimension_ID) REFERENCES DW.dimension ([ID])
);


--- Staging data for dimension members:
CREATE TABLE #sourceMembers (
    naturalKey varchar(10) NOT NULL,
    [name] varchar(100) NOT NULL,
    PRIMARY KEY CLUSTERED (naturalKey)
);

--- ... except, members 003 and 004 haven't arrived yet:
INSERT INTO #sourceMembers (naturalKey, [name])
VALUES ('001', 'First member'),
       ('002', 'Second member'),
/*     ('003', 'Third member'),
       ('004', 'Fourth member'), */
       ('005', 'Fifth member'),
       ('006', 'Sixth member');


--- Staging data for facts:
CREATE TABLE #sourceData (
    [date] date NOT NULL,
    naturalKey varchar(10) NOT NULL,
    amount numeric(10, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([date], naturalKey)
);

INSERT INTO #sourceData ([date], naturalKey, amount)
VALUES ({d '2013-12-31'}, '001', 1000.00),
       ({d '2014-01-31'}, '001', 1000.00),
       ({d '2014-02-28'}, '002', 1000.00),
       ({d '2014-03-31'}, '002', 1000.00),
       ({d '2014-04-30'}, '003', 1000.00),
       ({d '2014-05-31'}, '003', 1000.00),
       ({d '2014-06-30'}, '004', 1000.00),
       ({d '2014-07-31'}, '004', 1000.00),
       ({d '2014-08-31'}, '005', 1000.00);

--- This is how we load the dimension table:
MERGE INTO DW.dimension AS dim
USING #sourceMembers AS src ON
    dim.naturalKey=src.naturalKey

WHEN NOT MATCHED BY TARGET THEN
    INSERT (naturalKey, [name], isLateArriving)
    VALUES (src.naturalKey, src.[name], 0)

WHEN MATCHED THEN
    UPDATE SET dim.[name]=src.[name], dim.isLateArriving=0;
	
-- run the script to find late arriving dimension	
--- Populating the dimension table with placeholders for
--- late-arriving members	
	
BEGIN TRANSACTION;

--- Populating the dimension table with placeholders for
--- late-arriving members
INSERT INTO DW.dimension (naturalKey, [name], isLateArriving)
SELECT DISTINCT fact.naturalKey, '(Late-arriving name)', 1
FROM #sourceData AS fact
WHERE fact.naturalKey NOT IN (
	SELECT naturalKey FROM DW.dimension);

--- Populating fact table
INSERT INTO DW.fact ([date], _dimension_ID, amount)
SELECT fact.[date], dim.[ID] AS _dimension_ID, fact.amount
FROM #sourceData AS fact
INNER JOIN DW.dimension AS dim ON fact.naturalKey=dim.naturalKey;


COMMIT TRANSACTION;
	
	
---12 mini dimension out of customer

 Create table Dim_Customer_Attribute
 (
 Cust_Attr_ID nvarchar(8),
 Cust_Attr_Age Varchar(5),
 Cust_Attr_Income Varchar(25),
 Cust_Attr_Lifetime_Purchases Varchar(25),
 Cust_Attr_Rating Varchar(15),
 Cust_Attr_Account_Status Varchar(10)
 )

--13 shrunken dimension out of employee
  
 Create table Dim_Employee_Attribute1
 (
 Emp_Attr_Key int Identity(1,1) Not Null,
 Emp_Attr_ID int,
 Emp_Attr_Age Varchar(5),
 Emp_Attr_Salary Varchar(25),
 Emp_Attr_Phone_no Varchar(10),
 Emp_Attr_Rating Varchar(15),
 Primary Key(Emp_Attr_Key)
 )
--14 Answer is NO