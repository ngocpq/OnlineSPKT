USE [master]
GO

/****** Object:  Database [OnlineSPKT]    Script Date: 03/31/2012 06:58:26 ******/
CREATE DATABASE [OnlineSPKT] ON  PRIMARY 
( NAME = N'OnlineSPKT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008R2\MSSQL\DATA\OnlineSPKT.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OnlineSPKT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008R2\MSSQL\DATA\OnlineSPKT_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [OnlineSPKT] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineSPKT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [OnlineSPKT] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [OnlineSPKT] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [OnlineSPKT] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [OnlineSPKT] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [OnlineSPKT] SET ARITHABORT OFF 
GO

ALTER DATABASE [OnlineSPKT] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [OnlineSPKT] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [OnlineSPKT] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [OnlineSPKT] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [OnlineSPKT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [OnlineSPKT] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [OnlineSPKT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [OnlineSPKT] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [OnlineSPKT] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [OnlineSPKT] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [OnlineSPKT] SET  DISABLE_BROKER 
GO

ALTER DATABASE [OnlineSPKT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [OnlineSPKT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [OnlineSPKT] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [OnlineSPKT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [OnlineSPKT] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [OnlineSPKT] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [OnlineSPKT] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [OnlineSPKT] SET  READ_WRITE 
GO

ALTER DATABASE [OnlineSPKT] SET RECOVERY FULL 
GO

ALTER DATABASE [OnlineSPKT] SET  MULTI_USER 
GO

ALTER DATABASE [OnlineSPKT] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [OnlineSPKT] SET DB_CHAINING OFF 
GO


