	--1
	create table Child_population
	(
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
	 
	 