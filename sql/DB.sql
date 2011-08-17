USE [master]
GO
/****** Object:  Database [MCM]    Script Date: 08/17/2011 16:27:25 ******/
CREATE DATABASE [MCM] ON  PRIMARY 
( NAME = N'MCM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\MCM.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MCM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\MCM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MCM] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MCM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MCM] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [MCM] SET ANSI_NULLS OFF
GO
ALTER DATABASE [MCM] SET ANSI_PADDING OFF
GO
ALTER DATABASE [MCM] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [MCM] SET ARITHABORT OFF
GO
ALTER DATABASE [MCM] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [MCM] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [MCM] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [MCM] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [MCM] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [MCM] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [MCM] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [MCM] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [MCM] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [MCM] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [MCM] SET  DISABLE_BROKER
GO
ALTER DATABASE [MCM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [MCM] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [MCM] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [MCM] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [MCM] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [MCM] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [MCM] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [MCM] SET  READ_WRITE
GO
ALTER DATABASE [MCM] SET RECOVERY FULL
GO
ALTER DATABASE [MCM] SET  MULTI_USER
GO
ALTER DATABASE [MCM] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MCM] SET DB_CHAINING OFF
GO
USE [MCM]
GO
/****** Object:  ForeignKey [FK_AccessProvider_Destination]    Script Date: 08/17/2011 16:27:28 ******/
ALTER TABLE [dbo].[AccessProvider] DROP CONSTRAINT [FK_AccessProvider_Destination]
GO
/****** Object:  ForeignKey [FK_Folder_Folder]    Script Date: 08/17/2011 16:27:28 ******/
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Folder]
GO
/****** Object:  ForeignKey [FK_Folder_FolderType]    Script Date: 08/17/2011 16:27:28 ******/
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_FolderType]
GO
/****** Object:  ForeignKey [FK_FormatCategory_FormatType]    Script Date: 08/17/2011 16:27:29 ******/
ALTER TABLE [dbo].[FormatCategory] DROP CONSTRAINT [FK_FormatCategory_FormatType]
GO
/****** Object:  ForeignKey [FK_Object_ObjectType]    Script Date: 08/17/2011 16:27:31 ******/
ALTER TABLE [dbo].[Object] DROP CONSTRAINT [FK_Object_ObjectType]
GO
/****** Object:  ForeignKey [FK_MetadataSchema_User_Join_MetadataSchema]    Script Date: 08/17/2011 16:27:31 ******/
ALTER TABLE [dbo].[MetadataSchema_User_Join] DROP CONSTRAINT [FK_MetadataSchema_User_Join_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_MetadataSchema_Group_Join_MetadataSchema]    Script Date: 08/17/2011 16:27:31 ******/
ALTER TABLE [dbo].[MetadataSchema_Group_Join] DROP CONSTRAINT [FK_MetadataSchema_Group_Join_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_Metadata_Language]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Metadata] DROP CONSTRAINT [FK_Metadata_Language]
GO
/****** Object:  ForeignKey [FK_Metadata_MetadataSchema]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Metadata] DROP CONSTRAINT [FK_Metadata_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_Metadata_Object]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Metadata] DROP CONSTRAINT [FK_Metadata_Object]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_Object]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Object_Join] DROP CONSTRAINT [FK_Object_Object_Join_Object]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_Object1]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Object_Join] DROP CONSTRAINT [FK_Object_Object_Join_Object1]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_ObjectRelationType]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Object_Join] DROP CONSTRAINT [FK_Object_Object_Join_ObjectRelationType]
GO
/****** Object:  ForeignKey [FK_Object_Folder_Join_Folder]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Folder_Join] DROP CONSTRAINT [FK_Object_Folder_Join_Folder]
GO
/****** Object:  ForeignKey [FK_Object_Folder_Join_Object]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Folder_Join] DROP CONSTRAINT [FK_Object_Folder_Join_Object]
GO
/****** Object:  ForeignKey [FK_Format_FormatCategory]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Format] DROP CONSTRAINT [FK_Format_FormatCategory]
GO
/****** Object:  ForeignKey [FK_Folder_User_Join_Folder]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Folder_User_Join] DROP CONSTRAINT [FK_Folder_User_Join_Folder]
GO
/****** Object:  ForeignKey [FK_Folder_Group_Join_Folder]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Folder_Group_Join] DROP CONSTRAINT [FK_Folder_Group_Join_Folder]
GO
/****** Object:  ForeignKey [FK_File_Destination]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_Destination]
GO
/****** Object:  ForeignKey [FK_File_File]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_File]
GO
/****** Object:  ForeignKey [FK_File_Format]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_Format]
GO
/****** Object:  ForeignKey [FK_File_Object]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_Object]
GO
/****** Object:  ForeignKey [FK_Conversion_Destination]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[Conversion] DROP CONSTRAINT [FK_Conversion_Destination]
GO
/****** Object:  ForeignKey [FK_Conversion_Format]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[Conversion] DROP CONSTRAINT [FK_Conversion_Format]
GO
/****** Object:  ForeignKey [FK_Conversion_FormatCategory]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[Conversion] DROP CONSTRAINT [FK_Conversion_FormatCategory]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Conversion]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint] DROP CONSTRAINT [FK_AccessPoint_Conversion]
GO
/****** Object:  ForeignKey [FK_AccessPoint_User_Join_AccessPoint]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint_User_Join] DROP CONSTRAINT [FK_AccessPoint_User_Join_AccessPoint]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Object_Join_AccessPoint]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint_Object_Join] DROP CONSTRAINT [FK_AccessPoint_Object_Join_AccessPoint]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Object_Join_Object]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint_Object_Join] DROP CONSTRAINT [FK_AccessPoint_Object_Join_Object]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Group_Join_AccessPoint]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint_Group_Join] DROP CONSTRAINT [FK_AccessPoint_Group_Join_AccessPoint]
GO
/****** Object:  StoredProcedure [dbo].[PopulateDefaultData]    Script Date: 08/17/2011 16:27:34 ******/
DROP PROCEDURE [dbo].[PopulateDefaultData]
GO
/****** Object:  Table [dbo].[AccessPoint_Group_Join]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint_Group_Join] DROP CONSTRAINT [FK_AccessPoint_Group_Join_AccessPoint]
GO
ALTER TABLE [dbo].[AccessPoint_Group_Join] DROP CONSTRAINT [DF_AccessPoint_Group_Join_DateCreated]
GO
DROP TABLE [dbo].[AccessPoint_Group_Join]
GO
/****** Object:  Table [dbo].[AccessPoint_Object_Join]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint_Object_Join] DROP CONSTRAINT [FK_AccessPoint_Object_Join_AccessPoint]
GO
ALTER TABLE [dbo].[AccessPoint_Object_Join] DROP CONSTRAINT [FK_AccessPoint_Object_Join_Object]
GO
ALTER TABLE [dbo].[AccessPoint_Object_Join] DROP CONSTRAINT [DF_AccessPoint_Object_Join_DateCreated]
GO
ALTER TABLE [dbo].[AccessPoint_Object_Join] DROP CONSTRAINT [DF_AccessPoint_Object_Join_DateModified]
GO
DROP TABLE [dbo].[AccessPoint_Object_Join]
GO
/****** Object:  Table [dbo].[AccessPoint_User_Join]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint_User_Join] DROP CONSTRAINT [FK_AccessPoint_User_Join_AccessPoint]
GO
ALTER TABLE [dbo].[AccessPoint_User_Join] DROP CONSTRAINT [DF_AccessPoint_User_Join_DateCreated]
GO
DROP TABLE [dbo].[AccessPoint_User_Join]
GO
/****** Object:  Table [dbo].[AccessPoint]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint] DROP CONSTRAINT [FK_AccessPoint_Conversion]
GO
ALTER TABLE [dbo].[AccessPoint] DROP CONSTRAINT [DF_AccessPoint_GUID]
GO
ALTER TABLE [dbo].[AccessPoint] DROP CONSTRAINT [DF_AccessPoint_DateCreated]
GO
DROP TABLE [dbo].[AccessPoint]
GO
/****** Object:  Table [dbo].[Conversion]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[Conversion] DROP CONSTRAINT [FK_Conversion_Destination]
GO
ALTER TABLE [dbo].[Conversion] DROP CONSTRAINT [FK_Conversion_Format]
GO
ALTER TABLE [dbo].[Conversion] DROP CONSTRAINT [FK_Conversion_FormatCategory]
GO
ALTER TABLE [dbo].[Conversion] DROP CONSTRAINT [DF_Conversion_DateCreated]
GO
DROP TABLE [dbo].[Conversion]
GO
/****** Object:  Table [dbo].[File]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_Destination]
GO
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_File]
GO
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_Format]
GO
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_Object]
GO
ALTER TABLE [dbo].[File] DROP CONSTRAINT [DF_File_DateCreated]
GO
DROP TABLE [dbo].[File]
GO
/****** Object:  Table [dbo].[Folder_Group_Join]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Folder_Group_Join] DROP CONSTRAINT [FK_Folder_Group_Join_Folder]
GO
ALTER TABLE [dbo].[Folder_Group_Join] DROP CONSTRAINT [DF_Folder_Group_Join_DateCreated]
GO
DROP TABLE [dbo].[Folder_Group_Join]
GO
/****** Object:  Table [dbo].[Folder_User_Join]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Folder_User_Join] DROP CONSTRAINT [FK_Folder_User_Join_Folder]
GO
ALTER TABLE [dbo].[Folder_User_Join] DROP CONSTRAINT [DF_Folder_User_Join_DateCreated]
GO
DROP TABLE [dbo].[Folder_User_Join]
GO
/****** Object:  Table [dbo].[Format]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Format] DROP CONSTRAINT [FK_Format_FormatCategory]
GO
DROP TABLE [dbo].[Format]
GO
/****** Object:  StoredProcedure [dbo].[ObjectType_Insert]    Script Date: 08/17/2011 16:27:33 ******/
DROP PROCEDURE [dbo].[ObjectType_Insert]
GO
/****** Object:  Table [dbo].[Object_Folder_Join]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Folder_Join] DROP CONSTRAINT [FK_Object_Folder_Join_Folder]
GO
ALTER TABLE [dbo].[Object_Folder_Join] DROP CONSTRAINT [FK_Object_Folder_Join_Object]
GO
ALTER TABLE [dbo].[Object_Folder_Join] DROP CONSTRAINT [DF_Object_Folder_Join_DateCreated]
GO
DROP TABLE [dbo].[Object_Folder_Join]
GO
/****** Object:  Table [dbo].[Object_Object_Join]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Object_Join] DROP CONSTRAINT [FK_Object_Object_Join_Object]
GO
ALTER TABLE [dbo].[Object_Object_Join] DROP CONSTRAINT [FK_Object_Object_Join_Object1]
GO
ALTER TABLE [dbo].[Object_Object_Join] DROP CONSTRAINT [FK_Object_Object_Join_ObjectRelationType]
GO
ALTER TABLE [dbo].[Object_Object_Join] DROP CONSTRAINT [DF_Object_Object_Join_DateCreated]
GO
DROP TABLE [dbo].[Object_Object_Join]
GO
/****** Object:  Table [dbo].[Metadata]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Metadata] DROP CONSTRAINT [FK_Metadata_Language]
GO
ALTER TABLE [dbo].[Metadata] DROP CONSTRAINT [FK_Metadata_MetadataSchema]
GO
ALTER TABLE [dbo].[Metadata] DROP CONSTRAINT [FK_Metadata_Object]
GO
ALTER TABLE [dbo].[Metadata] DROP CONSTRAINT [DF_Metadata_DateCreated]
GO
ALTER TABLE [dbo].[Metadata] DROP CONSTRAINT [DF_Metadata_DateModified]
GO
DROP TABLE [dbo].[Metadata]
GO
/****** Object:  UserDefinedFunction [dbo].[GetPermissionForAction]    Script Date: 08/17/2011 16:27:33 ******/
DROP FUNCTION [dbo].[GetPermissionForAction]
GO
/****** Object:  Table [dbo].[MetadataSchema_Group_Join]    Script Date: 08/17/2011 16:27:31 ******/
ALTER TABLE [dbo].[MetadataSchema_Group_Join] DROP CONSTRAINT [FK_MetadataSchema_Group_Join_MetadataSchema]
GO
ALTER TABLE [dbo].[MetadataSchema_Group_Join] DROP CONSTRAINT [DF_MetadataSchema_Group_Join_DateCreated]
GO
DROP TABLE [dbo].[MetadataSchema_Group_Join]
GO
/****** Object:  Table [dbo].[MetadataSchema_User_Join]    Script Date: 08/17/2011 16:27:31 ******/
ALTER TABLE [dbo].[MetadataSchema_User_Join] DROP CONSTRAINT [FK_MetadataSchema_User_Join_MetadataSchema]
GO
ALTER TABLE [dbo].[MetadataSchema_User_Join] DROP CONSTRAINT [DF_MetadataSchema_User_Join_DateCreated]
GO
DROP TABLE [dbo].[MetadataSchema_User_Join]
GO
/****** Object:  Table [dbo].[Object]    Script Date: 08/17/2011 16:27:31 ******/
ALTER TABLE [dbo].[Object] DROP CONSTRAINT [FK_Object_ObjectType]
GO
ALTER TABLE [dbo].[Object] DROP CONSTRAINT [DF_Object_GUID]
GO
ALTER TABLE [dbo].[Object] DROP CONSTRAINT [DF_Object_DateCreated]
GO
DROP TABLE [dbo].[Object]
GO
/****** Object:  StoredProcedure [dbo].[ObjectType_Get]    Script Date: 08/17/2011 16:27:31 ******/
DROP PROCEDURE [dbo].[ObjectType_Get]
GO
/****** Object:  Table [dbo].[FormatCategory]    Script Date: 08/17/2011 16:27:29 ******/
ALTER TABLE [dbo].[FormatCategory] DROP CONSTRAINT [FK_FormatCategory_FormatType]
GO
DROP TABLE [dbo].[FormatCategory]
GO
/****** Object:  Table [dbo].[Folder]    Script Date: 08/17/2011 16:27:28 ******/
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Folder]
GO
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_FolderType]
GO
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [DF_Folder_DateCreated]
GO
DROP TABLE [dbo].[Folder]
GO
/****** Object:  Table [dbo].[AccessProvider]    Script Date: 08/17/2011 16:27:28 ******/
ALTER TABLE [dbo].[AccessProvider] DROP CONSTRAINT [FK_AccessProvider_Destination]
GO
DROP TABLE [dbo].[AccessProvider]
GO
/****** Object:  Table [dbo].[Destination]    Script Date: 08/17/2011 16:27:28 ******/
ALTER TABLE [dbo].[Destination] DROP CONSTRAINT [DF_Destination_DateCreated]
GO
DROP TABLE [dbo].[Destination]
GO
/****** Object:  Table [dbo].[FolderType]    Script Date: 08/17/2011 16:27:28 ******/
ALTER TABLE [dbo].[FolderType] DROP CONSTRAINT [DF_FolderType_DateCreated]
GO
DROP TABLE [dbo].[FolderType]
GO
/****** Object:  Table [dbo].[FormatType]    Script Date: 08/17/2011 16:27:28 ******/
DROP TABLE [dbo].[FormatType]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 08/17/2011 16:27:28 ******/
DROP TABLE [dbo].[Permission]
GO
/****** Object:  Table [dbo].[ObjectRelationType]    Script Date: 08/17/2011 16:27:28 ******/
DROP TABLE [dbo].[ObjectRelationType]
GO
/****** Object:  Table [dbo].[ObjectType]    Script Date: 08/17/2011 16:27:28 ******/
DROP TABLE [dbo].[ObjectType]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 08/17/2011 16:27:28 ******/
DROP TABLE [dbo].[Language]
GO
/****** Object:  Table [dbo].[MetadataSchema]    Script Date: 08/17/2011 16:27:28 ******/
ALTER TABLE [dbo].[MetadataSchema] DROP CONSTRAINT [DF_MetadataSchema_GUID]
GO
ALTER TABLE [dbo].[MetadataSchema] DROP CONSTRAINT [DF_MetadataSchema_DateCreated]
GO
DROP TABLE [dbo].[MetadataSchema]
GO
/****** Object:  Table [dbo].[MetadataSchema]    Script Date: 08/17/2011 16:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MetadataSchema](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_MetadataSchema_GUID]  DEFAULT (newid()),
	[name] [varchar](255) NOT NULL,
	[SchemaXml] [xml] NOT NULL,
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_MetadataSchema_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_MetadataSchema] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [QK_MetadataSchema_GUID_A] UNIQUE NONCLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Language]    Script Date: 08/17/2011 16:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[LanguageCode] [varchar](10) NOT NULL,
	[CountryName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ObjectType]    Script Date: 08/17/2011 16:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObjectType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](255) NOT NULL,
 CONSTRAINT [PK_ObjectType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ObjectRelationType]    Script Date: 08/17/2011 16:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObjectRelationType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ObjectRelationType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 08/17/2011 16:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permission](
	[TableIdentifier] [varchar](16) NOT NULL,
	[RightName] [varchar](64) NOT NULL,
	[Permission] [binary](4) NOT NULL,
	[Description] [varchar](max) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[TableIdentifier] ASC,
	[Permission] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormatType]    Script Date: 08/17/2011 16:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormatType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](255) NOT NULL,
 CONSTRAINT [PK_FormatType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FolderType]    Script Date: 08/17/2011 16:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FolderType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_FolderType_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_FolderType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Destination]    Script Date: 08/17/2011 16:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Destination](
	[ID] [int] NOT NULL,
	[SubscriptionGUID] [uniqueidentifier] NOT NULL,
	[Title] [varchar](255) NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_Destination_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_Destination] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccessProvider]    Script Date: 08/17/2011 16:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccessProvider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DestinationID] [int] NOT NULL,
	[BasePath] [varchar](max) NOT NULL,
	[StringFormat] [varchar](max) NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_AccessProvider] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Folder]    Script Date: 08/17/2011 16:27:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Folder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[FolderTypeID] [int] NOT NULL,
	[SubscriptionGUID] [uniqueidentifier] NOT NULL,
	[Title] [varchar](255) NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_Folder_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_Folder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormatCategory]    Script Date: 08/17/2011 16:27:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormatCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FormatTypeID] [int] NOT NULL,
	[Value] [varchar](255) NOT NULL,
 CONSTRAINT [PK_FormatCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ObjectType_Get]    Script Date: 08/17/2011 16:27:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr	Knudsen
-- Create date: 2010.08.17
--				This SP is used tp GET an ObjectType
-- =============================================
CREATE PROCEDURE [dbo].[ObjectType_Get]
	@ID		int				= null,
	@Value	varchar(255)	= null
AS
	SELECT	*
	  FROM	ObjectType
	WHERE	( @ID IS NULL OR @ID = ID ) AND
			( @Value IS NULL OR @Value = Value )
GO
/****** Object:  Table [dbo].[Object]    Script Date: 08/17/2011 16:27:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Object](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_Object_GUID]  DEFAULT (newid()),
	[ObjectTypeID] [int] NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_Object_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_Object] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [QK_Object_GUID_A] UNIQUE NONCLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetadataSchema_User_Join]    Script Date: 08/17/2011 16:27:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetadataSchema_User_Join](
	[MetadataSchemaID] [int] NOT NULL,
	[UserGUID] [uniqueidentifier] NOT NULL,
	[Permission] [int] NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_MetadataSchema_User_Join_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_MetadataSchema_User_Join] PRIMARY KEY CLUSTERED 
(
	[MetadataSchemaID] ASC,
	[UserGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetadataSchema_Group_Join]    Script Date: 08/17/2011 16:27:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetadataSchema_Group_Join](
	[MetadataSchemaID] [int] NOT NULL,
	[GroupGUID] [uniqueidentifier] NOT NULL,
	[Permission] [int] NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_MetadataSchema_Group_Join_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_MetadataSchema_Group_Join] PRIMARY KEY CLUSTERED 
(
	[MetadataSchemaID] ASC,
	[GroupGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[GetPermissionForAction]    Script Date: 08/17/2011 16:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2010.08.17
--				This function is used to select a permission
-- =============================================
CREATe FUNCTION [dbo].[GetPermissionForAction]
(
	@TableIdentifier	varchar(16),
	@RightName	    	varchar(64)
)
RETURNS int
AS
BEGIN
	DECLARE @Permission int

	SELECT	@Permission = [Permission].Permission
	  FROM	[Permission]
	 WHERE	[Permission].TableIdentifier = @TableIdentifier AND
			[Permission].RightName = @RightName

	RETURN @Permission

END
GO
/****** Object:  Table [dbo].[Metadata]    Script Date: 08/17/2011 16:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metadata](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NOT NULL,
	[LanguageID] [int] NULL,
	[MetadataSchemaID] [int] NOT NULL,
	[MetadataXml] [xml] NOT NULL,
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_Metadata_DateCreated]  DEFAULT (getdate()),
	[DateModified] [datetime] NOT NULL CONSTRAINT [DF_Metadata_DateModified]  DEFAULT (getdate()),
	[DateLocked] [datetime] NOT NULL,
	[LockUserID] [int] NULL,
 CONSTRAINT [PK_Metadata] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Object_Object_Join]    Script Date: 08/17/2011 16:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Object_Object_Join](
	[ObjectID1] [int] NOT NULL,
	[ObjectID2] [int] NOT NULL,
	[ObjectRelationTypeID] [int] NOT NULL,
	[Sequence] [int] NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_Object_Object_Join_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_Object_Object_Join] PRIMARY KEY CLUSTERED 
(
	[ObjectID1] ASC,
	[ObjectID2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Object_Folder_Join]    Script Date: 08/17/2011 16:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Object_Folder_Join](
	[ObjectID] [int] NOT NULL,
	[FolderID] [int] NOT NULL,
	[IsShortcut] [bit] NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_Object_Folder_Join_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_Object_Folder_Join] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC,
	[FolderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ObjectType_Insert]    Script Date: 08/17/2011 16:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr	Knudsen
-- Create date: 2010.08.17
--				This SP creates an ObjectType
-- =============================================
CREATE PROCEDURE [dbo].[ObjectType_Insert]
	@Value				varchar(255),
	@SystemPermission	int
AS

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Create ObjectType' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100

	INSERT INTO [ObjectType] ([Value])
    VALUES ( @Value )

	RETURN @@IDENTITY
GO
/****** Object:  Table [dbo].[Format]    Script Date: 08/17/2011 16:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Format](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FormatCategoryID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[FormatXml] [xml] NULL,
	[MimeType] [varchar](255) NOT NULL,
	[FileExtension] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Format] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Folder_User_Join]    Script Date: 08/17/2011 16:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Folder_User_Join](
	[FolderID] [int] NOT NULL,
	[UserGUID] [uniqueidentifier] NOT NULL,
	[Permission] [int] NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_Folder_User_Join_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_Folder_User_Join] PRIMARY KEY CLUSTERED 
(
	[FolderID] ASC,
	[UserGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Folder_Group_Join]    Script Date: 08/17/2011 16:27:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Folder_Group_Join](
	[FolderID] [int] NOT NULL,
	[GroupGUID] [uniqueidentifier] NOT NULL,
	[Permission] [int] NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_Folder_Group_Join_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_Folder_Group_Join] PRIMARY KEY CLUSTERED 
(
	[FolderID] ASC,
	[GroupGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[File]    Script Date: 08/17/2011 16:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[File](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NOT NULL,
	[ParentID] [int] NULL,
	[FormatID] [int] NOT NULL,
	[DestinationID] [int] NOT NULL,
	[Filename] [varchar](max) NOT NULL,
	[OriginalFilename] [varchar](max) NOT NULL,
	[FolderPath] [varchar](max) NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_File_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Conversion]    Script Date: 08/17/2011 16:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conversion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccessPointID] [int] NOT NULL,
	[FormatCategoryID] [int] NOT NULL,
	[FormatID] [int] NOT NULL,
	[DestinationID] [int] NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_Conversion_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_Conversion] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_AccessPointID_FormatCategoryID_FormatID_DestinationID_AAAA] ON [dbo].[Conversion] 
(
	[AccessPointID] ASC,
	[FormatCategoryID] ASC,
	[FormatID] ASC,
	[DestinationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessPoint]    Script Date: 08/17/2011 16:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccessPoint](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_AccessPoint_GUID]  DEFAULT (newid()),
	[SubscriptionGUID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_AccessPoint_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_AccessPoint] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [QK_AccessPoint_GUID_A] UNIQUE NONCLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccessPoint_User_Join]    Script Date: 08/17/2011 16:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessPoint_User_Join](
	[AccessPointID] [int] NOT NULL,
	[UserGUID] [uniqueidentifier] NOT NULL,
	[Permission] [int] NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_AccessPoint_User_Join_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_AccessPoint_User_Join] PRIMARY KEY CLUSTERED 
(
	[AccessPointID] ASC,
	[UserGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessPoint_Object_Join]    Script Date: 08/17/2011 16:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessPoint_Object_Join](
	[AccessPointID] [int] NOT NULL,
	[ObjectID] [int] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_AccessPoint_Object_Join_DateCreated]  DEFAULT (getdate()),
	[DateModified] [datetime] NOT NULL CONSTRAINT [DF_AccessPoint_Object_Join_DateModified]  DEFAULT (getdate()),
 CONSTRAINT [PK_AccessPoint_Object_Join] PRIMARY KEY CLUSTERED 
(
	[AccessPointID] ASC,
	[ObjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessPoint_Group_Join]    Script Date: 08/17/2011 16:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessPoint_Group_Join](
	[AcessPointID] [int] NOT NULL,
	[GroupGUID] [uniqueidentifier] NOT NULL,
	[Permission] [int] NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_AccessPoint_Group_Join_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_AccessPoint_Group_Join] PRIMARY KEY CLUSTERED 
(
	[AcessPointID] ASC,
	[GroupGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[PopulateDefaultData]    Script Date: 08/17/2011 16:27:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr	Knudsen
-- Create date: 2010.08.17
--				This SP Pupulate MCM with Default data
-- =============================================
CREATE PROCEDURE [dbo].[PopulateDefaultData]

AS
	IF( 1 = 1 )
	BEGIN

		DELETE FROM AccessPoint_User_Join
		DELETE FROM AccessPoint_Group_Join
		DELETE FROM AccessPoint_Object_Join
		DELETE FROM AccessPoint
		DELETE FROM AccessProvider
		DELETE FROM Destination
		DELETE FROM [File]
		DELETE FROM Folder
		DELETE FROM Folder_Group_Join
		DELETE FROM FolderType
		DELETE FROM Format
		DELETE FROM FormatCategory
		DELETE FROM FormatType
		DELETE FROM [Language]
		DELETE FROM Metadata
		DELETE FROM MetadataSchema
		DELETE FROM MetadataSchema_Group_Join
		DELETE FROM MetadataSchema_User_Join
		DELETE FROM Object
		DELETE FROM Object_Folder_Join
		DELETE FROM Object_Object_Join
		DELETE FROM ObjectType
		DELETE FROM Permission

		DBCC CHECKIDENT ("AccessPoint", RESEED,0)
		DBCC CHECKIDENT ("AccessProvider", RESEED,0)
		DBCC CHECKIDENT ("[File]", RESEED,0)
		DBCC CHECKIDENT ("FolderType", RESEED,0)
		DBCC CHECKIDENT ("Folder", RESEED,0)
		DBCC CHECKIDENT ("Format", RESEED,0)
		DBCC CHECKIDENT ("FormatCategory", RESEED,0)
		DBCC CHECKIDENT ("FormatType", RESEED,0)
		DBCC CHECKIDENT ("[Language]", RESEED,0)
		DBCC CHECKIDENT ("Metadata", RESEED,0)
		DBCC CHECKIDENT ("MetadataSchema", RESEED,0)
		DBCC CHECKIDENT ("Object", RESEED,0)
		DBCC CHECKIDENT ("ObjectType", RESEED,0)

		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('System','Create ObjectType',1,'Permissoin to Create a Object Type')

		INSERT INTO [ObjectType] ([Value])VALUES ('Asset')
	END
GO
/****** Object:  ForeignKey [FK_AccessProvider_Destination]    Script Date: 08/17/2011 16:27:28 ******/
ALTER TABLE [dbo].[AccessProvider]  WITH CHECK ADD  CONSTRAINT [FK_AccessProvider_Destination] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[Destination] ([ID])
GO
ALTER TABLE [dbo].[AccessProvider] CHECK CONSTRAINT [FK_AccessProvider_Destination]
GO
/****** Object:  ForeignKey [FK_Folder_Folder]    Script Date: 08/17/2011 16:27:28 ******/
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_Folder] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Folder] ([ID])
GO
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_Folder]
GO
/****** Object:  ForeignKey [FK_Folder_FolderType]    Script Date: 08/17/2011 16:27:28 ******/
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_FolderType] FOREIGN KEY([FolderTypeID])
REFERENCES [dbo].[FolderType] ([ID])
GO
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_FolderType]
GO
/****** Object:  ForeignKey [FK_FormatCategory_FormatType]    Script Date: 08/17/2011 16:27:29 ******/
ALTER TABLE [dbo].[FormatCategory]  WITH CHECK ADD  CONSTRAINT [FK_FormatCategory_FormatType] FOREIGN KEY([FormatTypeID])
REFERENCES [dbo].[FormatType] ([ID])
GO
ALTER TABLE [dbo].[FormatCategory] CHECK CONSTRAINT [FK_FormatCategory_FormatType]
GO
/****** Object:  ForeignKey [FK_Object_ObjectType]    Script Date: 08/17/2011 16:27:31 ******/
ALTER TABLE [dbo].[Object]  WITH CHECK ADD  CONSTRAINT [FK_Object_ObjectType] FOREIGN KEY([ObjectTypeID])
REFERENCES [dbo].[ObjectType] ([ID])
GO
ALTER TABLE [dbo].[Object] CHECK CONSTRAINT [FK_Object_ObjectType]
GO
/****** Object:  ForeignKey [FK_MetadataSchema_User_Join_MetadataSchema]    Script Date: 08/17/2011 16:27:31 ******/
ALTER TABLE [dbo].[MetadataSchema_User_Join]  WITH CHECK ADD  CONSTRAINT [FK_MetadataSchema_User_Join_MetadataSchema] FOREIGN KEY([MetadataSchemaID])
REFERENCES [dbo].[MetadataSchema] ([ID])
GO
ALTER TABLE [dbo].[MetadataSchema_User_Join] CHECK CONSTRAINT [FK_MetadataSchema_User_Join_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_MetadataSchema_Group_Join_MetadataSchema]    Script Date: 08/17/2011 16:27:31 ******/
ALTER TABLE [dbo].[MetadataSchema_Group_Join]  WITH CHECK ADD  CONSTRAINT [FK_MetadataSchema_Group_Join_MetadataSchema] FOREIGN KEY([MetadataSchemaID])
REFERENCES [dbo].[MetadataSchema] ([ID])
GO
ALTER TABLE [dbo].[MetadataSchema_Group_Join] CHECK CONSTRAINT [FK_MetadataSchema_Group_Join_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_Metadata_Language]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Metadata]  WITH CHECK ADD  CONSTRAINT [FK_Metadata_Language] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[Metadata] CHECK CONSTRAINT [FK_Metadata_Language]
GO
/****** Object:  ForeignKey [FK_Metadata_MetadataSchema]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Metadata]  WITH CHECK ADD  CONSTRAINT [FK_Metadata_MetadataSchema] FOREIGN KEY([MetadataSchemaID])
REFERENCES [dbo].[MetadataSchema] ([ID])
GO
ALTER TABLE [dbo].[Metadata] CHECK CONSTRAINT [FK_Metadata_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_Metadata_Object]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Metadata]  WITH CHECK ADD  CONSTRAINT [FK_Metadata_Object] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[Metadata] CHECK CONSTRAINT [FK_Metadata_Object]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_Object]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Object_Join]  WITH CHECK ADD  CONSTRAINT [FK_Object_Object_Join_Object] FOREIGN KEY([ObjectID1])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[Object_Object_Join] CHECK CONSTRAINT [FK_Object_Object_Join_Object]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_Object1]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Object_Join]  WITH CHECK ADD  CONSTRAINT [FK_Object_Object_Join_Object1] FOREIGN KEY([ObjectID2])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[Object_Object_Join] CHECK CONSTRAINT [FK_Object_Object_Join_Object1]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_ObjectRelationType]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Object_Join]  WITH CHECK ADD  CONSTRAINT [FK_Object_Object_Join_ObjectRelationType] FOREIGN KEY([ObjectRelationTypeID])
REFERENCES [dbo].[ObjectRelationType] ([ID])
GO
ALTER TABLE [dbo].[Object_Object_Join] CHECK CONSTRAINT [FK_Object_Object_Join_ObjectRelationType]
GO
/****** Object:  ForeignKey [FK_Object_Folder_Join_Folder]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Folder_Join]  WITH CHECK ADD  CONSTRAINT [FK_Object_Folder_Join_Folder] FOREIGN KEY([FolderID])
REFERENCES [dbo].[Folder] ([ID])
GO
ALTER TABLE [dbo].[Object_Folder_Join] CHECK CONSTRAINT [FK_Object_Folder_Join_Folder]
GO
/****** Object:  ForeignKey [FK_Object_Folder_Join_Object]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Object_Folder_Join]  WITH CHECK ADD  CONSTRAINT [FK_Object_Folder_Join_Object] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[Object_Folder_Join] CHECK CONSTRAINT [FK_Object_Folder_Join_Object]
GO
/****** Object:  ForeignKey [FK_Format_FormatCategory]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Format]  WITH CHECK ADD  CONSTRAINT [FK_Format_FormatCategory] FOREIGN KEY([FormatCategoryID])
REFERENCES [dbo].[FormatCategory] ([ID])
GO
ALTER TABLE [dbo].[Format] CHECK CONSTRAINT [FK_Format_FormatCategory]
GO
/****** Object:  ForeignKey [FK_Folder_User_Join_Folder]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Folder_User_Join]  WITH CHECK ADD  CONSTRAINT [FK_Folder_User_Join_Folder] FOREIGN KEY([FolderID])
REFERENCES [dbo].[Folder] ([ID])
GO
ALTER TABLE [dbo].[Folder_User_Join] CHECK CONSTRAINT [FK_Folder_User_Join_Folder]
GO
/****** Object:  ForeignKey [FK_Folder_Group_Join_Folder]    Script Date: 08/17/2011 16:27:33 ******/
ALTER TABLE [dbo].[Folder_Group_Join]  WITH CHECK ADD  CONSTRAINT [FK_Folder_Group_Join_Folder] FOREIGN KEY([FolderID])
REFERENCES [dbo].[Folder] ([ID])
GO
ALTER TABLE [dbo].[Folder_Group_Join] CHECK CONSTRAINT [FK_Folder_Group_Join_Folder]
GO
/****** Object:  ForeignKey [FK_File_Destination]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_Destination] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[Destination] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_Destination]
GO
/****** Object:  ForeignKey [FK_File_File]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_File] FOREIGN KEY([ParentID])
REFERENCES [dbo].[File] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_File]
GO
/****** Object:  ForeignKey [FK_File_Format]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_Format] FOREIGN KEY([FormatID])
REFERENCES [dbo].[Format] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_Format]
GO
/****** Object:  ForeignKey [FK_File_Object]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_Object] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_Object]
GO
/****** Object:  ForeignKey [FK_Conversion_Destination]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[Conversion]  WITH CHECK ADD  CONSTRAINT [FK_Conversion_Destination] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[Destination] ([ID])
GO
ALTER TABLE [dbo].[Conversion] CHECK CONSTRAINT [FK_Conversion_Destination]
GO
/****** Object:  ForeignKey [FK_Conversion_Format]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[Conversion]  WITH CHECK ADD  CONSTRAINT [FK_Conversion_Format] FOREIGN KEY([FormatID])
REFERENCES [dbo].[Format] ([ID])
GO
ALTER TABLE [dbo].[Conversion] CHECK CONSTRAINT [FK_Conversion_Format]
GO
/****** Object:  ForeignKey [FK_Conversion_FormatCategory]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[Conversion]  WITH CHECK ADD  CONSTRAINT [FK_Conversion_FormatCategory] FOREIGN KEY([FormatCategoryID])
REFERENCES [dbo].[FormatCategory] ([ID])
GO
ALTER TABLE [dbo].[Conversion] CHECK CONSTRAINT [FK_Conversion_FormatCategory]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Conversion]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint]  WITH CHECK ADD  CONSTRAINT [FK_AccessPoint_Conversion] FOREIGN KEY([ID])
REFERENCES [dbo].[Conversion] ([ID])
GO
ALTER TABLE [dbo].[AccessPoint] CHECK CONSTRAINT [FK_AccessPoint_Conversion]
GO
/****** Object:  ForeignKey [FK_AccessPoint_User_Join_AccessPoint]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint_User_Join]  WITH CHECK ADD  CONSTRAINT [FK_AccessPoint_User_Join_AccessPoint] FOREIGN KEY([AccessPointID])
REFERENCES [dbo].[AccessPoint] ([ID])
GO
ALTER TABLE [dbo].[AccessPoint_User_Join] CHECK CONSTRAINT [FK_AccessPoint_User_Join_AccessPoint]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Object_Join_AccessPoint]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint_Object_Join]  WITH CHECK ADD  CONSTRAINT [FK_AccessPoint_Object_Join_AccessPoint] FOREIGN KEY([AccessPointID])
REFERENCES [dbo].[AccessPoint] ([ID])
GO
ALTER TABLE [dbo].[AccessPoint_Object_Join] CHECK CONSTRAINT [FK_AccessPoint_Object_Join_AccessPoint]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Object_Join_Object]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint_Object_Join]  WITH CHECK ADD  CONSTRAINT [FK_AccessPoint_Object_Join_Object] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[AccessPoint_Object_Join] CHECK CONSTRAINT [FK_AccessPoint_Object_Join_Object]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Group_Join_AccessPoint]    Script Date: 08/17/2011 16:27:34 ******/
ALTER TABLE [dbo].[AccessPoint_Group_Join]  WITH CHECK ADD  CONSTRAINT [FK_AccessPoint_Group_Join_AccessPoint] FOREIGN KEY([AcessPointID])
REFERENCES [dbo].[AccessPoint] ([ID])
GO
ALTER TABLE [dbo].[AccessPoint_Group_Join] CHECK CONSTRAINT [FK_AccessPoint_Group_Join_AccessPoint]
GO
