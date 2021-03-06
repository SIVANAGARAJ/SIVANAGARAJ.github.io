USE [Airport]
GO
/****** Object:  User [T5_Vijayakumar]    Script Date: 4/21/2019 5:37:52 PM ******/
CREATE USER [T5_Vijayakumar] FOR LOGIN [T5_Vijayakumar] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [T5_Vijayakumar]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 4/21/2019 5:37:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[ID_comp] [int] NOT NULL,
	[name] [char](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pass_in_trip]    Script Date: 4/21/2019 5:37:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pass_in_trip](
	[trip_no] [int] NOT NULL,
	[date] [datetime] NOT NULL,
	[ID_psg] [int] NOT NULL,
	[place] [char](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 4/21/2019 5:37:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Passenger](
	[ID_psg] [int] NOT NULL,
	[name] [char](20) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 4/21/2019 5:37:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Trip]    Script Date: 4/21/2019 5:37:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trip](
	[trip_no] [int] NOT NULL,
	[ID_comp] [int] NOT NULL,
	[plane] [char](10) NOT NULL,
	[town_from] [char](25) NOT NULL,
	[town_to] [char](25) NOT NULL,
	[time_out] [datetime] NOT NULL,
	[time_in] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Company] ([ID_comp], [name]) VALUES (1, N'Don_avia  ')
