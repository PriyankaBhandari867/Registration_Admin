USE [master]
GO
/****** Object:  Database [PSDb]    Script Date: 9/25/2020 4:55:38 PM ******/
CREATE DATABASE [PSDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PSDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PSDb.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PSDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PSDb_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PSDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PSDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PSDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PSDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PSDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PSDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PSDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [PSDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PSDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [PSDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PSDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PSDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PSDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PSDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PSDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PSDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PSDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PSDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PSDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PSDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PSDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PSDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PSDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PSDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PSDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PSDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PSDb] SET  MULTI_USER 
GO
ALTER DATABASE [PSDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PSDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PSDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PSDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [PSDb]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 9/25/2020 4:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsers](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[MobileNumber] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [PSDb] SET  READ_WRITE 
GO
