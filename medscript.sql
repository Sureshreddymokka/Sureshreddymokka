/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2017 (14.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [onmed]
GO
/****** Object:  User [onmeduser]    Script Date: 02-01-2022 13:29:52 ******/
CREATE USER [onmeduser] FOR LOGIN [onmeduser] WITH DEFAULT_SCHEMA=[onmeduser]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [onmeduser]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [onmeduser]
GO
ALTER ROLE [db_datareader] ADD MEMBER [onmeduser]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [onmeduser]
GO
/****** Object:  Schema [bngnuser]    Script Date: 02-01-2022 13:29:53 ******/
CREATE SCHEMA [bngnuser]
GO
/****** Object:  Schema [onmeduser]    Script Date: 02-01-2022 13:29:53 ******/
CREATE SCHEMA [onmeduser]
GO
/****** Object:  Table [onmeduser].[admin]    Script Date: 02-01-2022 13:29:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [onmeduser].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AdminUserName] [varchar](50) NULL,
	[AdminPassword] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [onmeduser].[tbl_bookedslots]    Script Date: 02-01-2022 13:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [onmeduser].[tbl_bookedslots](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[slot] [int] NULL,
	[dt_booked] [datetime] NULL,
	[doctor_id] [int] NULL,
	[patent_id] [int] NULL,
	[status] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [onmeduser].[tbl_diseases]    Script Date: 02-01-2022 13:29:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [onmeduser].[tbl_diseases](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[diseasename] [varchar](150) NULL,
	[descp] [text] NULL,
	[status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [onmeduser].[tbl_doctors]    Script Date: 02-01-2022 13:29:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [onmeduser].[tbl_doctors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Diseaseid] [int] NULL,
	[Address] [text] NULL,
	[pic] [varchar](150) NULL,
	[username] [varchar](50) NULL,
	[pwd] [varchar](50) NULL,
	[status] [int] NULL,
	[dt_created] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [onmeduser].[tbl_testimonials]    Script Date: 02-01-2022 13:29:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [onmeduser].[tbl_testimonials](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctor_id] [int] NULL,
	[descp] [text] NULL,
	[dt_created] [datetime] NULL,
	[status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [onmeduser].[tbl_timetable]    Script Date: 02-01-2022 13:29:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [onmeduser].[tbl_timetable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Day] [varchar](50) NULL,
	[fromtime] [varchar](50) NULL,
	[fromtime2] [varchar](50) NULL,
	[totime] [varchar](50) NULL,
	[totime2] [varchar](50) NULL,
	[doctor_id] [int] NULL,
	[dt_created] [datetime] NULL,
	[status] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [onmeduser].[tbl_users]    Script Date: 02-01-2022 13:29:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [onmeduser].[tbl_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Mobileno] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[dt_created] [datetime] NULL,
	[status] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [onmeduser].[tbl_doctors] ADD  CONSTRAINT [DF_tbl_doctors_dt_created]  DEFAULT (getdate()) FOR [dt_created]
GO
ALTER TABLE [onmeduser].[tbl_testimonials] ADD  CONSTRAINT [DF_tbl_testimonils_dt_created]  DEFAULT (getdate()) FOR [dt_created]
GO
ALTER TABLE [onmeduser].[tbl_timetable] ADD  CONSTRAINT [DF_tbl_timetable_dt_created]  DEFAULT (getdate()) FOR [dt_created]
GO
ALTER TABLE [onmeduser].[tbl_users] ADD  CONSTRAINT [DF_tbl_users_dt_created]  DEFAULT (getdate()) FOR [dt_created]
GO