INSERT [dbo].[Company] ([ID_comp], [name]) VALUES (2, N'Aeroflot  ')
INSERT [dbo].[Company] ([ID_comp], [name]) VALUES (3, N'Dale_avia ')
INSERT [dbo].[Company] ([ID_comp], [name]) VALUES (4, N'air_France')
INSERT [dbo].[Company] ([ID_comp], [name]) VALUES (5, N'British_AW')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1100, CAST(N'2003-04-29 00:00:00.000' AS DateTime), 1, N'1a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1123, CAST(N'2003-04-05 00:00:00.000' AS DateTime), 3, N'2a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1123, CAST(N'2003-04-08 00:00:00.000' AS DateTime), 1, N'4c        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1123, CAST(N'2003-04-08 00:00:00.000' AS DateTime), 6, N'4b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1124, CAST(N'2003-04-02 00:00:00.000' AS DateTime), 2, N'2d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1145, CAST(N'2003-04-05 00:00:00.000' AS DateTime), 3, N'2c        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1145, CAST(N'2003-04-25 00:00:00.000' AS DateTime), 5, N'1d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1181, CAST(N'2003-04-01 00:00:00.000' AS DateTime), 1, N'1a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1181, CAST(N'2003-04-01 00:00:00.000' AS DateTime), 6, N'1b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1181, CAST(N'2003-04-01 00:00:00.000' AS DateTime), 8, N'3c        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1181, CAST(N'2003-04-13 00:00:00.000' AS DateTime), 5, N'1b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1182, CAST(N'2003-04-13 00:00:00.000' AS DateTime), 5, N'4b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1182, CAST(N'2003-04-13 00:00:00.000' AS DateTime), 9, N'6d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1187, CAST(N'2003-04-14 00:00:00.000' AS DateTime), 8, N'3a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1187, CAST(N'2003-04-14 00:00:00.000' AS DateTime), 10, N'3d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (1188, CAST(N'2003-04-01 00:00:00.000' AS DateTime), 8, N'3a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-04 00:00:00.000' AS DateTime), 11, N'4a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-07 00:00:00.000' AS DateTime), 11, N'1b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-07 00:00:00.000' AS DateTime), 37, N'1c        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-09 00:00:00.000' AS DateTime), 11, N'5a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-14 00:00:00.000' AS DateTime), 14, N'4d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7771, CAST(N'2005-11-16 00:00:00.000' AS DateTime), 14, N'5d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7772, CAST(N'2005-11-07 00:00:00.000' AS DateTime), 12, N'1d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7772, CAST(N'2005-11-07 00:00:00.000' AS DateTime), 37, N'1a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7772, CAST(N'2005-11-29 00:00:00.000' AS DateTime), 10, N'3a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7772, CAST(N'2005-11-29 00:00:00.000' AS DateTime), 13, N'1b        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7772, CAST(N'2005-11-29 00:00:00.000' AS DateTime), 14, N'1c        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7773, CAST(N'2005-11-07 00:00:00.000' AS DateTime), 13, N'2d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (7778, CAST(N'2005-11-05 00:00:00.000' AS DateTime), 10, N'2a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (8881, CAST(N'2005-11-08 00:00:00.000' AS DateTime), 37, N'1d        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (8882, CAST(N'2005-11-06 00:00:00.000' AS DateTime), 37, N'1a        ')
INSERT [dbo].[Pass_in_trip] ([trip_no], [date], [ID_psg], [place]) VALUES (8882, CAST(N'2005-11-13 00:00:00.000' AS DateTime), 14, N'3d        ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (1, N'Bruce Willis        ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (2, N'George Clooney      ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (3, N'Kevin Costner       ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (4, N'Donald Sutherland   ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (5, N'Jennifer Lopez      ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (6, N'Ray Liotta          ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (7, N'Samuel L. Jackson   ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (8, N'Nikole Kidman       ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (9, N'Alan Rickman        ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (10, N'Kurt Russell        ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (11, N'Harrison Ford       ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (12, N'Russell Crowe       ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (13, N'Steve Martin        ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (14, N'Michael Caine       ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (15, N'Angelina Jolie      ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (16, N'Mel Gibson          ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (17, N'Michael Douglas     ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (18, N'John Travolta       ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (19, N'Sylvester Stallone  ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (20, N'Tommy Lee Jones     ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (21, N'Catherine Zeta-Jones')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (22, N'Antonio Banderas    ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (23, N'Kim Basinger        ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (24, N'Sam Neill           ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (25, N'Gary Oldman         ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (26, N'Clint Eastwood      ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (27, N'Brad Pitt           ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (28, N'Johnny Depp         ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (29, N'Pierce Brosnan      ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (30, N'Sean Connery        ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (31, N'Bruce Willis        ')
INSERT [dbo].[Passenger] ([ID_psg], [name]) VALUES (37, N'Mullah Omar         ')
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1100, 4, N'Boeing    ', N'Rostov                   ', N'Paris                    ', CAST(N'1900-01-01 14:30:00.000' AS DateTime), CAST(N'1900-01-01 17:50:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1101, 4, N'Boeing    ', N'Paris                    ', N'Rostov                   ', CAST(N'1900-01-01 08:12:00.000' AS DateTime), CAST(N'1900-01-01 11:45:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1123, 3, N'TU-154    ', N'Rostov                   ', N'Vladivostok              ', CAST(N'1900-01-01 16:20:00.000' AS DateTime), CAST(N'1900-01-01 23:40:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1124, 3, N'TU-154    ', N'Vladivostok              ', N'Rostov                   ', CAST(N'1900-01-01 09:00:00.000' AS DateTime), CAST(N'1900-01-01 19:50:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1145, 2, N'IL-86     ', N'Moscow                   ', N'Rostov                   ', CAST(N'1900-01-01 09:35:00.000' AS DateTime), CAST(N'1900-01-01 11:23:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1146, 2, N'IL-86     ', N'Rostov                   ', N'Moscow                   ', CAST(N'1900-01-01 17:55:00.000' AS DateTime), CAST(N'1900-01-01 20:01:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1181, 1, N'TU-134    ', N'Rostov                   ', N'Moscow                   ', CAST(N'1900-01-01 06:12:00.000' AS DateTime), CAST(N'1900-01-01 08:01:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1182, 1, N'TU-134    ', N'Moscow                   ', N'Rostov                   ', CAST(N'1900-01-01 12:35:00.000' AS DateTime), CAST(N'1900-01-01 14:30:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1187, 1, N'TU-134    ', N'Rostov                   ', N'Moscow                   ', CAST(N'1900-01-01 15:42:00.000' AS DateTime), CAST(N'1900-01-01 17:39:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1188, 1, N'TU-134    ', N'Moscow                   ', N'Rostov                   ', CAST(N'1900-01-01 22:50:00.000' AS DateTime), CAST(N'1900-01-02 00:48:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1195, 1, N'TU-154    ', N'Rostov                   ', N'Moscow                   ', CAST(N'1900-01-01 23:30:00.000' AS DateTime), CAST(N'1900-01-02 01:11:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (1196, 1, N'TU-154    ', N'Moscow                   ', N'Rostov                   ', CAST(N'1900-01-01 04:00:00.000' AS DateTime), CAST(N'1900-01-01 09:45:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7771, 5, N'Boeing    ', N'London                   ', N'Singapore                ', CAST(N'1900-01-01 01:00:00.000' AS DateTime), CAST(N'1900-01-01 11:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7772, 5, N'Boeing    ', N'Singapore                ', N'London                   ', CAST(N'1900-01-01 12:00:00.000' AS DateTime), CAST(N'1900-01-01 19:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7773, 5, N'Boeing    ', N'London                   ', N'Singapore                ', CAST(N'1900-01-01 03:00:00.000' AS DateTime), CAST(N'1900-01-01 13:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7774, 5, N'Boeing    ', N'Singapore                ', N'London                   ', CAST(N'1900-01-01 14:00:00.000' AS DateTime), CAST(N'1900-01-02 06:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7775, 5, N'Boeing    ', N'London                   ', N'Singapore                ', CAST(N'1900-01-01 09:00:00.000' AS DateTime), CAST(N'1900-01-01 20:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7776, 5, N'Boeing    ', N'Singapore                ', N'London                   ', CAST(N'1900-01-01 18:00:00.000' AS DateTime), CAST(N'1900-01-02 08:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7777, 5, N'Boeing    ', N'London                   ', N'Singapore                ', CAST(N'1900-01-01 18:00:00.000' AS DateTime), CAST(N'1900-01-02 06:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (7778, 5, N'Boeing    ', N'Singapore                ', N'London                   ', CAST(N'1900-01-01 22:00:00.000' AS DateTime), CAST(N'1900-01-02 12:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (8881, 5, N'Boeing    ', N'London                   ', N'Paris                    ', CAST(N'1900-01-01 03:00:00.000' AS DateTime), CAST(N'1900-01-01 10:00:00.000' AS DateTime))
INSERT [dbo].[Trip] ([trip_no], [ID_comp], [plane], [town_from], [town_to], [time_out], [time_in]) VALUES (8882, 5, N'Boeing    ', N'Paris                    ', N'London                   ', CAST(N'1900-01-01 22:00:00.000' AS DateTime), CAST(N'1900-01-02 11:00:00.000' AS DateTime))
