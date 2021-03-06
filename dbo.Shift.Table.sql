USE [QA]
GO
/****** Object:  Table [dbo].[Shift]    Script Date: 6/13/2019 7:27:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift](
	[ShiftID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Shift] ON 

INSERT [dbo].[Shift] ([ShiftID], [Name], [StartTime], [EndTime], [ModifiedDate]) VALUES (1, N'Day', CAST(N'1900-01-01 07:00:00.000' AS DateTime), CAST(N'1900-01-01 15:00:00.000' AS DateTime), CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Shift] ([ShiftID], [Name], [StartTime], [EndTime], [ModifiedDate]) VALUES (2, N'Evening', CAST(N'1900-01-01 15:00:00.000' AS DateTime), CAST(N'1900-01-01 23:00:00.000' AS DateTime), CAST(N'1998-06-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Shift] ([ShiftID], [Name], [StartTime], [EndTime], [ModifiedDate]) VALUES (3, N'Night', CAST(N'1900-01-01 23:00:00.000' AS DateTime), CAST(N'1900-01-01 07:00:00.000' AS DateTime), CAST(N'1998-06-01 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Shift] OFF
