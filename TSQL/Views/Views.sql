CREATE TABLE [dbo].[Customer](
	[First_Name] [varchar](25) NULL,
	[Last_Name] [varchar](25) NULL,
	[Address] [varchar](25) NULL,
	[City] [varchar](25) NULL,
	[Country] [varchar](25) NULL,
	[Birth_Date] [date] NULL
)


INSERT [dbo].[Customer] ([First_Name], [Last_Name], [Address], [City], [Country], [Birth_Date]) VALUES (N'Mani', N'vasagam', N'10,Middle Street', N'Chennai', N'India', CAST(N'1985-01-10' AS Date))
INSERT [dbo].[Customer] ([First_Name], [Last_Name], [Address], [City], [Country], [Birth_Date]) VALUES (N'Siva', N'Ram', N'74/10,Vallalar Street', N'Chennai', N'India', CAST(N'1987-01-01' AS Date))
INSERT [dbo].[Customer] ([First_Name], [Last_Name], [Address], [City], [Country], [Birth_Date]) VALUES (N'Venkat', N'Bala', N'10,Cross Street', N'Chennai', N'India', CAST(N'1985-12-31' AS Date))
INSERT [dbo].[Customer] ([First_Name], [Last_Name], [Address], [City], [Country], [Birth_Date]) VALUES (N'Ravi', N'kasi', N'101,Main Road', N'Chennai', N'India', CAST(N'1987-10-10' AS Date))

Create View [dbo].[V_Customer]
As select First_Name,Last_Name,Country
from Customer

SELECT [First_Name]
  ,[Last_Name]
  ,[Country]
FROM [dbo].[V_Customer]

INSERT INTO [dbo].[V_Customer]
	   ([First_Name]
	   ,[Last_Name]
	   ,[Country])
 VALUES ('murali','ganesh','india')

 update [dbo].[V_Customer] set first_name='arun' where Last_name='Bala'

 DELETE FROM [dbo].[V_Customer] where [First_Name]='murali'
