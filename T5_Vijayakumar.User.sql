USE [QA]
GO
/****** Object:  User [T5_Vijayakumar]    Script Date: 6/13/2019 7:27:11 PM ******/
CREATE USER [T5_Vijayakumar] FOR LOGIN [T5_Vijayakumar] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [T5_Vijayakumar]
GO
