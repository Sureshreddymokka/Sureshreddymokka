/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2017 (14.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [onmed]    Script Date: 03-01-2022 01:11:54 ******/
CREATE DATABASE [onmed]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'onmed', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\onmed.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'onmed_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\onmed_log.ldf' , SIZE = 8192KB , MAXSIZE = 1048576KB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [onmed] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [onmed].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [onmed] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [onmed] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [onmed] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [onmed] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [onmed] SET ARITHABORT OFF 
GO
ALTER DATABASE [onmed] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [onmed] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [onmed] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [onmed] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [onmed] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [onmed] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [onmed] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [onmed] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [onmed] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [onmed] SET  ENABLE_BROKER 
GO
ALTER DATABASE [onmed] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [onmed] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [onmed] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [onmed] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [onmed] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [onmed] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [onmed] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [onmed] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [onmed] SET  MULTI_USER 
GO
ALTER DATABASE [onmed] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [onmed] SET DB_CHAINING OFF 
GO
ALTER DATABASE [onmed] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [onmed] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [onmed] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [onmed] SET QUERY_STORE = OFF
GO
USE [onmed]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [onmed]
GO
/****** Object:  User [onmeduser]    Script Date: 03-01-2022 01:11:55 ******/
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
/****** Object:  Schema [bngnuser]    Script Date: 03-01-2022 01:11:56 ******/
CREATE SCHEMA [bngnuser]
GO
/****** Object:  Schema [onmeduser]    Script Date: 03-01-2022 01:11:56 ******/
CREATE SCHEMA [onmeduser]
GO
/****** Object:  Table [onmeduser].[admin]    Script Date: 03-01-2022 01:11:56 ******/
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
/****** Object:  Table [onmeduser].[tbl_bookedslots]    Script Date: 03-01-2022 01:11:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [onmeduser].[tbl_bookedslots](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[slot] [int] NULL,
	[slottime] [varchar](50) NULL,
	[dt_booked] [varchar](50) NULL,
	[doctor_id] [int] NULL,
	[patent_id] [int] NULL,
	[status] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [onmeduser].[tbl_diseases]    Script Date: 03-01-2022 01:11:56 ******/
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
/****** Object:  Table [onmeduser].[tbl_doctors]    Script Date: 03-01-2022 01:11:56 ******/
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
/****** Object:  Table [onmeduser].[tbl_testimonials]    Script Date: 03-01-2022 01:11:56 ******/
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
/****** Object:  Table [onmeduser].[tbl_timetable]    Script Date: 03-01-2022 01:11:57 ******/
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
/****** Object:  Table [onmeduser].[tbl_users]    Script Date: 03-01-2022 01:11:57 ******/
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
USE [master]
GO
ALTER DATABASE [onmed] SET  READ_WRITE 
GO
