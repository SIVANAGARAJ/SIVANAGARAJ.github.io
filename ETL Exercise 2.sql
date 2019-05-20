	--1
	create table Child_population
	(
	id int  identity  not null,
	District_Code char(3),
	Name_UA_City char(50),
	Level char(50),
	Person int,
	Male int,
	Female int
	)


	CREATE TABLE CHILD_SEX_RATION
	 (
		ID INT IDENTITY NOT NULL,
		DISTRICT_CODE  varchar(3),
		SexRatio INT
	 
	 )
	MERGE INTO CHILD_SEX_RATION MD
		USING (
		  SELECT    DISTRICT_CODE, 
		  SUM( CONVERT(INT, CONVERT(DECIMAL,FEMALE)/CONVERT(DECIMAL,MALE)*1000))  AS SEXRATIO
			FROM CHILD_POPULATION GROUP BY DISTRICT_CODE
			) RD
		ON MD.DISTRICT_CODE = RD.DISTRICT_CODE
		WHEN NOT MATCHED BY TARGET THEN
		INSERT VALUES (RD.DISTRICT_CODE,RD.SEXRATIO)
		WHEN MATCHED THEN
		UPDATE SET MD.SexRatio = RD.SEXRATIO;	
		
		--2
		
		  select min(len(District_Code)) as District_Code_min, max(len(District_Code)) as District_Code_max,
	  min(len(Name_UA_City)) as Name_UA_City_min, max(len(Name_UA_City)) as Name_UA_City_max,
	  min(len(Level)) as Level_min, max(len(Level)) as Level_max,
		min(len(Person)) as Person_min, max(len(Person)) as Person_max,
		 min(len(Male)) as Male_min, max(len(Male)) as Male_max,
		  min(len(Female)) as Female_min, max(len(Female)) as Female_max

	 from CHILD_POPULATION
	 
	 
	 --or
	 
	 
	 DECLARE @sql VARCHAR(MAX)
	DECLARE @q CHAR(1)
	DECLARE @ColumnName sysname
	 -- single quote
	DECLARE @qq CHAR(2)
	DECLARE @stmtNum VARCHAR(MAX)
	DECLARE @TableName sysname
	 
	DECLARE @Schema sysname
	 
	DECLARE @Results TABLE
		(
			[Schema] sysname ,
			[Table Name] sysname ,
		   [Column Name] sysname ,
		  [Min Len/Val] VARCHAR(50) ,
		  [Max Len/Val] VARCHAR(50) 
		  
		)
	SET @q = ''''
	SET @qq = @q + @q

	SET @stmtNum =  ' len(min([@@replace])) AS [Min @@replace], ' + 'len(max([@@replace])) AS [Max @@replace] '

	DECLARE TableCursor CURSOR
	FOR
		SELECT 
				 c.TABLE_SCHEMA ,
				
				c.TABLE_NAME ,
				  
				c.COLUMN_NAME 
				
		FROM    INFORMATION_SCHEMA.COLUMNS c
				INNER JOIN INFORMATION_SCHEMA.TABLES t ON t.TABLE_SCHEMA = c.TABLE_SCHEMA
														  AND t.TABLE_NAME = c.TABLE_NAME
		WHERE   c.TABLE_SCHEMA IN ( 'dbo' )  --------------------------------
				AND c.TABLE_NAME LIKE 'CHILD_POPULATION%'  -- <<< Schema, table and view names to analyze go here
				AND t.TABLE_TYPE NOT IN ( 'VIEW' ) --------------------------------
		ORDER BY c.TABLE_NAME ,
				c.ORDINAL_POSITION

	OPEN TableCursor

	FETCH NEXT
	FROM TableCursor
	INTO   @Schema,   @TableName, @ColumnName 

	WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @sql =  @stmtNum

	SET @sql = REPLACE(@sql, '@@replace' , @ColumnName)

	PRINT @sql

			IF @sql <> ''
				BEGIN
					 
					SET @Schema = @q + @Schema + @q
					 
					SET @TableName = @q + @TableName + @q
					 SET @ColumnName = @q + REPLACE(@ColumnName, @q, @qq) + @q
					SET @sql = 'SELECT '   + @Schema + ', ' + @TableName + ', ' + @ColumnName +  ', ' + @sql + ' FROM [' + REPLACE(@Schema, '''', '') + '].['
						+ REPLACE(@TableName, '''', '') + ']'

					PRINT @sql

					INSERT  INTO @Results EXECUTE ( @sql )
				END

			FETCH NEXT
	  FROM TableCursor
	  INTO @Schema,  @TableName,  @ColumnName 
		END

		CLOSE TableCursor

	DEALLOCATE TableCursor



	SELECT  [Schema] ,[Table Name] , [Column Name] , [Min Len/Val] MINLENGTH  , [Max Len/Val] MAXLENGTH 
			 
	FROM    @Results ORDER BY [Table Name] ,[Column Name]
	 
	 
	 --3
	 
	 --effective date approach to find the diffrence between table
	 
	 
	 DECLARE @CurrentDateTime datetime
	DECLARE @MinDateTime datetime
	DECLARE @MaxDateTime datetime
	SELECT
	@CurrentDateTime = cast(getdate() as date),
	@MinDateTime = cast('1900-01-01' as date),
	@MaxDateTime = cast('9999-12-31' as date)
	
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
	 
	 
	 
	 --4
	 
CREATE TABLE [dbo].[TBL_district_code](
[State_Code] int,
[District_Code] [varchar](3) NULL,
[Name_UA_City] [varchar](50) NULL,
[Level] [varchar](50) NULL

)  


create table C_Child_population
(
id int  identity  not null,
District_Code char(2),
Name_UA_City varchar(30),
Level varchar(4),
Person int,
Male int,
Female int
)



MERGE INTO C_CHILD_POPULATION MD
		USING (
		  SELECT    LTRIM(RTRIM(District_Code)) AS District_Code ,LTRIM(RTRIM(Name_UA_City)) AS Name_UA_City,LTRIM(RTRIM(Level)) AS Level,LTRIM(RTRIM(Person)) AS Person,LTRIM(RTRIM(Male)) AS Male,LTRIM(RTRIM(Female)) AS Female
			FROM CHILD_POPULATION      WHERE   LTRIM(RTRIM(District_Code))  IN(  
			SELECT LTRIM(RTRIM(District_Code)) FROM    [TBL_district_code] )
			 
			) RD
		ON MD.DISTRICT_CODE = RD.DISTRICT_CODE
		WHEN NOT MATCHED BY TARGET THEN
		INSERT VALUES (RD.DISTRICT_CODE,RD.Name_UA_City,RD.Level,RD.Person,RD.Male,RD.Female);


--5


 create table ERR_LOG
 (
 ERROR_CD INT,
 SRC_KEY VARCHAR(50)

 )
 

 
 create table ERR_lOOKUP
 (
 ERROR_CODE INT,
 ERROR_DESC VARCHAR(50)

 )

 INSERT INTO ERR_lOOKUP VALUES (1001,'Missing district code in lookup table')
 
 
select * into #temp1 from (
(select * from Child_population
except 
select * from c_Child_population)

insert into ERR_LOG
select  DISTINCT 1001 ,tp.District_Code FROM  #temp1 tp 



 
	 --6
	 
	 
	 
	 
	 
	 
	 --7	 
	 
	 BEGIN TRAN
-- Pull distinct records in the temporary table 
SELECT DISTINCT * INTO #Employee 
FROM Employee 
--Truncate the target table 
TRUNCATE TABLE Employee 
--Insert the distinct records from temporary table 
--back to target table 
INSERT INTO Employee SELECT * FROM #Employee 
--Drop the temporary table 
IF OBJECT_ID('tempdb..#Employee') IS NOT NULL 
  DROP TABLE #Employee 
COMMIT TRAN
GO 

SELECT * FROM Employee 
GO 