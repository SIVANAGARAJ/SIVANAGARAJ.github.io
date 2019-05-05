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
							