CREATE TABLE [dbo].[Customer](
	[First_Name] [varchar](25) NULL,
	[Last_Name] [varchar](25) NULL,
	[Address] [varchar](25) NULL,
	[City] [varchar](25) NULL,
	[Country] [varchar](25) NULL,
	[Birth_Date] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customer] ([First_Name], [Last_Name], [Address], [City], [Country], [Birth_Date]) VALUES (N'Mani', N'vasagam', N'10,Middle Street', N'Chennai', N'India', CAST(N'1985-01-10' AS Date))
GO
INSERT [dbo].[Customer] ([First_Name], [Last_Name], [Address], [City], [Country], [Birth_Date]) VALUES (N'Siva', N'Ram', N'74/10,Vallalar Street', N'Chennai', N'India', CAST(N'1987-01-01' AS Date))
GO
INSERT [dbo].[Customer] ([First_Name], [Last_Name], [Address], [City], [Country], [Birth_Date]) VALUES (N'Venkat', N'Bala', N'10,Cross Street', N'Chennai', N'India', CAST(N'1985-12-31' AS Date))
GO
INSERT [dbo].[Customer] ([First_Name], [Last_Name], [Address], [City], [Country], [Birth_Date]) VALUES (N'Ravi', N'kasi', N'101,Main Road', N'Chennai', N'India', CAST(N'1987-10-10' AS Date))
GO



Create View [dbo].[V_Customer]
As select First_Name,Last_Name,Country
from Customer
GO



SELECT [First_Name]
  ,[Last_Name]
  ,[Country]
FROM [dbo].[V_Customer]

INSERT INTO [dbo].[V_Customer]
	   ([First_Name]
	   ,[Last_Name]
	   ,[Country])
 VALUES ('murali','ganesh','india')
 
 
 DELETE FROM [dbo].[V_Customer] where [First_Name]='murali'
 
 update [dbo].[V_Customer] set first_name='arun' where Last_name='Bala'
 
 
 
 
 
 --function
 
 --scalar
 
 
CREATE FUNCTION sales.udfNetSale(
    @quantity INT,
    @list_price DEC(10,2),
    @discount DEC(4,2)
)
RETURNS DEC(10,2)
AS 
BEGIN
    RETURN @quantity * @list_price * (1 - @discount);
END;
  
  
  
  --table value
  
  CREATE FUNCTION getFullname (
    @firstname varchar(max),@lastname varchar(max)
)
RETURNS TABLE
AS
RETURN
    SELECT 
        first_name +','+last_name  as fullname
    FROM
        [V_Customer]
    WHERE
        first_name = @firstname and last_name=@lastname
		
		-----
		
		select * from getFullname('Mani','vasagam')
		--table value without param
		
		
		  CREATE FUNCTION getcustomerlist()
RETURNS TABLE
AS
RETURN
    SELECT *
    FROM
        [V_Customer]
    
		------
		    select * from getcustomerlist()
			
			
			
--procedure


CREATE procedure getFullnamesp (
    @firstname varchar(max),@lastname varchar(max)
)
 
AS
begin
    SELECT 
        first_name +','+last_name  as fullname
    FROM
        [V_Customer]
    WHERE
        first_name = @firstname and last_name=@lastname

end
 


---CREATE procedure getViewTableSp  
AS
begin
    SELECT *
    FROM
        [V_Customer]
    
end
 

---insert

CREATE procedure InsertViewTableSp  
(
@First_Name varchar(max),
@Last_Name varchar(max),
@Country varchar(max)
)
AS
begin
  INSERT INTO [dbo].[V_Customer]
           ([First_Name]
           ,[Last_Name]
           ,[Country])
     VALUES (@First_Name,@Last_Name,@Country)
    
end
 
 
 --update  
 
			
	CREATE procedure UpdateViewTableSp  
(
@First_Name varchar(max),
@Update_first_Name varchar(max),
@Country varchar(max)
)
AS
begin
update [dbo].[V_Customer] set first_name=@Update_first_Name where first_name=@First_Name
    
end
 		
---trigger



--audit




create table tblcustomerAudit
(
OrderAuditID int Identity(1,1) primary key, 
First_Name varchar(max),
Last_Name varchar(max),
Address varchar(max),
City varchar(max),
Country varchar(max),
	Birth_Date varchar(max),
UpdatedBy nvarchar(128),
UpdatedOn datetime
)
go


create trigger tblTriggerAuditRecord on customer
after update, insert
as
begin
  insert into tblcustomerAudit 
  (First_Name, Last_Name, Address,City,Country,Birth_Date, UpdatedBy, UpdatedOn )
  select i.First_Name, i.Last_Name, i.Address,i.City,i.Country,i.Birth_Date, SUSER_SNAME(), getdate() 
  from  customer t 
  inner join inserted i on t.First_Name=i.First_Name     
end
go


--
update customer set City='madurai' where First_Name='arun'

select * from tblcustomerAudit




--============

--cursor

DECLARE @name VARCHAR(50) -- database name 
 
DECLARE db_cursor CURSOR FOR 
SELECT name 
FROM MASTER.dbo.sysdatabases 
WHERE name NOT IN ('master','model','msdb','tempdb') 

OPEN db_cursor  
FETCH NEXT FROM db_cursor INTO @name  

WHILE @@FETCH_STATUS = 0  
BEGIN  
      select @name

      FETCH NEXT FROM db_cursor INTO @name 
END 

CLOSE db_cursor  
DEALLOCATE db_cursor 



---============
--cte


with commontable
as
(
select first_name,last_name from customer

)


select * from commontable




		
		
  