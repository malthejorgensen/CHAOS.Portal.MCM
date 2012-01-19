USE [master]
GO
/****** Object:  Database [MCM]    Script Date: 12/06/2011 14:25:52 ******/
CREATE DATABASE [MCM] ON  PRIMARY 
( NAME = N'MCM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\MCM.mdf' , SIZE = 1929216KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MCM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\MCM_log.ldf' , SIZE = 4632576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
ALTER DATABASE [MCM] SET RECOVERY SIMPLE
GO
ALTER DATABASE [MCM] SET  MULTI_USER
GO
ALTER DATABASE [MCM] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [MCM] SET DB_CHAINING OFF
GO
USE [MCM]
GO
/****** Object:  ForeignKey [FK_Folder_Folder]    Script Date: 12/06/2011 14:25:56 ******/
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Folder]
GO
/****** Object:  ForeignKey [FK_Folder_FolderType]    Script Date: 12/06/2011 14:25:56 ******/
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_FolderType]
GO
/****** Object:  ForeignKey [FK_AccessProvider_Destination]    Script Date: 12/06/2011 14:25:56 ******/
ALTER TABLE [dbo].[AccessProvider] DROP CONSTRAINT [FK_AccessProvider_Destination]
GO
/****** Object:  ForeignKey [FK_FormatCategory_FormatType]    Script Date: 12/06/2011 14:25:56 ******/
ALTER TABLE [dbo].[FormatCategory] DROP CONSTRAINT [FK_FormatCategory_FormatType]
GO
/****** Object:  ForeignKey [FK_Object_ObjectType]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object] DROP CONSTRAINT [FK_Object_ObjectType]
GO
/****** Object:  ForeignKey [FK_MetadataSchema_User_Join_MetadataSchema]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[MetadataSchema_User_Join] DROP CONSTRAINT [FK_MetadataSchema_User_Join_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_MetadataSchema_Group_Join_MetadataSchema]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[MetadataSchema_Group_Join] DROP CONSTRAINT [FK_MetadataSchema_Group_Join_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_Object_Folder_Join_Folder]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object_Folder_Join] DROP CONSTRAINT [FK_Object_Folder_Join_Folder]
GO
/****** Object:  ForeignKey [FK_Object_Folder_Join_Object]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object_Folder_Join] DROP CONSTRAINT [FK_Object_Folder_Join_Object]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_Object]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object_Object_Join] DROP CONSTRAINT [FK_Object_Object_Join_Object]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_Object1]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object_Object_Join] DROP CONSTRAINT [FK_Object_Object_Join_Object1]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_ObjectRelationType]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object_Object_Join] DROP CONSTRAINT [FK_Object_Object_Join_ObjectRelationType]
GO
/****** Object:  ForeignKey [FK_Format_FormatCategory]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Format] DROP CONSTRAINT [FK_Format_FormatCategory]
GO
/****** Object:  ForeignKey [FK_Metadata_Language]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Metadata] DROP CONSTRAINT [FK_Metadata_Language]
GO
/****** Object:  ForeignKey [FK_Metadata_MetadataSchema]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Metadata] DROP CONSTRAINT [FK_Metadata_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_Metadata_Object]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Metadata] DROP CONSTRAINT [FK_Metadata_Object]
GO
/****** Object:  ForeignKey [FK_Folder_User_Join_Folder]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Folder_User_Join] DROP CONSTRAINT [FK_Folder_User_Join_Folder]
GO
/****** Object:  ForeignKey [FK_Folder_Group_Join_Folder]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Folder_Group_Join] DROP CONSTRAINT [FK_Folder_Group_Join_Folder]
GO
/****** Object:  ForeignKey [FK_Conversion_Destination]    Script Date: 12/06/2011 14:25:59 ******/
ALTER TABLE [dbo].[Conversion] DROP CONSTRAINT [FK_Conversion_Destination]
GO
/****** Object:  ForeignKey [FK_Conversion_Format]    Script Date: 12/06/2011 14:25:59 ******/
ALTER TABLE [dbo].[Conversion] DROP CONSTRAINT [FK_Conversion_Format]
GO
/****** Object:  ForeignKey [FK_Conversion_FormatCategory]    Script Date: 12/06/2011 14:25:59 ******/
ALTER TABLE [dbo].[Conversion] DROP CONSTRAINT [FK_Conversion_FormatCategory]
GO
/****** Object:  ForeignKey [FK_File_Destination]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_Destination]
GO
/****** Object:  ForeignKey [FK_File_File]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_File]
GO
/****** Object:  ForeignKey [FK_File_Format]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_Format]
GO
/****** Object:  ForeignKey [FK_File_Object]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[File] DROP CONSTRAINT [FK_File_Object]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Conversion]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint] DROP CONSTRAINT [FK_AccessPoint_Conversion]
GO
/****** Object:  ForeignKey [FK_AccessPoint_User_Join_AccessPoint]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint_User_Join] DROP CONSTRAINT [FK_AccessPoint_User_Join_AccessPoint]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Object_Join_AccessPoint]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint_Object_Join] DROP CONSTRAINT [FK_AccessPoint_Object_Join_AccessPoint]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Object_Join_Object]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint_Object_Join] DROP CONSTRAINT [FK_AccessPoint_Object_Join_Object]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Group_Join_AccessPoint]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint_Group_Join] DROP CONSTRAINT [FK_AccessPoint_Group_Join_AccessPoint]
GO
/****** Object:  StoredProcedure [dbo].[PopulateDefaultData]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[PopulateDefaultData]
GO
/****** Object:  StoredProcedure [dbo].[Metadata_Set]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[Metadata_Set]
GO
/****** Object:  StoredProcedure [dbo].[Object_Get]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[Object_Get]
GO
/****** Object:  StoredProcedure [dbo].[Object_GetAllWithPaging]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[Object_GetAllWithPaging]
GO
/****** Object:  StoredProcedure [dbo].[Object_GetByGUIDs]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[Object_GetByGUIDs]
GO
/****** Object:  StoredProcedure [dbo].[ObjectRelation_Create]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[ObjectRelation_Create]
GO
/****** Object:  StoredProcedure [dbo].[ObjectRelation_Delete]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[ObjectRelation_Delete]
GO
/****** Object:  Table [dbo].[AccessPoint_Group_Join]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint_Group_Join] DROP CONSTRAINT [FK_AccessPoint_Group_Join_AccessPoint]
GO
ALTER TABLE [dbo].[AccessPoint_Group_Join] DROP CONSTRAINT [DF_AccessPoint_Group_Join_DateCreated]
GO
DROP TABLE [dbo].[AccessPoint_Group_Join]
GO
/****** Object:  Table [dbo].[AccessPoint_Object_Join]    Script Date: 12/06/2011 14:26:00 ******/
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
/****** Object:  Table [dbo].[AccessPoint_User_Join]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint_User_Join] DROP CONSTRAINT [FK_AccessPoint_User_Join_AccessPoint]
GO
ALTER TABLE [dbo].[AccessPoint_User_Join] DROP CONSTRAINT [DF_AccessPoint_User_Join_DateCreated]
GO
DROP TABLE [dbo].[AccessPoint_User_Join]
GO
/****** Object:  StoredProcedure [dbo].[File_Create]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[File_Create]
GO
/****** Object:  View [dbo].[FileInfo]    Script Date: 12/06/2011 14:26:00 ******/
DROP VIEW [dbo].[FileInfo]
GO
/****** Object:  Table [dbo].[AccessPoint]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint] DROP CONSTRAINT [FK_AccessPoint_Conversion]
GO
ALTER TABLE [dbo].[AccessPoint] DROP CONSTRAINT [DF_AccessPoint_GUID]
GO
ALTER TABLE [dbo].[AccessPoint] DROP CONSTRAINT [DF_AccessPoint_DateCreated]
GO
DROP TABLE [dbo].[AccessPoint]
GO
/****** Object:  StoredProcedure [dbo].[Folder_Create]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[Folder_Create]
GO
/****** Object:  StoredProcedure [dbo].[Folder_Delete]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[Folder_Delete]
GO
/****** Object:  StoredProcedure [dbo].[Folder_Update]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[Folder_Update]
GO
/****** Object:  StoredProcedure [dbo].[FolderInfo_Get]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[FolderInfo_Get]
GO
/****** Object:  StoredProcedure [dbo].[Object_Folder_Join_Update]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[Object_Folder_Join_Update]
GO
/****** Object:  StoredProcedure [dbo].[Object_Create]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[Object_Create]
GO
/****** Object:  StoredProcedure [dbo].[Object_Delete]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[Object_Delete]
GO
/****** Object:  UserDefinedFunction [dbo].[Object_FindHighestUserPermission]    Script Date: 12/06/2011 14:26:00 ******/
DROP FUNCTION [dbo].[Object_FindHighestUserPermission]
GO
/****** Object:  StoredProcedure [dbo].[Metadata_Get]    Script Date: 12/06/2011 14:26:00 ******/
DROP PROCEDURE [dbo].[Metadata_Get]
GO
/****** Object:  Table [dbo].[File]    Script Date: 12/06/2011 14:26:00 ******/
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
/****** Object:  UserDefinedFunction [dbo].[Folder_IsFolderHighestLevel]    Script Date: 12/06/2011 14:26:00 ******/
DROP FUNCTION [dbo].[Folder_IsFolderHighestLevel]
GO
/****** Object:  View [dbo].[FolderInfo]    Script Date: 12/06/2011 14:26:00 ******/
DROP VIEW [dbo].[FolderInfo]
GO
/****** Object:  UserDefinedFunction [dbo].[Folder_FindHighestUserPermission]    Script Date: 12/06/2011 14:25:59 ******/
DROP FUNCTION [dbo].[Folder_FindHighestUserPermission]
GO
/****** Object:  StoredProcedure [dbo].[Folder_Get]    Script Date: 12/06/2011 14:25:59 ******/
DROP PROCEDURE [dbo].[Folder_Get]
GO
/****** Object:  StoredProcedure [dbo].[Folder_Get_DirectFolderAssociations]    Script Date: 12/06/2011 14:25:59 ******/
DROP PROCEDURE [dbo].[Folder_Get_DirectFolderAssociations]
GO
/****** Object:  Table [dbo].[Conversion]    Script Date: 12/06/2011 14:25:59 ******/
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
/****** Object:  Table [dbo].[Folder_Group_Join]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Folder_Group_Join] DROP CONSTRAINT [FK_Folder_Group_Join_Folder]
GO
ALTER TABLE [dbo].[Folder_Group_Join] DROP CONSTRAINT [DF_Folder_Group_Join_DateCreated]
GO
DROP TABLE [dbo].[Folder_Group_Join]
GO
/****** Object:  Table [dbo].[Folder_User_Join]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Folder_User_Join] DROP CONSTRAINT [FK_Folder_User_Join_Folder]
GO
ALTER TABLE [dbo].[Folder_User_Join] DROP CONSTRAINT [DF_Folder_User_Join_DateCreated]
GO
DROP TABLE [dbo].[Folder_User_Join]
GO
/****** Object:  StoredProcedure [dbo].[Language_Update]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[Language_Update]
GO
/****** Object:  Table [dbo].[Metadata]    Script Date: 12/06/2011 14:25:58 ******/
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
/****** Object:  StoredProcedure [dbo].[FolderType_Update]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[FolderType_Update]
GO
/****** Object:  Table [dbo].[Format]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Format] DROP CONSTRAINT [FK_Format_FormatCategory]
GO
DROP TABLE [dbo].[Format]
GO
/****** Object:  StoredProcedure [dbo].[FormatType_Update]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[FormatType_Update]
GO
/****** Object:  UserDefinedFunction [dbo].[GetParentFolders]    Script Date: 12/06/2011 14:25:58 ******/
DROP FUNCTION [dbo].[GetParentFolders]
GO
/****** Object:  StoredProcedure [dbo].[Language_Create]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[Language_Create]
GO
/****** Object:  StoredProcedure [dbo].[Language_Delete]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[Language_Delete]
GO
/****** Object:  StoredProcedure [dbo].[FolderType_Create]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[FolderType_Create]
GO
/****** Object:  StoredProcedure [dbo].[FolderType_Delete]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[FolderType_Delete]
GO
/****** Object:  StoredProcedure [dbo].[FormatType_Create]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[FormatType_Create]
GO
/****** Object:  StoredProcedure [dbo].[FormatType_Delete]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[FormatType_Delete]
GO
/****** Object:  Table [dbo].[Object_Object_Join]    Script Date: 12/06/2011 14:25:58 ******/
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
/****** Object:  Table [dbo].[Object_Folder_Join]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object_Folder_Join] DROP CONSTRAINT [FK_Object_Folder_Join_Folder]
GO
ALTER TABLE [dbo].[Object_Folder_Join] DROP CONSTRAINT [FK_Object_Folder_Join_Object]
GO
ALTER TABLE [dbo].[Object_Folder_Join] DROP CONSTRAINT [DF_Object_Folder_Join_DateCreated]
GO
DROP TABLE [dbo].[Object_Folder_Join]
GO
/****** Object:  StoredProcedure [dbo].[ObjectRelationType_Update]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[ObjectRelationType_Update]
GO
/****** Object:  StoredProcedure [dbo].[ObjectRelationType_Create]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[ObjectRelationType_Create]
GO
/****** Object:  StoredProcedure [dbo].[ObjectRelationType_Delete]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[ObjectRelationType_Delete]
GO
/****** Object:  StoredProcedure [dbo].[ObjectType_Delete]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[ObjectType_Delete]
GO
/****** Object:  StoredProcedure [dbo].[ObjectType_Insert]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[ObjectType_Insert]
GO
/****** Object:  StoredProcedure [dbo].[ObjectType_Update]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[ObjectType_Update]
GO
/****** Object:  StoredProcedure [dbo].[ObjectType_Get]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[ObjectType_Get]
GO
/****** Object:  StoredProcedure [dbo].[ObjectRelationType_Get]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[ObjectRelationType_Get]
GO
/****** Object:  StoredProcedure [dbo].[MetadataSchema_Get]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[MetadataSchema_Get]
GO
/****** Object:  Table [dbo].[MetadataSchema_Group_Join]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[MetadataSchema_Group_Join] DROP CONSTRAINT [FK_MetadataSchema_Group_Join_MetadataSchema]
GO
ALTER TABLE [dbo].[MetadataSchema_Group_Join] DROP CONSTRAINT [DF_MetadataSchema_Group_Join_DateCreated]
GO
DROP TABLE [dbo].[MetadataSchema_Group_Join]
GO
/****** Object:  Table [dbo].[MetadataSchema_User_Join]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[MetadataSchema_User_Join] DROP CONSTRAINT [FK_MetadataSchema_User_Join_MetadataSchema]
GO
ALTER TABLE [dbo].[MetadataSchema_User_Join] DROP CONSTRAINT [DF_MetadataSchema_User_Join_DateCreated]
GO
DROP TABLE [dbo].[MetadataSchema_User_Join]
GO
/****** Object:  Table [dbo].[Object]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object] DROP CONSTRAINT [FK_Object_ObjectType]
GO
ALTER TABLE [dbo].[Object] DROP CONSTRAINT [DF_Object_GUID]
GO
ALTER TABLE [dbo].[Object] DROP CONSTRAINT [DF_Object_DateCreated]
GO
DROP TABLE [dbo].[Object]
GO
/****** Object:  StoredProcedure [dbo].[FormatType_Get]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[FormatType_Get]
GO
/****** Object:  StoredProcedure [dbo].[FolderType_Get]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[FolderType_Get]
GO
/****** Object:  StoredProcedure [dbo].[Language_Get]    Script Date: 12/06/2011 14:25:58 ******/
DROP PROCEDURE [dbo].[Language_Get]
GO
/****** Object:  UserDefinedFunction [dbo].[GetPermissionForAction]    Script Date: 12/06/2011 14:25:57 ******/
DROP FUNCTION [dbo].[GetPermissionForAction]
GO
/****** Object:  Table [dbo].[FormatCategory]    Script Date: 12/06/2011 14:25:56 ******/
ALTER TABLE [dbo].[FormatCategory] DROP CONSTRAINT [FK_FormatCategory_FormatType]
GO
DROP TABLE [dbo].[FormatCategory]
GO
/****** Object:  Table [dbo].[AccessProvider]    Script Date: 12/06/2011 14:25:56 ******/
ALTER TABLE [dbo].[AccessProvider] DROP CONSTRAINT [FK_AccessProvider_Destination]
GO
DROP TABLE [dbo].[AccessProvider]
GO
/****** Object:  Table [dbo].[Folder]    Script Date: 12/06/2011 14:25:56 ******/
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_Folder]
GO
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [FK_Folder_FolderType]
GO
ALTER TABLE [dbo].[Folder] DROP CONSTRAINT [DF_Folder_DateCreated]
GO
DROP TABLE [dbo].[Folder]
GO
/****** Object:  Table [dbo].[Destination]    Script Date: 12/06/2011 14:25:55 ******/
ALTER TABLE [dbo].[Destination] DROP CONSTRAINT [DF_Destination_DateCreated]
GO
DROP TABLE [dbo].[Destination]
GO
/****** Object:  Table [dbo].[FormatType]    Script Date: 12/06/2011 14:25:55 ******/
DROP TABLE [dbo].[FormatType]
GO
/****** Object:  Table [dbo].[FolderType]    Script Date: 12/06/2011 14:25:55 ******/
ALTER TABLE [dbo].[FolderType] DROP CONSTRAINT [DF_FolderType_DateCreated]
GO
DROP TABLE [dbo].[FolderType]
GO
/****** Object:  UserDefinedTableType [dbo].[GUIDList]    Script Date: 12/06/2011 14:25:55 ******/
DROP TYPE [dbo].[GUIDList]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 12/06/2011 14:25:55 ******/
DROP TABLE [dbo].[Language]
GO
/****** Object:  Table [dbo].[MetadataSchema]    Script Date: 12/06/2011 14:25:55 ******/
ALTER TABLE [dbo].[MetadataSchema] DROP CONSTRAINT [DF_MetadataSchema_GUID]
GO
ALTER TABLE [dbo].[MetadataSchema] DROP CONSTRAINT [DF_MetadataSchema_DateCreated]
GO
DROP TABLE [dbo].[MetadataSchema]
GO
/****** Object:  Table [dbo].[ObjectRelationType]    Script Date: 12/06/2011 14:25:55 ******/
DROP TABLE [dbo].[ObjectRelationType]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 12/06/2011 14:25:55 ******/
DROP TABLE [dbo].[Permission]
GO
/****** Object:  Table [dbo].[ObjectType]    Script Date: 12/06/2011 14:25:54 ******/
DROP TABLE [dbo].[ObjectType]
GO
/****** Object:  Table [dbo].[ObjectType]    Script Date: 12/06/2011 14:25:54 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [QK_ObjectType_Value_A] UNIQUE NONCLUSTERED 
(
	[Value] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 12/06/2011 14:25:55 ******/
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
/****** Object:  Table [dbo].[ObjectRelationType]    Script Date: 12/06/2011 14:25:55 ******/
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
/****** Object:  Table [dbo].[MetadataSchema]    Script Date: 12/06/2011 14:25:55 ******/
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
/****** Object:  Table [dbo].[Language]    Script Date: 12/06/2011 14:25:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageCode] [varchar](10) NOT NULL,
	[Name] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Language_1] PRIMARY KEY CLUSTERED 
(
	[LanguageCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedTableType [dbo].[GUIDList]    Script Date: 12/06/2011 14:25:55 ******/
CREATE TYPE [dbo].[GUIDList] AS TABLE(
	[GUID] [uniqueidentifier] NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
/****** Object:  Table [dbo].[FolderType]    Script Date: 12/06/2011 14:25:55 ******/
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
/****** Object:  Table [dbo].[FormatType]    Script Date: 12/06/2011 14:25:55 ******/
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
/****** Object:  Table [dbo].[Destination]    Script Date: 12/06/2011 14:25:55 ******/
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
/****** Object:  Table [dbo].[Folder]    Script Date: 12/06/2011 14:25:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Folder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
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
/****** Object:  Table [dbo].[AccessProvider]    Script Date: 12/06/2011 14:25:56 ******/
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
	[Token] [varchar](255) NOT NULL,
 CONSTRAINT [PK_AccessProvider] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormatCategory]    Script Date: 12/06/2011 14:25:56 ******/
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
/****** Object:  UserDefinedFunction [dbo].[GetPermissionForAction]    Script Date: 12/06/2011 14:25:57 ******/
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
/****** Object:  StoredProcedure [dbo].[Language_Get]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to get Languages
-- =============================================
CREATE PROCEDURE [dbo].[Language_Get]
	@Name			varchar(255)	= null,
	@LanguageCode	varchar(10)		= null
AS
BEGIN

	SET NOCOUNT ON;

    SELECT	*
      FROM	[Language]
     WHERE	(@Name IS NULL OR Name = @Name) AND
			(@LanguageCode IS NULL OR LanguageCode = @LanguageCode)
	
END
GO
/****** Object:  StoredProcedure [dbo].[FolderType_Get]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to get folder
-- =============================================
Create PROCEDURE [dbo].[FolderType_Get]
	@ID		int				= null,
	@Name	varchar(255)	= null
AS
BEGIN

	SELECT	*
	  FROM	FolderType
	 WHERE	(@ID IS NULL OR ID = @ID) AND 
			(@Name IS NULL OR Name = @Name)
			
END
GO
/****** Object:  StoredProcedure [dbo].[FormatType_Get]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to get folder
-- =============================================
CREATE PROCEDURE [dbo].[FormatType_Get]
	@ID		int				= null,
	@Value	varchar(255)	= null
AS
BEGIN

	SELECT	*
	  FROM	FormatType
	 WHERE	(@ID IS NULL OR ID = @ID) AND 
			(@Value IS NULL OR Value = @Value)
			
END
GO
/****** Object:  Table [dbo].[Object]    Script Date: 12/06/2011 14:25:58 ******/
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
CREATE NONCLUSTERED INDEX [_dta_index_Object_5_482100758__K2_K1_3_6] ON [dbo].[Object] 
(
	[GUID] ASC,
	[ID] ASC
)
INCLUDE ( [ObjectTypeID],
[DateCreated]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetadataSchema_User_Join]    Script Date: 12/06/2011 14:25:58 ******/
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
/****** Object:  Table [dbo].[MetadataSchema_Group_Join]    Script Date: 12/06/2011 14:25:58 ******/
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
/****** Object:  StoredProcedure [dbo].[MetadataSchema_Get]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- =============================================
---- Author:		Jesper Fyhr Knudsen
---- Create date: 2011.11.24
----				This SP is used to create a relation between two objects
---- =============================================
--CREATE PROCEDURE ObjectRelation_Create
--	@Object1	uniqueidentifier,
--	@Object2	uniqueidentifier
--AS
--BEGIN

--	INSERT INTO [Object_Object_Join] ([ObjectID1],[ObjectID2],[ObjectRelationTypeID],[Sequence],[DateCreated])
--		 VALUES (<ObjectID1, int,>,<ObjectID2, int,>,<ObjectRelationTypeID, int,>,<Sequence, int,>,GETDATE())

--END
--GO

-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.11.24
--				This SP is used to get Metadata Schemas
-- =============================================
CREATE PROCEDURE [dbo].[MetadataSchema_Get]
	@ID		int	= NULL
AS
BEGIN

	SET NOCOUNT ON;

    SELECT	[ID],[GUID],[name],[SchemaXml],[DateCreated]
	  FROM	[MetadataSchema]
	 WHERE	( @ID IS NULL OR @ID = ID )
END
GO
/****** Object:  StoredProcedure [dbo].[ObjectRelationType_Get]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to get object relation types
-- =============================================
CREATE PROCEDURE [dbo].[ObjectRelationType_Get]
	@ID		int				= null,
	@Value	varchar(255)	= null
AS
BEGIN

	SELECT	*
	  FROM	ObjectRelationType
	 WHERE	(@ID IS NULL OR ID = @ID) AND 
			(@Value IS NULL OR Value = @Value)
			
END
GO
/****** Object:  StoredProcedure [dbo].[ObjectType_Get]    Script Date: 12/06/2011 14:25:58 ******/
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
/****** Object:  StoredProcedure [dbo].[ObjectType_Update]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.22
--				This SP is used to update an object type
-- =============================================
CREATE PROCEDURE [dbo].[ObjectType_Update]
	@ID					int,
	@Value				varchar(255),
	@SystemPermission	int
AS
BEGIN

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100
		
	UPDATE [ObjectType]
	   SET [Value] = @Value
	 WHERE ID = @ID
	 
	 RETURN	@@ROWCOUNT

END
GO
/****** Object:  StoredProcedure [dbo].[ObjectType_Insert]    Script Date: 12/06/2011 14:25:58 ******/
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
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100

	INSERT INTO [ObjectType] ([Value])
    VALUES ( @Value )

	RETURN @@IDENTITY
GO
/****** Object:  StoredProcedure [dbo].[ObjectType_Delete]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP deletes an ObjectType, either ID or Value must be set
-- =============================================
CREATE PROCEDURE [dbo].[ObjectType_Delete]
	@ID					int				= null,
	@Value				varchar(255)	= null,
	@SystemPermission	int
AS
BEGIN

	IF( @ID IS NULL AND @Value IS NULL )
		RETURN -10

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100
		
	DELETE	[ObjectType]
	 WHERE	( @ID IS NULL OR ID = @ID ) AND
			( @Value IS NULL OR Value = @Value )
	 
	 RETURN	@@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[ObjectRelationType_Delete]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to Delete object relation types
-- =============================================
CREATE PROCEDURE [dbo].[ObjectRelationType_Delete]
	@ID					int,
	@SystemPermission	int
AS
BEGIN

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100

	DELETE	[ObjectRelationType]
     WHERE	ID = @ID
     
    RETURN @@ROWCOUNT
	
END
GO
/****** Object:  StoredProcedure [dbo].[ObjectRelationType_Create]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to create object relation types
-- =============================================
CREATE PROCEDURE [dbo].[ObjectRelationType_Create]
	@Value				varchar(255),
	@SystemPermission	int
AS
BEGIN

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100

	INSERT INTO [ObjectRelationType]
           ([Value])
     VALUES
           (@Value)
           
    RETURN @@IDENTITY
	
END
GO
/****** Object:  StoredProcedure [dbo].[ObjectRelationType_Update]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to Update object relation types
-- =============================================
CREATE PROCEDURE [dbo].[ObjectRelationType_Update]
	@ID					int,
	@Value				varchar(255),
	@SystemPermission	int
AS
BEGIN

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100

	UPDATE	[ObjectRelationType]
       SET	[Value] = @Value
     WHERE	ID = @ID
     
    RETURN @@ROWCOUNT
	
END
GO
/****** Object:  Table [dbo].[Object_Folder_Join]    Script Date: 12/06/2011 14:25:58 ******/
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
/****** Object:  Table [dbo].[Object_Object_Join]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Object_Object_Join](
	[Object1GUID] [uniqueidentifier] NOT NULL,
	[Object2GUID] [uniqueidentifier] NOT NULL,
	[ObjectRelationTypeID] [int] NOT NULL,
	[Sequence] [int] NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_Object_Object_Join_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_Object_Object_Join] PRIMARY KEY CLUSTERED 
(
	[Object1GUID] ASC,
	[Object2GUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[FormatType_Delete]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to Delete folder types
-- =============================================
CREATE PROCEDURE [dbo].[FormatType_Delete]
	@ID					int,
	@SystemPermission	int
AS
BEGIN

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100

	DELETE	[FormatType]
     WHERE	ID = @ID
     
    RETURN @@ROWCOUNT
	
END
GO
/****** Object:  StoredProcedure [dbo].[FormatType_Create]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to create folder types
-- =============================================
CREATE PROCEDURE [dbo].[FormatType_Create]
	@Value				varchar(255),
	@SystemPermission	int
AS
BEGIN

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100

	INSERT INTO FormatType
           ([Value])
     VALUES
           (@Value)
           
    RETURN @@IDENTITY
	
END
GO
/****** Object:  StoredProcedure [dbo].[FolderType_Delete]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to Delete folder types
-- =============================================
CREATE PROCEDURE [dbo].[FolderType_Delete]
	@ID					int,
	@SystemPermission	int
AS
BEGIN

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100

	DELETE	[FolderType]
     WHERE	ID = @ID
     
    RETURN @@ROWCOUNT
	
END
GO
/****** Object:  StoredProcedure [dbo].[FolderType_Create]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to create folder types
-- =============================================
Create PROCEDURE [dbo].[FolderType_Create]
	@Name				varchar(255),
	@SystemPermission	int
AS
BEGIN

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100

	INSERT INTO FolderType
           ([Name])
     VALUES
           (@Name)
           
    RETURN @@IDENTITY
	
END
GO
/****** Object:  StoredProcedure [dbo].[Language_Delete]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP Deletes a language
-- =============================================
CREATE PROCEDURE [dbo].[Language_Delete]
	@LanguageCode		varchar(10),
	@SystemPermission	int
AS
BEGIN
	
	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100
	
	DELETE	[Language]
	 WHERE	LanguageCode = @LanguageCode

	RETURN @@ROWCOUNT

END
GO
/****** Object:  StoredProcedure [dbo].[Language_Create]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP Creates a language
-- =============================================
CREATE PROCEDURE [dbo].[Language_Create]
	@Name				varchar(255),
	@LanguageCode		varchar(10),
	@SystemPermission	int
AS
BEGIN
	
	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100
	
	INSERT INTO [Language] ([Name],[LanguageCode])
         VALUES	(@Name, @LanguageCode)

	RETURN @@IDENTITY

END
GO
/****** Object:  UserDefinedFunction [dbo].[GetParentFolders]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.11.04
--				This Table function returns the parent folder chain
-- =============================================
CREATE FUNCTION [dbo].[GetParentFolders]
(
	@FolderID int
)
RETURNS 
@Folders TABLE
(
	FolderID int
)
AS
BEGIN
	DECLARE @ParentID INT

	SELECT	@ParentID = ParentID
	  FROM	Folder
	 WHERE	ID = @FolderID

	INSERT INTO @Folders VALUES (@FolderID)

	WHILE( @ParentID IS NOT NULL )
	BEGIN

		INSERT INTO @Folders VALUES(@ParentID)

		SELECT	@ParentID = ParentID 
		  FROM	Folder
		 WHERE  ID = @ParentID

	END
	
	RETURN
END
GO
/****** Object:  StoredProcedure [dbo].[FormatType_Update]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to Update folder types
-- =============================================
CREATE PROCEDURE [dbo].[FormatType_Update]
	@ID					int,
	@Value				varchar(255),
	@SystemPermission	int
AS
BEGIN

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100

	UPDATE	FormatType
       SET	[Value] = @Value
     WHERE	ID = @ID
     
    RETURN @@ROWCOUNT
	
END
GO
/****** Object:  Table [dbo].[Format]    Script Date: 12/06/2011 14:25:58 ******/
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
 CONSTRAINT [PK_Format] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[FolderType_Update]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP is used to Update folder types
-- =============================================
create PROCEDURE [dbo].[FolderType_Update]
	@ID					int,
	@Name				varchar(255),
	@SystemPermission	int
AS
BEGIN

	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100

	UPDATE	FolderType
       SET	[Name] = @Name
     WHERE	ID = @ID
     
    RETURN @@ROWCOUNT
	
END
GO
/****** Object:  Table [dbo].[Metadata]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Metadata](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NOT NULL,
	[LanguageCode] [varchar](10) NULL,
	[MetadataSchemaID] [int] NOT NULL,
	[MetadataXml] [xml] NOT NULL,
	[DateCreated] [datetime] NOT NULL CONSTRAINT [DF_Metadata_DateCreated]  DEFAULT (getdate()),
	[DateModified] [datetime] NOT NULL CONSTRAINT [DF_Metadata_DateModified]  DEFAULT (getdate()),
	[DateLocked] [datetime] NULL,
	[LockUserGUID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Metadata] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [_dta_index_Metadata_5_1630628852__K2_1_3_4_5_6_7_8_9] ON [dbo].[Metadata] 
(
	[ObjectID] ASC
)
INCLUDE ( [ID],
[LanguageCode],
[MetadataSchemaID],
[MetadataXml],
[DateCreated],
[DateModified],
[DateLocked],
[LockUserGUID]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Language_Update]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.23
--				This SP Updates a language
-- =============================================
CREATE PROCEDURE [dbo].[Language_Update]
	@Name				varchar(255),
	@LanguageCode		varchar(10),
	@SystemPermission	int
AS
BEGIN
	
	DECLARE @RequiredPermission INT
	SET @RequiredPermission = dbo.GetPermissionForAction( 'System', 'Manage Type' )

	IF( @RequiredPermission & @SystemPermission <> @RequiredPermission )
		RETURN -100
	
	UPDATE	[Language]
	   SET	[Name] = @Name
	 WHERE	LanguageCode = @LanguageCode

	RETURN @@ROWCOUNT

END
GO
/****** Object:  Table [dbo].[Folder_User_Join]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Folder_User_Join](
	[FolderID] [int] NOT NULL,
	[UserGUID] [uniqueidentifier] NOT NULL,
	[Permission] [binary](4) NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_Folder_User_Join_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_Folder_User_Join] PRIMARY KEY CLUSTERED 
(
	[FolderID] ASC,
	[UserGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Folder_Group_Join]    Script Date: 12/06/2011 14:25:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Folder_Group_Join](
	[FolderID] [int] NOT NULL,
	[GroupGUID] [uniqueidentifier] NOT NULL,
	[Permission] [binary](4) NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_Folder_Group_Join_DateCreated]  DEFAULT (getdate()),
 CONSTRAINT [PK_Folder_Group_Join] PRIMARY KEY CLUSTERED 
(
	[FolderID] ASC,
	[GroupGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Conversion]    Script Date: 12/06/2011 14:25:59 ******/
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
/****** Object:  StoredProcedure [dbo].[Folder_Get_DirectFolderAssociations]    Script Date: 12/06/2011 14:25:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.10.11
--				This SP is used to get folders by direct association from user and groups
-- =============================================
CREATE PROCEDURE [dbo].[Folder_Get_DirectFolderAssociations]
	@GroupGUIDs			GUIDList Readonly,
	@UserGUID			uniqueidentifier,
	@RequiredPermission	int
AS
BEGIN

	SET NOCOUNT ON;

    SELECT [Folder].*
      FROM [Folder] 
            LEFT OUTER JOIN [Folder_User_Join]  ON [Folder].ID = [Folder_User_Join].FolderID
            LEFT OUTER JOIN [Folder_Group_Join] ON [Folder].ID = [Folder_Group_Join].FolderID
     WHERE	( [Folder_User_Join].UserGUID = @UserGUID OR 
              [Folder_Group_Join].GroupGUID IN ( SELECT [GUID] FROM @GroupGUIDs ) ) AND
			( [Folder_User_Join].Permission  & @RequiredPermission = @RequiredPermission OR
			  [Folder_Group_Join].Permission & @RequiredPermission = @RequiredPermission )
	
	-- Test which is faster
    --SELECT [Folder].*
    --  FROM [Folder] 
    --        INNER JOIN [Folder_User_Join]  ON [Folder].ID = [Folder_User_Join].FolderID
    -- WHERE [Folder_User_Join].UserGUID = @UserGUID AND
    --       [Folder_User_Join].Permission & @RequiredPermission = @RequiredPermission
    --UNION ALL
    --SELECT [Folder].*
    --  FROM [Folder] 
    --        INNER JOIN [Folder_Group_Join] ON [Folder].ID = [Folder_Group_Join].FolderID
    -- WHERE [Folder_Group_Join].GroupGUID IN ( SELECT [GUID] FROM @GroupGUIDs ) AND
    --       [Folder_Group_Join].Permission & @RequiredPermission = @RequiredPermission
     

END
GO
/****** Object:  StoredProcedure [dbo].[Folder_Get]    Script Date: 12/06/2011 14:25:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.11.04
--				This SP return folders associated with an Object and the option of returning all parent folders too
-- =============================================
CREATE PROCEDURE [dbo].[Folder_Get]
	@ObjectID			int,
	@IncludeFolderTree	bit
AS
BEGIN

	SET NOCOUNT ON;

	IF( @IncludeFolderTree = 1 )
	BEGIN
	
		DECLARE @Folders TABLE
		(
			FolderID int
		)

		DECLARE @FolderID INT	 
		DECLARE Iterator CURSOR
			FOR SELECT	[Folder].[ID]
				  FROM	[Folder] INNER JOIN Object_Folder_Join ON
								 Folder.ID = Object_Folder_Join.FolderID
				 WHERE	Object_Folder_Join.ObjectID = @ObjectID
			
			OPEN Iterator
			
			FETCH NEXT FROM Iterator
				INTO @FolderID
			
		WHILE( @@FETCH_STATUS = 0 )
		BEGIN

			INSERT INTO @Folders
				 SELECT FolderID FROM dbo.GetParentFolders( @FolderID )
			     
			FETCH NEXT FROM Iterator
				INTO @FolderID
		END
			
		SELECT	[Folder].[ID]
		  FROM	[Folder]
		 WHERE	ID IN (SELECT FolderID FROM @Folders)
		 
		 CLOSE Iterator;
		 DEALLOCATE Iterator;
	
	END
	ELSE
	BEGIN
	
		SELECT	[Folder].[ID]
		  FROM	[Folder] INNER JOIN Object_Folder_Join ON
						 Folder.ID = Object_Folder_Join.FolderID
		 WHERE	Object_Folder_Join.ObjectID = @ObjectID

	END
	
END
GO
/****** Object:  UserDefinedFunction [dbo].[Folder_FindHighestUserPermission]    Script Date: 12/06/2011 14:25:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.25
--				This function given a folderID will return the User and Groups accumulated permission
-- =============================================
CREATE FUNCTION [dbo].[Folder_FindHighestUserPermission]
(
	@UserGUID	uniqueidentifier,
	@GroupGUIDs	GUIDList READONLY,
	@FolderID	INT
)
RETURNS INT
AS
BEGIN
	
	DECLARE @FolderPermissions TABLE
	(
	  FolderID int,
	  Permission int
	)
	
	-- Find all folders the users / groups has direct access to
	INSERT INTO	@FolderPermissions
		SELECT	FolderID, Permission
		   FROM	(
					SELECT	FolderID, Permission
					  FROM	Folder_Group_Join
					 WHERE	Folder_Group_Join.GroupGUID IN (SELECT	[GUID]
					                                          FROM	@GroupGUIDs)
					 UNION ALL
					SELECT	FolderID, Permission
					  FROM	Folder_User_Join
					 WHERE	Folder_User_Join.UserGUID = @UserGUID
				) AS query
	
	DECLARE	@Permission	INT
	SET @Permission = 0
	
	-- Find start folder permission
	SELECT	@Permission = Permission
	  FROM	@FolderPermissions 
	 WHERE	FolderID = @FolderID
	
	-- Traverse through folder tree, and "OR" all permissions, to find the highest
	WHILE( @FolderID IS NOT NULL )
	BEGIN

		SELECT	@FolderID = Folder.ParentID
		  FROM	Folder 
		 WHERE	Folder.ID = @FolderID
		                      
		SELECT	@Permission = Permission | @Permission
		  FROM	@FolderPermissions
		  WHERE	FolderID = @FolderID
		  
	END

	RETURN @Permission

END
GO
/****** Object:  View [dbo].[FolderInfo]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FolderInfo]
AS
SELECT     ID, ParentID, FolderTypeID, SubscriptionGUID, Title, DateCreated,
                          (SELECT     COUNT(*) AS Expr1
                            FROM          dbo.Folder
                            WHERE      (ParentID = f.ID)) AS NumberOfSubFolders,
                          (SELECT     COUNT(*) AS Expr1
                            FROM          dbo.Object_Folder_Join
                            WHERE      (FolderID = f.ID)) AS NumberOfObjects
FROM         dbo.Folder AS f
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "f"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 215
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 480
         Width = 840
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1725
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FolderInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FolderInfo'
GO
/****** Object:  UserDefinedFunction [dbo].[Folder_IsFolderHighestLevel]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.26
--				This Function return 1 if a subfolder has parent folders with permissions otherwise 0
-- =============================================
CREATE FUNCTION [dbo].[Folder_IsFolderHighestLevel]
(
	@UserGUID	uniqueidentifier,
	@GroupGUIDs	GUIDList READONLY,
	@FolderID	INT
)
RETURNS bit
AS
BEGIN

	DECLARE	@CurrentFolderID INT

	SET @CurrentFolderID = @FolderID
	
	DECLARE @Folders TABLE
	(
		FolderID	INT,
		ParentID	INT
	)
	
	INSERT INTO @Folders(FolderID,ParentID)
		SELECT	ID, ParentID
		 FROM	Folder INNER JOIN
				(
					SELECT	FolderID
					  FROM	Folder_Group_Join
					 WHERE	Folder_Group_Join.GroupGUID IN (SELECT	[GUID]
															  FROM	@GroupGUIDs)
					 UNION ALL
					SELECT	FolderID
					  FROM	Folder_User_Join
					 WHERE	Folder_User_Join.UserGUID = @UserGUID
				) as q ON Folder.ID = q.FolderID
					
	-- Check if Folder has a direct permission at all
	IF NOT EXISTS( SELECT * FROM @Folders WHERE	FolderID = @FolderID )
		RETURN 0	

	-- Check if FolderID it self is a topFolder
	IF EXISTS( SELECT * FROM @Folders WHERE	FolderID = @CurrentFolderID AND ParentID IS NULL )
		RETURN 1			

	-- Traverse through folder tree, and determine if FolderID is a parent of SubfolderID
	WHILE( @CurrentFolderID IS NOT NULL )
	BEGIN

		SELECT	@CurrentFolderID = Folder.ParentID
		  FROM	Folder 
		 WHERE	Folder.ID = @CurrentFolderID
		 
		 IF EXISTS( SELECT	FolderID
					  FROM	@Folders
					 WHERE	FolderID = @CurrentFolderID )
			RETURN 0

	END
	
	RETURN 1

END
GO
/****** Object:  Table [dbo].[File]    Script Date: 12/06/2011 14:26:00 ******/
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
CREATE NONCLUSTERED INDEX [_dta_index_File_5_741577680__K2_K5_K4_1_3_6_7_8] ON [dbo].[File] 
(
	[ObjectID] ASC,
	[DestinationID] ASC,
	[FormatID] ASC
)
INCLUDE ( [ID],
[ParentID],
[Filename],
[OriginalFilename],
[FolderPath]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE STATISTICS [_dta_stat_741577680_4_5_2] ON [dbo].[File]([FormatID], [DestinationID], [ObjectID])
GO
/****** Object:  StoredProcedure [dbo].[Metadata_Get]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.10.13
--				This SP is used to get metadatas
-- =============================================
CREATE PROCEDURE [dbo].[Metadata_Get]
	@ObjectGUID			uniqueidentifier,
	@MetadataSchemaGUID uniqueidentifier = NULL,
	@LanguageCode		varchar(10)      = NULL
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @ObjectID INT
	SELECT	@ObjectID = ID
	  FROM	[Object]
	 WHERE	[GUID] = @ObjectGUID

	DECLARE @MetadataSchemaID INT
	SELECT	@MetadataSchemaID = ID
	  FROM	MetadataSchema
	 WHERE	MetadataSchema.[GUID] = @MetadataSchemaGUID

	SELECT	*
	  FROM	Metadata
	 WHERE	Metadata.ObjectID = @ObjectID AND
			( @MetadataSchemaGUID IS NULL OR @MetadataSchemaID = Metadata.MetadataSchemaID ) AND
			( @LanguageCode IS NULL OR @LanguageCode = Metadata.LanguageCode )
END
GO
/****** Object:  UserDefinedFunction [dbo].[Object_FindHighestUserPermission]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.10.04
--				This function given a objectID will return the User and Groups accumulated permission
-- =============================================
CREATE FUNCTION [dbo].[Object_FindHighestUserPermission]
(
	@UserGUID	uniqueidentifier,
	@GroupGUIDs	GUIDList READONLY,
	@ObjectID	INT
)
RETURNS INT
AS
BEGIN
	
	
	
	DECLARE @FolderPermissions TABLE
	(
	  RowNum int,
	  Permission int
	)
	
	-- Find all folders the users / groups has direct access to
	INSERT INTO	@FolderPermissions
		SELECT	ROW_NUMBER() OVER( ORDER BY ID ), dbo.Folder_FindHighestUserPermission( @UserGUID,@GroupGUIDs,FolderID )
		  FROM	[Object] INNER JOIN
					Object_Folder_Join ON [Object].ID = Object_Folder_Join.ObjectID
		 WHERE	[Object].ID = @ObjectID
	
	DECLARE	@Permission	INT
	DECLARE @MaxCount INT
	SET @Permission = 0
	
	SELECT	@MaxCount = COUNT(*)
	  FROM	@FolderPermissions
	
	-- Traverse through the permissions, and "OR" all permissions, to find the highest
	WHILE( @MaxCount > 0 )
	BEGIN

		SELECT	@Permission = Permission | @Permission
		  FROM	@FolderPermissions
		  WHERE	RowNum = @MaxCount
		  
		SET @MaxCount = @MaxCount - 1
		  
	END

	RETURN @Permission

END
GO
/****** Object:  StoredProcedure [dbo].[Object_Delete]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.09.19
--				This SP is used to delete objects
-- =============================================
CREATE PROCEDURE [dbo].[Object_Delete]
	@GroupGUIDs		GUIDList Readonly,
	@UserGUID		uniqueidentifier,
	@GUID			uniqueidentifier,
	@FolderID		int
AS
BEGIN
	
	DECLARE	@RequiredPermission	int
	SET @RequiredPermission = dbo.GetPermissionForAction( 'Folder', 'DELETE_OBJECTS' )
	
	IF( @RequiredPermission & dbo.Folder_FindHighestUserPermission( @UserGUID,@GroupGUIDs,@FolderID ) <> @RequiredPermission )
			RETURN -100
	
	BEGIN TRANSACTION
	
	DECLARE	@ObjectID INT
	SELECT @ObjectID = ID FROM [Object] WHERE [GUID] = @GUID
	
	DELETE
	  FROM	Object_Folder_Join
	 WHERE	FolderID = @FolderID AND
			ObjectID = @ObjectID
			
	DELETE 
	  FROM	[Metadata]
     WHERE	ObjectID = @ObjectID
			
	-- Delete object, this should be changed when links are implemented	
	DELETE
	  FROM	[Object]
	 WHERE	ID = @ObjectID
	
	IF( @@ERROR <> 0 )
		ROLLBACK TRANSACTION
	ELSE
		COMMIT TRANSACTION
	
	RETURN 1
	
END
GO
/****** Object:  StoredProcedure [dbo].[Object_Create]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.09.16
--				This SP is used to Create Objects
-- =============================================
CREATE PROCEDURE [dbo].[Object_Create]
	@GroupGUIDs		GUIDList Readonly,
	@UserGUID		uniqueidentifier,
	@GUID			uniqueidentifier	= null,
	@ObjectTypeID	int,
	@FolderID		int
AS
BEGIN
	
	DECLARE	@RequiredPermission	int
	SET @RequiredPermission = dbo.GetPermissionForAction( 'Folder', 'CREATE_UPDATE_OBJECTS' )

	IF( @RequiredPermission & dbo.Folder_FindHighestUserPermission( @UserGUID,@GroupGUIDs,@FolderID ) <> @RequiredPermission )
			RETURN -100

	IF( @GUID IS NULL )
		SET @GUID = NEWID()

	BEGIN TRANSACTION 

	INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated])
		 VALUES (@GUID,@ObjectTypeID,GETDATE())
		 
	DECLARE @ObjectID INT
    SET @ObjectID = @@IDENTITY 
		 
	INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated])
		 VALUES (@ObjectID,@FolderID,0,GETDATE())
		 
	IF( @@ERROR <> 0 )
		ROLLBACK TRANSACTION
	ELSE
		COMMIT TRANSACTION
		 
	RETURN @ObjectID

END
GO
/****** Object:  StoredProcedure [dbo].[Object_Folder_Join_Update]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.09.20
--				This SP is used to move objects into new folders
-- =============================================
CREATE PROCEDURE [dbo].[Object_Folder_Join_Update]
	@GroupGUIDs		GUIDList READONLY,
	@UserGUID		uniqueidentifier,
	@ObjectID		int,
	@FolderID		int,
	@NewFolderID	int
AS
BEGIN
	
	DECLARE	@RequiredPermission	int
	SET @RequiredPermission = dbo.GetPermissionForAction( 'Folder', 'CREATE_UPDATE_OBJECTS' )
	
	IF( dbo.[Folder_FindHighestUserPermission]( @UserGUID,@GroupGUIDs,@FolderID ) & @RequiredPermission <> @RequiredPermission ) 
		RETURN -100
	
	UPDATE	Object_Folder_Join
	   SET	FolderID = @NewFolderID
	 WHERE	ObjectID = @ObjectID AND
			FolderID = @FolderID
			
	RETURN @@ROWCOUNT
	
END
GO
/****** Object:  StoredProcedure [dbo].[FolderInfo_Get]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.26
--				This SP is used to get a FolderInfo, if no search criteria are given it will find the top most folders
-- =============================================
CREATE PROCEDURE [dbo].[FolderInfo_Get] 
	@GroupGUIDs		GUIDList READONLY,
	@UserGUID		uniqueidentifier,
	@FolderID		int = null,
	@FolderTypeID	int = null,
	@ParentID		int = null
AS
BEGIN

	DECLARE	@RequiredPermission	int
	SET @RequiredPermission = dbo.GetPermissionForAction( 'Folder', 'GET' )
	
	IF( @FolderID IS NULL AND @ParentID IS NULL )
	BEGIN
		SELECT	*
		  FROM	FolderInfo
		 WHERE  dbo.Folder_IsFolderHighestLevel(@UserGUID,@GroupGUIDs,FolderInfo.ID) = 1 AND
				dbo.[Folder_FindHighestUserPermission] (@UserGUID,@GroupGUIDs,FolderInfo.ID) & @RequiredPermission = @RequiredPermission AND
				( @FolderTypeID IS NULL OR @FolderTypeID = FolderInfo.FolderTypeID )
	END
	ELSE
	BEGIN
		SELECT	*
		  FROM	FolderInfo
		 WHERE  dbo.[Folder_FindHighestUserPermission] (@UserGUID,@GroupGUIDs,FolderInfo.ID) & @RequiredPermission = @RequiredPermission AND
				( @FolderID IS NULL OR @FolderID = FolderInfo.ID ) AND
				( @FolderTypeID IS NULL OR @FolderTypeID = FolderInfo.FolderTypeID ) AND
				( @ParentID IS NULL OR @ParentID = FolderInfo.ParentID )
	END

END
GO
/****** Object:  StoredProcedure [dbo].[Folder_Update]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.09.06
--				This SP is used to update a folder
-- =============================================
CREATE PROCEDURE [dbo].[Folder_Update]
	@GroupGUIDs			GUIDList READONLY,
	@UserGUID			uniqueidentifier,
	@ID					int,
	@NewTitle			varchar(255) = null,
	@NewParentID		int          = null,
	@NewFolderTypeID	int			 = null
AS
BEGIN

	if( @NewTitle IS NULL AND @NewFolderTypeID IS NULL AND @NewParentID IS NULL )
		RETURN -10

	DECLARE	@RequiredPermission	int
	SET @RequiredPermission = 0
	
	-- OR with general UPDATE permission if applies
	if( @NewTitle IS NOT NULL OR @NewFolderTypeID IS NOT NULL )
		SET @RequiredPermission = @RequiredPermission | dbo.GetPermissionForAction( 'Folder', 'UPDATE' )
	
	-- OR with MOVE permission if applies
	if( @NewParentID IS NOT NULL )
		SET @RequiredPermission = @RequiredPermission | dbo.GetPermissionForAction( 'Folder', 'MOVE_FOLDER' )
	
	IF( dbo.[Folder_FindHighestUserPermission]( @UserGUID,@GroupGUIDs,@ID ) & @RequiredPermission <> @RequiredPermission ) 
		RETURN -100

	UPDATE	Folder
	   SET	--[ParentID] = @NewParentID
			[FolderTypeID] = ISNULL(@NewFolderTypeID,[FolderTypeID])
			,[Title] = ISNULL(@NewTitle,[Title])
	 WHERE	Folder.ID = @ID

	RETURN @@ROWCOUNT
	
END
GO
/****** Object:  StoredProcedure [dbo].[Folder_Delete]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.08.31
--				This SP is used to delete a folder
-- =============================================
CREATE PROCEDURE [dbo].[Folder_Delete]
	@GroupGUIDs		GUIDList READONLY,
	@UserGUID		uniqueidentifier,
	@ID				int
AS
BEGIN

	DECLARE	@RequiredPermission	int
	SET @RequiredPermission = dbo.GetPermissionForAction( 'Folder', 'DELETE' )

	IF( dbo.[Folder_FindHighestUserPermission]( @UserGUID,@GroupGUIDs,@ID ) & @RequiredPermission <> @RequiredPermission ) 
		RETURN -100

	IF EXISTS( SELECT * FROM Folder WHERE Folder.ParentID = @ID )
		RETURN -50
		
	IF EXISTS( SELECT * FROM Object_Folder_Join WHERE FolderID = @ID )
		RETURN -50
		
	BEGIN TRANSACTION Delete_Folder
	
	DELETE 
	  FROM	[Folder_Group_Join]
     WHERE	FolderID = @ID

	DELETE 
	  FROM	[Folder_User_Join]
     WHERE	FolderID = @ID
     
     DELETE 
       FROM	[Folder]
      WHERE	ID = @ID

	IF( @@ERROR = 0 )
		COMMIT TRANSACTION Delete_Folder
	ELSE
		ROLLBACK TRANSACTION Delete_Folder
		
	RETURN 1
	
END
GO
/****** Object:  StoredProcedure [dbo].[Folder_Create]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.09.06
--				This SP is used to create folders
-- =============================================
CREATE PROCEDURE [dbo].[Folder_Create]
	@GroupGUIDs				GUIDList READONLY,
	@UserGUID				uniqueidentifier,
	@SubscriptionGUID		uniqueidentifier	= null,
	@Title					varchar(255),
	@ParentID				int					= null,
	@FolderTypeID			int,
	@SubscriptionPermission	int					= null
AS
BEGIN

	DECLARE	@RequiredPermission	int
	
	-- If SubscriptionGUID is NOT NULL ParentID must be null, ELSE SubscriptionGUID is inherited from the parent
	IF( @SubscriptionGUID IS NULL AND @ParentID IS NULL AND @SubscriptionPermission IS NULL )
		RETURN -10
	
	IF( @ParentID IS NULL )
	BEGIN
		-- If ParentID is null, check permission on subscription
		SET @RequiredPermission = dbo.GetPermissionForAction( 'Subscription', 'CREATE TOPFOLDER' )
		
		IF( @RequiredPermission & @SubscriptionPermission <> @RequiredPermission )
			RETURN -100
	END
	ELSE
	BEGIN
		-- Check Create permission to ParentID
		SET @RequiredPermission = dbo.GetPermissionForAction( 'Folder', 'CREATE' )
		
		IF( @RequiredPermission & dbo.Folder_FindHighestUserPermission( @UserGUID,@GroupGUIDs,@ParentID ) <> @RequiredPermission )
			RETURN -100
	END

	IF( @SubscriptionGUID IS NULL AND @ParentID IS NOT NULL )
		SELECT	@SubscriptionGUID = SubscriptionGUID 
		  FROM	Folder
		 WHERE	Folder.ID = @ParentID
	
	BEGIN TRANSACTION Create_Folder
	
	INSERT INTO	[Folder] ([ParentID] ,[FolderTypeID] ,[SubscriptionGUID] ,[Title] ,[DateCreated])
         VALUES (@ParentID ,@FolderTypeID ,@SubscriptionGUID ,@Title ,GETDATE())
    
    DECLARE @FolderID INT
    SET @FolderID = @@IDENTITY       
    
    INSERT INTO [Folder_User_Join] ([FolderID],[UserGUID],[Permission],[DateCreated])
         VALUES	(@FolderID,@UserGUID,0x7FFFFFFF,GETDATE())
        
    IF( @@ERROR = 0 )
		COMMIT TRANSACTION Create_Folder
	ELSE
		ROLLBACK TRANSACTION Create_Folder

	RETURN @FolderID
END
GO
/****** Object:  Table [dbo].[AccessPoint]    Script Date: 12/06/2011 14:26:00 ******/
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
/****** Object:  View [dbo].[FileInfo]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FileInfo]
AS
SELECT     dbo.[File].ID, dbo.[File].ParentID, dbo.[File].ObjectID, dbo.[File].Filename, dbo.[File].OriginalFilename, dbo.AccessProvider.Token, 
                      REPLACE(REPLACE(REPLACE(dbo.AccessProvider.StringFormat, '{BASE_PATH}', dbo.AccessProvider.BasePath), '{FOLDER_PATH}', dbo.[File].FolderPath), 
                      '{FILENAME}', dbo.[File].Filename) AS URL, dbo.[File].FormatID, dbo.Format.Name AS Format, dbo.FormatCategory.Value AS FormatCategory, 
                      dbo.FormatType.Value AS FormatType
FROM         dbo.[File] INNER JOIN
                      dbo.AccessProvider ON dbo.AccessProvider.DestinationID = dbo.[File].DestinationID INNER JOIN
                      dbo.Format ON dbo.[File].FormatID = dbo.Format.ID INNER JOIN
                      dbo.FormatCategory ON dbo.Format.FormatCategoryID = dbo.FormatCategory.ID INNER JOIN
                      dbo.FormatType ON dbo.FormatCategory.FormatTypeID = dbo.FormatType.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[27] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = -232
      End
      Begin Tables = 
         Begin Table = "File"
            Begin Extent = 
               Top = 7
               Left = 530
               Bottom = 239
               Right = 697
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AccessProvider"
            Begin Extent = 
               Top = 6
               Left = 243
               Bottom = 175
               Right = 403
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Format"
            Begin Extent = 
               Top = 6
               Left = 735
               Bottom = 125
               Right = 914
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FormatCategory"
            Begin Extent = 
               Top = 158
               Left = 943
               Bottom = 262
               Right = 1103
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FormatType"
            Begin Extent = 
               Top = 180
               Left = 270
               Bottom = 269
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 360
         Width = 1230
         Width = 1125
         Width = 4275
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FileInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FileInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FileInfo'
GO
/****** Object:  StoredProcedure [dbo].[File_Create]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.11.21
--				This SP is used to create and associate a file with an object
-- =============================================
CREATE PROCEDURE [dbo].[File_Create]
	@GroupGUIDs			GUIDList Readonly,
	@UserGUID			uniqueidentifier,
	@ObjectGUID			uniqueidentifier,
	@ParentFileID		int					= null,
	@FormatID			int,
	@DestinationID		int,
	@Filename			varchar(MAX),
	@OriginalFilename	varchar(MAX),
	@FolderPath			varchar(MAX)
AS
BEGIN
	
	DECLARE @ObjectID INT
	
	SELECT	@ObjectID = ID
	  FROM	[Object]
	 WHERE	[GUID] = @ObjectGUID
	
	DECLARE	@RequiredPermission	int
	SET @RequiredPermission = dbo.GetPermissionForAction( 'Folder', 'CREATE_UPDATE_OBJECTS' )

	IF( @RequiredPermission & dbo.Object_FindHighestUserPermission( @UserGUID,@GroupGUIDs,@ObjectID ) <> @RequiredPermission )
			RETURN -100
	
	INSERT INTO [File] ([ObjectID],[ParentID],[FormatID],[DestinationID],[Filename],[OriginalFilename],[FolderPath],[DateCreated])
		 VALUES (@ObjectID,@ParentFileID,@FormatID,@DestinationID,@Filename,@OriginalFilename,@FolderPath,GETDATE())

	RETURN @@IDENTITY
	
END
GO
/****** Object:  Table [dbo].[AccessPoint_User_Join]    Script Date: 12/06/2011 14:26:00 ******/
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
/****** Object:  Table [dbo].[AccessPoint_Object_Join]    Script Date: 12/06/2011 14:26:00 ******/
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
/****** Object:  Table [dbo].[AccessPoint_Group_Join]    Script Date: 12/06/2011 14:26:00 ******/
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
/****** Object:  StoredProcedure [dbo].[ObjectRelation_Delete]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.11.28
--				This SP is used to Delete an ObjectRelation
-- =============================================
CREATE PROCEDURE [dbo].[ObjectRelation_Delete]
	@GroupGUIDs				GUIDList Readonly,
	@UserGUID				uniqueidentifier,
	@Object1GUID			uniqueidentifier,
	@Object2GUID			uniqueidentifier,
	@ObjectRelationTypeID	int
AS
BEGIN

	DECLARE @Object1ID INT
	
	SELECT	@Object1ID = ID
	  FROM	[Object]
	 WHERE	[GUID] = @Object1GUID

	DECLARE	@RequiredPermission	int
	SET @RequiredPermission = dbo.GetPermissionForAction( 'Metadata', 'CREATE_UPDATE_OBJECTS' )

	IF( @RequiredPermission & dbo.Object_FindHighestUserPermission( @UserGUID,@GroupGUIDs,@Object1ID ) <> @RequiredPermission )
			RETURN -100

	DELETE
	  FROM	Object_Object_Join
	 WHERE	Object1GUID = @Object1GUID AND 
			Object2GUID = @Object2GUID AND
			ObjectRelationTypeID = @ObjectRelationTypeID
			
	RETURN @@ROWCOUNT

END
GO
/****** Object:  StoredProcedure [dbo].[ObjectRelation_Create]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObjectRelation_Create]
	@GroupGUIDs				GUIDList Readonly,
	@UserGUID				uniqueidentifier,
	@Object1GUID			uniqueidentifier,
	@Object2GUID			uniqueidentifier,
	@ObjectRelationTypeID	int,
	@Sequence				int	= null
AS
BEGIN

	DECLARE @Object1ID INT
	SELECT	@Object1ID = ID
	  FROM	[Object]
	 WHERE	[GUID] = @Object1GUID

	DECLARE	@RequiredPermission	int
	SET @RequiredPermission = dbo.GetPermissionForAction( 'Metadata', 'CREATE_UPDATE_OBJECTS' )

	IF( @RequiredPermission & dbo.Object_FindHighestUserPermission( @UserGUID,@GroupGUIDs,@Object1ID ) <> @RequiredPermission )
			RETURN -100

	IF EXISTS( SELECT Object1GUID 
	             FROM [Object_Object_Join]
	            WHERE Object1GUID = @Object1GUID AND 
					  Object2GUID = @Object2GUID AND
			          ObjectRelationTypeID = @ObjectRelationTypeID  )
		RETURN -200

	INSERT INTO [Object_Object_Join] (Object1GUID,Object2GUID,[ObjectRelationTypeID],[Sequence],[DateCreated])
		 VALUES (@Object1GUID,@Object2GUID,@ObjectRelationTypeID,@Sequence,GETDATE())
		 
	RETURN @@ROWCOUNT

END
GO
/****** Object:  StoredProcedure [dbo].[Object_GetByGUIDs]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.09.16
--				This SP is used to Get Objects
-- =============================================
CREATE PROCEDURE [dbo].[Object_GetByGUIDs]
	@GUIDs					GUIDList Readonly,
	@IncludeMetadata		bit,
	@IncludeFiles			bit,
	@IncludeObjectRelations	bit
AS
BEGIN

	SET NOCOUNT ON;
		
	SELECT	[Object].*
	  FROM	@GUIDs as g INNER JOIN
				[Object] ON g.GUID = [Object].GUID
	 
	 if( @IncludeMetadata = 1 )
		SELECT	Metadata.*
		  FROM	@GUIDs as g INNER JOIN
					[Object] ON g.GUID = [Object].GUID INNER JOIN
					Metadata ON [Object].ID = Metadata.ObjectID
	
	 if( @IncludeFiles = 1 )
		SELECT	[FileInfo].*
		 FROM	@GUIDs as g INNER JOIN
					[Object] ON g.GUID = [Object].GUID INNER JOIN
					[FileInfo] ON [Object].ID = [FileInfo].ObjectID
					
	if( @IncludeObjectRelations = 1 )
		SELECT	DISTINCT Object_Object_Join.*
		  FROM	@GUIDs as g INNER JOIN
					Object_Object_Join ON Object_Object_Join.Object1GUID = g.[GUID] OR Object_Object_Join.Object2GUID = g.[GUID]

END
GO
/****** Object:  StoredProcedure [dbo].[Object_GetAllWithPaging]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.09.16
--				This SP is used to Get Objects
-- =============================================
CREATE PROCEDURE [dbo].[Object_GetAllWithPaging]
	@IncludeMetadata		bit,
	@IncludeFiles			bit,
	@IncludeObjectRelations	bit,
	@ObjectID				int					= null,
	@ObjectTypeID			int					= null,
	@FolderID				int					= null,
	@PageIndex				int					= 0,
	@PageSize				int					= 10
	
AS
BEGIN

	SET NOCOUNT ON;

	IF( @PageIndex IS NULL )
		SET @PageIndex = 0
		
	IF( @PageSize IS NULL )
		SET @PageSize = 10;

	DECLARE @PagedResults AS TABLE (
		[RowNumber]		int,
	    [ObjectID]		int
	);
	
	DECLARE	@RequiredPermission	int
	SET @RequiredPermission = dbo.GetPermissionForAction( 'Folder', 'GET_OBJECTS' );
 
	WITH ObjectsRN AS
	(
		SELECT	ROW_NUMBER() OVER(ORDER BY [Object].DateCreated) AS RowNumber, 
				[Object].ID
		  FROM	[Object] INNER JOIN Object_Folder_Join
				ON [Object].ID = Object_Folder_Join.ObjectID
		 WHERE	( @ObjectID IS NULL OR [Object].ID = @ObjectID ) AND
				( @FolderID IS NULL OR Object_Folder_Join.FolderID = @FolderID ) AND
				( @ObjectTypeID IS NULL OR [Object].ObjectTypeID = @ObjectTypeID )
	)
		
	INSERT INTO	@PagedResults
		 SELECT	* 
		   FROM	ObjectsRN
		  WHERE RowNumber BETWEEN (@PageIndex)     * @PageSize + 1 
							  AND (@PageIndex + 1) * @PageSize

	SELECT	*
	  FROM	@PagedResults as p INNER JOIN
				[Object] ON [Object].ID = p.ObjectID
	 
	 if( @IncludeMetadata = 1 )
		SELECT	Metadata.*
		  FROM	@PagedResults as p INNER JOIN
					Metadata ON Metadata.ObjectID = p.ObjectID
		 
	 if( @IncludeFiles = 1 )
		SELECT	[FileInfo].*
		 FROM	@PagedResults as p INNER JOIN
					[FileInfo] ON [FileInfo].ObjectID = p.ObjectID
					
	if( @IncludeObjectRelations = 1 )
		SELECT	DISTINCT Object_Object_Join.*
		  FROM	@PagedResults as p INNER JOIN
					[Object] ON [Object].ID = p.ObjectID INNER JOIN
					Object_Object_Join ON Object_Object_Join.Object1GUID = [Object].[GUID] OR Object_Object_Join.Object2GUID = [Object].[GUID]

END
GO
/****** Object:  StoredProcedure [dbo].[Object_Get]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.09.16
--				This SP is used to Get Objects
-- =============================================
CREATE PROCEDURE [dbo].[Object_Get]
	@GUIDs					GUIDList Readonly,
	@GroupGUIDs				GUIDList Readonly,
	@UserGUID				uniqueidentifier,
	@IncludeMetadata		bit,
	@IncludeFiles			bit,
	@IncludeObjectRelations	bit,
	@ObjectID				int					= null,
	@ObjectTypeID			int					= null,
	@FolderID				int					= null,
	@PageIndex				int					= 0,
	@PageSize				int					= 10	
AS
BEGIN

	SET NOCOUNT ON;

	IF( @PageIndex IS NULL )
		SET @PageIndex = 0
		
	IF( @PageSize IS NULL )
		SET @PageSize = 10;

	DECLARE @PagedResults AS TABLE (
		[RowNumber]		int,
	    [ObjectID]		int
	);
	
	IF EXISTS( SELECT * FROM @GUIDs )	
	BEGIN
		WITH ObjectsRN AS
		(
			SELECT	ROW_NUMBER() OVER(ORDER BY [Object].[GUID]) AS RowNumber, 
					[Object].ID
			  FROM	@GUIDs as g LEFT OUTER JOIN
						[Object] ON g.GUID = [Object].GUID
			 WHERE	( @ObjectID IS NULL OR [Object].ID = @ObjectID )
		)
			
		INSERT INTO	@PagedResults
			 SELECT	* 
			   FROM	ObjectsRN
			  WHERE RowNumber BETWEEN (@PageIndex)     * @PageSize + 1 
								  AND (@PageIndex + 1) * @PageSize
	END
	ELSE
	BEGIN
		DECLARE	@RequiredPermission	int
		SET @RequiredPermission = dbo.GetPermissionForAction( 'Folder', 'GET_OBJECTS' );
	 
		WITH ObjectsRN AS
		(
			SELECT	ROW_NUMBER() OVER(ORDER BY [Object].[GUID]) AS RowNumber, 
					[Object].ID
			  FROM	[Object] INNER JOIN Object_Folder_Join
					ON [Object].ID = Object_Folder_Join.ObjectID
			 WHERE	( @ObjectID IS NULL OR [Object].ID = @ObjectID ) AND
					( @FolderID IS NULL OR Object_Folder_Join.FolderID = @FolderID ) AND
					( @ObjectTypeID IS NULL OR [Object].ObjectTypeID = @ObjectTypeID ) AND
					dbo.[Folder_FindHighestUserPermission]( @UserGUID,@GroupGUIDs,Object_Folder_Join.FolderID ) & @RequiredPermission = @RequiredPermission
		)
			
		INSERT INTO	@PagedResults
			 SELECT	* 
			   FROM	ObjectsRN
			  WHERE RowNumber BETWEEN (@PageIndex)     * @PageSize + 1 
								  AND (@PageIndex + 1) * @PageSize
	END

	SELECT	*
	  FROM	@PagedResults as p INNER JOIN
				[Object] ON [Object].ID = p.ObjectID
	 
	 if( @IncludeMetadata = 1 )
		SELECT	Metadata.*
		  FROM	@PagedResults as p INNER JOIN
					Metadata ON Metadata.ObjectID = p.ObjectID
		 
	 if( @IncludeFiles = 1 )
		SELECT	[FileInfo].*
		 FROM	@PagedResults as p INNER JOIN
					[FileInfo] ON [FileInfo].ObjectID = p.ObjectID
	
	if( @IncludeObjectRelations = 1 )
		SELECT	DISTINCT Object_Object_Join.*
		  FROM	@PagedResults as p INNER JOIN
					[Object] ON [Object].ID = p.ObjectID INNER JOIN
					Object_Object_Join ON Object_Object_Join.Object1GUID = [Object].[GUID] OR Object_Object_Join.Object2GUID = [Object].[GUID]
END
GO
/****** Object:  StoredProcedure [dbo].[Metadata_Set]    Script Date: 12/06/2011 14:26:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jesper Fyhr Knudsen
-- Create date: 2011.10.04
--				This SP creates or updates metadata
-- =============================================
CREATE PROCEDURE [dbo].[Metadata_Set]
	@GroupGUIDs		    GUIDList Readonly,
	@UserGUID		    uniqueidentifier,
	@ObjectGUID			uniqueidentifier,
	@MetadataSchemaID	int,
	@LanguageCode		varchar(10),
	@MetadataXML		xml,
	@Lock				bit = NULL
AS
BEGIN
	
	DECLARE @ObjectID         INT
	
	SELECT	@ObjectID = ID
	  FROM	[Object]
	 WHERE	[GUID] = @ObjectGUID
	
	DECLARE	@RequiredPermission	int
	SET @RequiredPermission = dbo.GetPermissionForAction( 'Metadata', 'CREATE_UPDATE_OBJECTS' )

	IF( @RequiredPermission & dbo.Object_FindHighestUserPermission( @UserGUID,@GroupGUIDs,@ObjectID ) <> @RequiredPermission )
			RETURN -100
	
	IF EXISTS( SELECT ID FROM Metadata WHERE ObjectID = @ObjectID AND MetadataSchemaID = @MetadataSchemaID AND LanguageCode = @LanguageCode )
	BEGIN
	
		DECLARE @DateLocked	DATETIME
		DECLARE @LockUserGUID UNIQUEIDENTIFIER
	
		SELECT	@DateLocked = GETDATE(),
				@LockUserGUID = @UserGUID
		 WHERE	@Lock = 1
	
		UPDATE [Metadata]
		   SET [MetadataXml]  = @MetadataXML,
		       [DateModified] = GETDATE(),
		       [DateLocked]   = ISNULL(@DateLocked,[DateLocked]),
		       [LockUserGUID] = ISNULL(@LockUserGUID,[LockUserGUID])
		WHERE  ObjectID         = @ObjectID AND 
			   MetadataSchemaID = @MetadataSchemaID AND 
			   LanguageCode     = @LanguageCode
	
		RETURN @@ROWCOUNT
	
	END
	ELSE 
	BEGIN
			
		INSERT INTO [Metadata]([ObjectID],LanguageCode,[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])
			 VALUES (@ObjectID,@LanguageCode,@MetadataSchemaID,@MetadataXML,GETDATE(),GETDATE(),null,null )

		RETURN @@ROWCOUNT
		
	END
END
GO
/****** Object:  StoredProcedure [dbo].[PopulateDefaultData]    Script Date: 12/06/2011 14:26:00 ******/
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

		DELETE FROM [File]
		DELETE FROM AccessProvider
		DELETE FROM Destination
		DELETE FROM Format
		DELETE FROM FormatCategory
		DELETE FROM FormatType
		DELETE FROM AccessPoint_User_Join
		DELETE FROM AccessPoint_Group_Join
		DELETE FROM AccessPoint_Object_Join
		DELETE FROM AccessPoint
		DELETE FROM Object_Folder_Join
		DELETE FROM Folder_Group_Join
		DELETE FROM Folder_User_Join
		DELETE FROM Folder
		DELETE FROM FolderType
		DELETE FROM Metadata
		DELETE FROM MetadataSchema_Group_Join
		DELETE FROM MetadataSchema_User_Join
		DELETE FROM MetadataSchema
		DELETE FROM Object_Object_Join
		DELETE FROM [Object]
		DELETE FROM ObjectType
		DELETE FROM Permission
		DELETE FROM ObjectRelationType
		DELETE FROM [Language]

		DBCC CHECKIDENT ("AccessPoint", RESEED,0)
		DBCC CHECKIDENT ("AccessProvider", RESEED,0)
		DBCC CHECKIDENT ("[File]", RESEED,0)
		DBCC CHECKIDENT ("FolderType", RESEED,0)
		DBCC CHECKIDENT ("Folder", RESEED,0)
		DBCC CHECKIDENT ("Format", RESEED,0)
		DBCC CHECKIDENT ("FormatCategory", RESEED,0)
		DBCC CHECKIDENT ("FormatType", RESEED,0)
		DBCC CHECKIDENT ("Metadata", RESEED,0)
		DBCC CHECKIDENT ("MetadataSchema", RESEED,0)
		DBCC CHECKIDENT ("Object", RESEED,0)
		DBCC CHECKIDENT ("ObjectType", RESEED,0)
		DBCC CHECKIDENT ("ObjectRelationType", RESEED,0)

		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('System','Manage Type',4,'Permissoin to manage Types')
		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('Folder','GET',1,'Permissoin to GET Folders')
		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('Folder','DELETE',2,'Permissoin to DELETE Folders')
		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('Folder','UPDATE',4,'Permissoin to UPDATE Folders')
		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('Folder','MOVE_FOLDER',8,'Permissoin to MOVE Folders')
		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('Folder','CREATE',16,'Permissoin to Create Folders')
		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('Folder','GET_OBJECTS',32,'Permissoin to GET Objects in folder')
		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('Folder','CREATE_UPDATE_OBJECTS',64,'Permissoin to CREATE / UPDATE or MOVE Objects to/in a folder')
		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('Folder','DELETE_OBJECTS',128,'Permissoin to DELETE Objects in folder')
		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('Folder','MOVE_OBJECT_FROM',256,'Permissoin to MOVE Objects from the folder')
		INSERT INTO [Permission]([TableIdentifier],[RightName],[Permission],[Description]) VALUES ('Subscription','CREATE TOPFOLDER',16,'Permissoin to Create top folders')
		INSERT INTO [Destination]([ID],[SubscriptionGUID],[Title],[DateCreated]) VALUES (1,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','DMB Source',GETDATE())
		INSERT INTO [Destination]([ID],[SubscriptionGUID],[Title],[DateCreated]) VALUES (2,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','DMB Thumbnail',GETDATE())
		INSERT INTO [Destination]([ID],[SubscriptionGUID],[Title],[DateCreated]) VALUES (3,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','Bonanza Thumbnail',GETDATE())
		INSERT INTO [Destination]([ID],[SubscriptionGUID],[Title],[DateCreated]) VALUES (4,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','LARM Thumbnail',GETDATE())
		INSERT INTO [AccessProvider] ([DestinationID],[BasePath],[StringFormat],[DateCreated],[Token])VALUES (1,'\\TRANSJOB03\Asset\Files','{BASE_PATH}{FOLDER_PATH}{FILENAME}',GETDATE(),'Windows UNC')
		INSERT INTO [AccessProvider] ([DestinationID],[BasePath],[StringFormat],[DateCreated],[Token])VALUES (2,'http://jpeg.dril.dk/DRIL/JPEG','{BASE_PATH}{FOLDER_PATH}{FILENAME}',GETDATE(),'HTTP Download')
		INSERT INTO [AccessProvider] ([DestinationID],[BasePath],[StringFormat],[DateCreated],[Token])VALUES (3,'http://downol.dr.dk/download/bonanza/stills','{BASE_PATH}{FOLDER_PATH}{FILENAME}',GETDATE(),'HTTP Download')
		INSERT INTO [AccessProvider] ([DestinationID],[BasePath],[StringFormat],[DateCreated],[Token])VALUES (3,'\\Datagrp_5\dr$\Online\Download\Bonanza\Stills','{BASE_PATH}{FOLDER_PATH}{FILENAME}',GETDATE(),'Windows UNC')
		INSERT INTO [AccessProvider] ([DestinationID],[BasePath],[StringFormat],[DateCreated],[Token])VALUES (4,'https://s3-eu-west-1.amazonaws.com','{BASE_PATH}{FOLDER_PATH}{FILENAME}',GETDATE(),'HTTP Download')
		INSERT INTO [ObjectType] ([Value])VALUES ('Asset') DECLARE @ObjectTypeID INT SET @ObjectTypeID = @@IDENTITY
		INSERT INTO [ObjectType] ([Value])VALUES ('demo')
		INSERT INTO [ObjectRelationType]([Value])VALUES('Contains')
		INSERT INTO [FolderType]([Name],[DateCreated]) VALUES('TEST',GETDATE())
		INSERT INTO [FolderType]([Name],[DateCreated]) VALUES('Folder',GETDATE()) DECLARE @FolderTypeID INT SET @FolderTypeID = @@IDENTITY		
		INSERT INTO [FormatType]([Value])VALUES('Video') DECLARE @VideoFormatType INT SET @VideoFormatType = @@IDENTITY
		INSERT INTO [FormatType]([Value])VALUES('Audio') DECLARE @AudioFormatType INT SET @AudioFormatType = @@IDENTITY
		INSERT INTO [FormatType]([Value])VALUES('Image') DECLARE @ImageFormatType INT SET @ImageFormatType = @@IDENTITY
		INSERT INTO [FormatType]([Value])VALUES('Other') DECLARE @OtherFormatType INT SET @OtherFormatType = @@IDENTITY
		INSERT INTO [FormatCategory] ([FormatTypeID] ,[Value]) VALUES(@VideoFormatType,'Video Source') DECLARE @VideoSourceFormatCategory INT SET @VideoSourceFormatCategory = @@IDENTITY
		INSERT INTO [FormatCategory] ([FormatTypeID] ,[Value]) VALUES(@AudioFormatType,'Audio Source') DECLARE @AudioSourceFormatCategory INT SET @AudioSourceFormatCategory = @@IDENTITY
		INSERT INTO [FormatCategory] ([FormatTypeID] ,[Value]) VALUES(@ImageFormatType,'Image Source') DECLARE @ImageSourceFormatCategory INT SET @ImageSourceFormatCategory = @@IDENTITY
		INSERT INTO [FormatCategory] ([FormatTypeID] ,[Value]) VALUES(@OtherFormatType,'Other Source') DECLARE @OtherSourceFormatCategory INT SET @OtherSourceFormatCategory = @@IDENTITY
		INSERT INTO [FormatCategory] ([FormatTypeID] ,[Value]) VALUES(@ImageFormatType,'Thumbnail')    DECLARE @ThumbnailFormatCategory   INT SET @ThumbnailFormatCategory   = @@IDENTITY
		INSERT INTO [Format]([FormatCategoryID],[Name],[FormatXml],[MimeType]) VALUES (@VideoSourceFormatCategory,'Unknown video format',null,'application/octet-stream')
		INSERT INTO [Format]([FormatCategoryID],[Name],[FormatXml],[MimeType]) VALUES (@AudioSourceFormatCategory,'Unknown audio format',null,'application/octet-stream')
		INSERT INTO [Format]([FormatCategoryID],[Name],[FormatXml],[MimeType]) VALUES (@ImageSourceFormatCategory,'Unknown image format',null,'application/octet-stream')
		INSERT INTO [Format]([FormatCategoryID],[Name],[FormatXml],[MimeType]) VALUES (@OtherSourceFormatCategory,'Unknown format',null,'application/octet-stream')
		INSERT INTO [Format]([FormatCategoryID],[Name],[FormatXml],[MimeType]) VALUES (@ThumbnailFormatCategory,'JPEG 256x256> q90',null,'image/jpeg')
		
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(null,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','Geckon',GETDATE()) DECLARE @TopFolderID INT SET @TopFolderID = @@IDENTITY
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@TopFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','Public',GETDATE()) DECLARE @PublicFolderID INT SET @PublicFolderID = @@IDENTITY
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@TopFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','Private',GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@TopFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','Users',GETDATE()) DECLARE @UserFolderID INT SET @UserFolderID = @@IDENTITY
		INSERT INTO [Folder_Group_Join]([FolderID],[GroupGUID],[Permission],[DateCreated])VALUES(@TopFolderID,'A0B231E9-7D98-4F52-885E-AAAAAAAAAAAA',0x7FFFFFFF,GETDATE())
		
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','A0B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'A0B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','B0B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'B0B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','E0B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'E0B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','D0B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'D0B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','F0B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'F0B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','F1B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'F1B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','F2B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'F2B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','F3B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'F3B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','F4B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'F4B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','F5B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'F5B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','F6B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'F6B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','F7B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'F7B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		INSERT INTO [Folder]([ParentID],[FolderTypeID],[SubscriptionGUID],[Title],[DateCreated]) VALUES(@UserFolderID,@FolderTypeID,'9C4E8A99-A69B-41FD-B1C7-E28C54D1D304','F8B231E9-7D98-4F52-885E-AF4837FAA352',GETDATE())
		INSERT INTO [Folder_User_Join]([FolderID],[UserGUID],[Permission],[DateCreated])VALUES(@@IDENTITY,'F8B231E9-7D98-4F52-885E-AF4837FAA352',0x7FFFFFFF,GETDATE())
		
		INSERT INTO [MetadataSchema]([GUID],[name],[SchemaXml],[DateCreated]) VALUES('37B0E892-3943-41A9-8322-241D6277E528','demo','<?xml version="1.0"?>
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified" xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="xml">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="ID" type="xs:int" />
        <xs:element name="Name" type="xs:string" />
        <xs:element name="ShortDescription" type="xs:string" />
        <xs:element name="Abstract" type="xs:string" />
        <xs:element name="CreateDate" type="xs:string" />
        <xs:element name="UpdateDate" type="xs:string" />
        <xs:element name="TechnicalComment" type="xs:string" />
        <xs:element name="Subjects">
          <xs:complexType>
            <xs:sequence>
              <xs:element maxOccurs="unbounded" name="Subject" type="xs:string" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="Length" type="xs:time" />
        <xs:element name="Locations">
          <xs:complexType>
            <xs:sequence>
              <xs:element maxOccurs="unbounded" name="Location" type="xs:string" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="Colophon" type="xs:string" />
        <xs:element name="Actors">
          <xs:complexType>
            <xs:sequence>
              <xs:element maxOccurs="unbounded" name="Actor">
                <xs:complexType>
                  <xs:sequence>
                    <xs:element name="Name" type="xs:string" />
                    <xs:element name="Role" type="xs:string" />
                  </xs:sequence>
                </xs:complexType>
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
        <xs:element name="OriginalDate" type="xs:string" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>',GETDATE())
INSERT INTO [MetadataSchema]([GUID],[name],[SchemaXml],[DateCreated]) VALUES ('C6CD3DA2-021B-4F42-893D-40ECC4A64DFF','Larm FileInfo','<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="qualified">
  <xs:element name="Larm.FileInfos">
    <xs:complexType>
      <xs:sequence>
        <xs:element maxOccurs="unbounded" name="FileInfo">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="StartTime" type="xs:dateTime" />
              <xs:element name="EndTime" type="xs:dateTime" />
              <xs:element name="StartOffSet" type="xs:int" />
              <xs:element name="EndOffSet" type="xs:int" />
              <xs:element name="FileName" type="xs:string" />
              <xs:element name="ObjectID" type="xs:double" />
              <xs:element name="Index" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>',GETDATE())

INSERT INTO [MetadataSchema]([GUID],[name],[SchemaXml],[DateCreated]) VALUES ('CEBF6861-6904-4913-BFFD-EC764F48499D','Larm Persons','<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="qualified">
  <xs:element name="Larm.Persons">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="PersonInfo">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="Name" type="xs:string" />
              <xs:element name="RoleName" type="xs:string" />
              <xs:element name="Type" type="xs:int" />
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>',GETDATE())

INSERT INTO [MetadataSchema]([GUID],[name],[SchemaXml],[DateCreated]) VALUES ('42A0B635-E327-44D4-AED3-39B57D15A6D1','Larm Program','<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="qualified">
  <xs:element name="Larm.Program">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="StartTime" type="xs:dateTime">
          <xs:annotation solrIsField="true" solrFreetextIndex="false" />
        </xs:element>
        <xs:element name="EndTime" type="xs:dateTime">
          <xs:annotation solrIsField="true" solrFreetextIndex="false" />
        </xs:element>
        <xs:element name="ChannelName" type="xs:string">
          <xs:annotation solrIsField="true" />
        </xs:element>
        <xs:element name="Title" type="xs:string">
          <xs:annotation solrIsField="true" />
        </xs:element>
        <xs:element name="Abstract" type="xs:string" />
        <xs:element name="Description" type="xs:string" />
        <xs:element name="Identifier" type="xs:unsignedLong" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>
',GETDATE())

INSERT INTO [MetadataSchema]([GUID],[name],[SchemaXml],[DateCreated]) VALUES ('B4325524-5E7E-4A6D-89BD-1BC7F57E98CA','Larm Comment','<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="qualified">
  <xs:element name="Larm.CommentInfos">
    <xs:complexType>
      <xs:sequence>
        <xs:element maxOccurs="unbounded" name="CommentInfo">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="UserID" type="xs:int">
                <xs:annotation solrFreetextIndex="false" />
              </xs:element>
              <xs:element name="CreateDate" type="xs:dateTime">
                <xs:annotation solrFreetextIndex="false" />
              </xs:element>
              <xs:element name="Title" type="xs:string" />
              <xs:element name="Description" type="xs:string">
                <xs:annotation solrIsField="true" />
              </xs:element>
              <xs:element name="StartTime" type="xs:int">
                <xs:annotation solrFreetextIndex="false" />
              </xs:element>
              <xs:element name="EndTime" type="xs:int">
                <xs:annotation solrFreetextIndex="false" />
              </xs:element>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>',GETDATE())

INSERT INTO [MetadataSchema]([GUID],[name],[SchemaXml],[DateCreated]) VALUES ('72E0E593-0C41-4A81-BA36-C41549E95B7A','Larm Playlist','<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="qualified">
  <xs:element name="Playlist">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="ID" type="xs:unsignedByte" />
        <xs:element name="Title" type="xs:string" />
        <xs:element name="Description" />
      </xs:sequence>
    </xs:complexType>
  </xs:element>
</xs:schema>',GETDATE())
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Afrikaans','af')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Albanian','sq')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Arabic','ar')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Armenian','hy')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Basque','eu')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Belarusian','be')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Bulgarian','bg')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Catalan','ca')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Chinese','zh')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Croatian','hr')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Czech','cs')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Danish','da')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Dhivehi','div')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Dutch','nl')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('English','en')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Estonian','et')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Faroese','fo')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Farsi','fa')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Finnish','fi')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('French','fr')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Galician','gl')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Georgian','ka')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('German','de')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Greek','el')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Gujarati','gu')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Hebrew','he')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Hindi','hi')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Hungarian','hu')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Icelandic','is')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Indonesian','id')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Italian','it')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Japanese','ja')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Kannada','kn')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Kazakh','kk')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Konkani','kok')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Korean','ko')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Kyrgyz','ky')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Latvian','lv')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Lithuanian','lt')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Macedonian','mk')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Malay','ms')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Marathi','mr')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Mongolian','mn')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Bokml','nb')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Nynorsk','nn')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Polish','pl')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Portuguese','pt')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Punjabi','pa')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Romanian','ro')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Russian','ru')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Sanskrit','sa')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Slovak','sk')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Slovenian','sl')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Spanish','es')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Swahili','sw')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Swedish','sv')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Syriac','syr')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Tamil','ta')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Tatar','tt')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Telugu','te')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Thai','th')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Turkish','tr')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Ukrainian','uk')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Urdu','ur')
		INSERT INTO [Language]([Name],[LanguageCode])VALUES('Vietnamese','vi')

		-----------------------------> INSERT TEST OBJECTS <-------------------------------------------------------------------------------------------------------------------->
		DECLARE @TestOjectID INT
		
		INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated]) VALUES ('0876EBF6-E30F-4A43-9B6E-F8A479F38428',@ObjectTypeID,GETDATE()) SET  @TestOjectID = @@IDENTITY
		INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated]) VALUES (@TestOjectID,@PublicFolderID,0,GETDATE()) 
		INSERT INTO [Metadata]([ObjectID],[LanguageCode],[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])VALUES(@TestOjectID,'en',1,'<xml><ID>51031</ID><Name>Klip af Deadline 18.04.2007. Kl. 22:30</Name><ShortDescription /><Abstract /><CreateDate>16-08-2007 14:16:00</CreateDate><UpdateDate>16-08-2007 14:16:00</UpdateDate><TechnicalComment /><Subjects /><Length /><Locations /><Colophon /><Actors /><OriginalDate>18-04-2007 00:00:00</OriginalDate></xml>',GETDATE(),GETDATE(),null,null)
		
		INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated]) VALUES ('0876EBF6-E30F-4A43-9B6E-F8A479F38429',@ObjectTypeID,GETDATE())SET  @TestOjectID = @@IDENTITY
		INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated]) VALUES (@TestOjectID,@PublicFolderID,0,GETDATE()) 
		INSERT INTO [Metadata]([ObjectID],[LanguageCode],[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])VALUES(@TestOjectID,'en',1,'<xml><ID>51031</ID><Name>Klip af Deadline 18.04.2007. Kl. 22:30</Name><ShortDescription /><Abstract /><CreateDate>16-08-2007 14:16:00</CreateDate><UpdateDate>16-08-2007 14:16:00</UpdateDate><TechnicalComment /><Subjects /><Length /><Locations /><Colophon /><Actors /><OriginalDate>18-04-2007 00:00:00</OriginalDate></xml>',GETDATE(),GETDATE(),null,null)
		
		INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated]) VALUES ('0876EBF6-E30F-4A43-9B6E-F8A479F38430',@ObjectTypeID,GETDATE())SET  @TestOjectID = @@IDENTITY
		INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated]) VALUES (@TestOjectID,@PublicFolderID,0,GETDATE()) 
		INSERT INTO [Metadata]([ObjectID],[LanguageCode],[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])VALUES(@TestOjectID,'en',1,'<xml><ID>51031</ID><Name>Klip af Deadline 18.04.2007. Kl. 22:30</Name><ShortDescription /><Abstract /><CreateDate>16-08-2007 14:16:00</CreateDate><UpdateDate>16-08-2007 14:16:00</UpdateDate><TechnicalComment /><Subjects /><Length /><Locations /><Colophon /><Actors /><OriginalDate>18-04-2007 00:00:00</OriginalDate></xml>',GETDATE(),GETDATE(),null,null)

		INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated]) VALUES ('0876EBF6-E30F-4A43-9B6E-F8A479F38431',@ObjectTypeID,GETDATE())SET  @TestOjectID = @@IDENTITY
		INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated]) VALUES (@TestOjectID,@PublicFolderID,0,GETDATE()) 
		INSERT INTO [Metadata]([ObjectID],[LanguageCode],[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])VALUES(@TestOjectID,'en',1,'<xml><ID>51031</ID><Name>Klip af Deadline 18.04.2007. Kl. 22:30</Name><ShortDescription /><Abstract /><CreateDate>16-08-2007 14:16:00</CreateDate><UpdateDate>16-08-2007 14:16:00</UpdateDate><TechnicalComment /><Subjects /><Length /><Locations /><Colophon /><Actors /><OriginalDate>18-04-2007 00:00:00</OriginalDate></xml>',GETDATE(),GETDATE(),null,null)

		INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated]) VALUES ('0876EBF6-E30F-4A43-9B6E-F8A479F38432',@ObjectTypeID,GETDATE())SET  @TestOjectID = @@IDENTITY
		INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated]) VALUES (@TestOjectID,@PublicFolderID,0,GETDATE()) 
		INSERT INTO [Metadata]([ObjectID],[LanguageCode],[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])VALUES(@TestOjectID,'en',1,'<xml><ID>51031</ID><Name>Klip af Deadline 18.04.2007. Kl. 22:30</Name><ShortDescription /><Abstract /><CreateDate>16-08-2007 14:16:00</CreateDate><UpdateDate>16-08-2007 14:16:00</UpdateDate><TechnicalComment /><Subjects /><Length /><Locations /><Colophon /><Actors /><OriginalDate>18-04-2007 00:00:00</OriginalDate></xml>',GETDATE(),GETDATE(),null,null)

		INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated]) VALUES ('0876EBF6-E30F-4A43-9B6E-F8A479F38433',@ObjectTypeID,GETDATE())SET  @TestOjectID = @@IDENTITY
		INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated]) VALUES (@TestOjectID,@PublicFolderID,0,GETDATE()) 
		INSERT INTO [Metadata]([ObjectID],[LanguageCode],[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])VALUES(@TestOjectID,'en',1,'<xml><ID>51031</ID><Name>Klip af Deadline 18.04.2007. Kl. 22:30</Name><ShortDescription /><Abstract /><CreateDate>16-08-2007 14:16:00</CreateDate><UpdateDate>16-08-2007 14:16:00</UpdateDate><TechnicalComment /><Subjects /><Length /><Locations /><Colophon /><Actors /><OriginalDate>18-04-2007 00:00:00</OriginalDate></xml>',GETDATE(),GETDATE(),null,null)

		INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated]) VALUES ('0876EBF6-E30F-4A43-9B6E-F8A479F38434',@ObjectTypeID,GETDATE())SET  @TestOjectID = @@IDENTITY
		INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated]) VALUES (@TestOjectID,@PublicFolderID,0,GETDATE()) 
		INSERT INTO [Metadata]([ObjectID],[LanguageCode],[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])VALUES(@TestOjectID,'en',1,'<xml><ID>51031</ID><Name>Klip af Deadline 18.04.2007. Kl. 22:30</Name><ShortDescription /><Abstract /><CreateDate>16-08-2007 14:16:00</CreateDate><UpdateDate>16-08-2007 14:16:00</UpdateDate><TechnicalComment /><Subjects /><Length /><Locations /><Colophon /><Actors /><OriginalDate>18-04-2007 00:00:00</OriginalDate></xml>',GETDATE(),GETDATE(),null,null)

		INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated]) VALUES ('0876EBF6-E30F-4A43-9B6E-F8A479F38435',@ObjectTypeID,GETDATE())SET  @TestOjectID = @@IDENTITY
		INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated]) VALUES (@TestOjectID,@PublicFolderID,0,GETDATE()) 
		INSERT INTO [Metadata]([ObjectID],[LanguageCode],[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])VALUES(@TestOjectID,'en',1,'<xml><ID>51031</ID><Name>Klip af Deadline 18.04.2007. Kl. 22:30</Name><ShortDescription /><Abstract /><CreateDate>16-08-2007 14:16:00</CreateDate><UpdateDate>16-08-2007 14:16:00</UpdateDate><TechnicalComment /><Subjects /><Length /><Locations /><Colophon /><Actors /><OriginalDate>18-04-2007 00:00:00</OriginalDate></xml>',GETDATE(),GETDATE(),null,null)

		INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated]) VALUES ('0876EBF6-E30F-4A43-9B6E-F8A479F38436',@ObjectTypeID,GETDATE())SET  @TestOjectID = @@IDENTITY
		INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated]) VALUES (@TestOjectID,@PublicFolderID,0,GETDATE()) 
		INSERT INTO [Metadata]([ObjectID],[LanguageCode],[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])VALUES(@TestOjectID,'en',1,'<xml><ID>51031</ID><Name>Klip af Deadline 18.04.2007. Kl. 22:30</Name><ShortDescription /><Abstract /><CreateDate>16-08-2007 14:16:00</CreateDate><UpdateDate>16-08-2007 14:16:00</UpdateDate><TechnicalComment /><Subjects /><Length /><Locations /><Colophon /><Actors /><OriginalDate>18-04-2007 00:00:00</OriginalDate></xml>',GETDATE(),GETDATE(),null,null)

		INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated]) VALUES ('0876EBF6-E30F-4A43-9B6E-F8A479F38437',@ObjectTypeID,GETDATE())SET  @TestOjectID = @@IDENTITY
		INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated]) VALUES (@TestOjectID,@PublicFolderID,0,GETDATE()) 
		INSERT INTO [Metadata]([ObjectID],[LanguageCode],[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])VALUES(@TestOjectID,'en',1,'<xml><ID>51031</ID><Name>Klip af Deadline 18.04.2007. Kl. 22:30</Name><ShortDescription /><Abstract /><CreateDate>16-08-2007 14:16:00</CreateDate><UpdateDate>16-08-2007 14:16:00</UpdateDate><TechnicalComment /><Subjects /><Length /><Locations /><Colophon /><Actors /><OriginalDate>18-04-2007 00:00:00</OriginalDate></xml>',GETDATE(),GETDATE(),null,null)

		INSERT INTO [Object] ([GUID],[ObjectTypeID],[DateCreated]) VALUES ('0876EBF6-E30F-4A43-9B6E-F8A479F38438',@ObjectTypeID,GETDATE())SET  @TestOjectID = @@IDENTITY
		INSERT INTO [Object_Folder_Join]([ObjectID],[FolderID],[IsShortcut],[DateCreated]) VALUES (@TestOjectID,@PublicFolderID,0,GETDATE()) 
		INSERT INTO [Metadata]([ObjectID],[LanguageCode],[MetadataSchemaID],[MetadataXml],[DateCreated],[DateModified],[DateLocked],[LockUserGUID])VALUES(@TestOjectID,'en',1,'<xml><ID>51031</ID><Name>Klip af Deadline 18.04.2007. Kl. 22:30</Name><ShortDescription /><Abstract /><CreateDate>16-08-2007 14:16:00</CreateDate><UpdateDate>16-08-2007 14:16:00</UpdateDate><TechnicalComment /><Subjects /><Length /><Locations /><Colophon /><Actors /><OriginalDate>18-04-2007 00:00:00</OriginalDate></xml>',GETDATE(),GETDATE(),null,null)

	END
GO
/****** Object:  ForeignKey [FK_Folder_Folder]    Script Date: 12/06/2011 14:25:56 ******/
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_Folder] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Folder] ([ID])
GO
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_Folder]
GO
/****** Object:  ForeignKey [FK_Folder_FolderType]    Script Date: 12/06/2011 14:25:56 ******/
ALTER TABLE [dbo].[Folder]  WITH CHECK ADD  CONSTRAINT [FK_Folder_FolderType] FOREIGN KEY([FolderTypeID])
REFERENCES [dbo].[FolderType] ([ID])
GO
ALTER TABLE [dbo].[Folder] CHECK CONSTRAINT [FK_Folder_FolderType]
GO
/****** Object:  ForeignKey [FK_AccessProvider_Destination]    Script Date: 12/06/2011 14:25:56 ******/
ALTER TABLE [dbo].[AccessProvider]  WITH CHECK ADD  CONSTRAINT [FK_AccessProvider_Destination] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[Destination] ([ID])
GO
ALTER TABLE [dbo].[AccessProvider] CHECK CONSTRAINT [FK_AccessProvider_Destination]
GO
/****** Object:  ForeignKey [FK_FormatCategory_FormatType]    Script Date: 12/06/2011 14:25:56 ******/
ALTER TABLE [dbo].[FormatCategory]  WITH CHECK ADD  CONSTRAINT [FK_FormatCategory_FormatType] FOREIGN KEY([FormatTypeID])
REFERENCES [dbo].[FormatType] ([ID])
GO
ALTER TABLE [dbo].[FormatCategory] CHECK CONSTRAINT [FK_FormatCategory_FormatType]
GO
/****** Object:  ForeignKey [FK_Object_ObjectType]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object]  WITH CHECK ADD  CONSTRAINT [FK_Object_ObjectType] FOREIGN KEY([ObjectTypeID])
REFERENCES [dbo].[ObjectType] ([ID])
GO
ALTER TABLE [dbo].[Object] CHECK CONSTRAINT [FK_Object_ObjectType]
GO
/****** Object:  ForeignKey [FK_MetadataSchema_User_Join_MetadataSchema]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[MetadataSchema_User_Join]  WITH CHECK ADD  CONSTRAINT [FK_MetadataSchema_User_Join_MetadataSchema] FOREIGN KEY([MetadataSchemaID])
REFERENCES [dbo].[MetadataSchema] ([ID])
GO
ALTER TABLE [dbo].[MetadataSchema_User_Join] CHECK CONSTRAINT [FK_MetadataSchema_User_Join_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_MetadataSchema_Group_Join_MetadataSchema]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[MetadataSchema_Group_Join]  WITH CHECK ADD  CONSTRAINT [FK_MetadataSchema_Group_Join_MetadataSchema] FOREIGN KEY([MetadataSchemaID])
REFERENCES [dbo].[MetadataSchema] ([ID])
GO
ALTER TABLE [dbo].[MetadataSchema_Group_Join] CHECK CONSTRAINT [FK_MetadataSchema_Group_Join_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_Object_Folder_Join_Folder]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object_Folder_Join]  WITH CHECK ADD  CONSTRAINT [FK_Object_Folder_Join_Folder] FOREIGN KEY([FolderID])
REFERENCES [dbo].[Folder] ([ID])
GO
ALTER TABLE [dbo].[Object_Folder_Join] CHECK CONSTRAINT [FK_Object_Folder_Join_Folder]
GO
/****** Object:  ForeignKey [FK_Object_Folder_Join_Object]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object_Folder_Join]  WITH CHECK ADD  CONSTRAINT [FK_Object_Folder_Join_Object] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[Object_Folder_Join] CHECK CONSTRAINT [FK_Object_Folder_Join_Object]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_Object]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object_Object_Join]  WITH CHECK ADD  CONSTRAINT [FK_Object_Object_Join_Object] FOREIGN KEY([Object1GUID])
REFERENCES [dbo].[Object] ([GUID])
GO
ALTER TABLE [dbo].[Object_Object_Join] CHECK CONSTRAINT [FK_Object_Object_Join_Object]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_Object1]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object_Object_Join]  WITH CHECK ADD  CONSTRAINT [FK_Object_Object_Join_Object1] FOREIGN KEY([Object2GUID])
REFERENCES [dbo].[Object] ([GUID])
GO
ALTER TABLE [dbo].[Object_Object_Join] CHECK CONSTRAINT [FK_Object_Object_Join_Object1]
GO
/****** Object:  ForeignKey [FK_Object_Object_Join_ObjectRelationType]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Object_Object_Join]  WITH CHECK ADD  CONSTRAINT [FK_Object_Object_Join_ObjectRelationType] FOREIGN KEY([ObjectRelationTypeID])
REFERENCES [dbo].[ObjectRelationType] ([ID])
GO
ALTER TABLE [dbo].[Object_Object_Join] CHECK CONSTRAINT [FK_Object_Object_Join_ObjectRelationType]
GO
/****** Object:  ForeignKey [FK_Format_FormatCategory]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Format]  WITH CHECK ADD  CONSTRAINT [FK_Format_FormatCategory] FOREIGN KEY([FormatCategoryID])
REFERENCES [dbo].[FormatCategory] ([ID])
GO
ALTER TABLE [dbo].[Format] CHECK CONSTRAINT [FK_Format_FormatCategory]
GO
/****** Object:  ForeignKey [FK_Metadata_Language]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Metadata]  WITH CHECK ADD  CONSTRAINT [FK_Metadata_Language] FOREIGN KEY([LanguageCode])
REFERENCES [dbo].[Language] ([LanguageCode])
GO
ALTER TABLE [dbo].[Metadata] CHECK CONSTRAINT [FK_Metadata_Language]
GO
/****** Object:  ForeignKey [FK_Metadata_MetadataSchema]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Metadata]  WITH CHECK ADD  CONSTRAINT [FK_Metadata_MetadataSchema] FOREIGN KEY([MetadataSchemaID])
REFERENCES [dbo].[MetadataSchema] ([ID])
GO
ALTER TABLE [dbo].[Metadata] CHECK CONSTRAINT [FK_Metadata_MetadataSchema]
GO
/****** Object:  ForeignKey [FK_Metadata_Object]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Metadata]  WITH CHECK ADD  CONSTRAINT [FK_Metadata_Object] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[Metadata] CHECK CONSTRAINT [FK_Metadata_Object]
GO
/****** Object:  ForeignKey [FK_Folder_User_Join_Folder]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Folder_User_Join]  WITH CHECK ADD  CONSTRAINT [FK_Folder_User_Join_Folder] FOREIGN KEY([FolderID])
REFERENCES [dbo].[Folder] ([ID])
GO
ALTER TABLE [dbo].[Folder_User_Join] CHECK CONSTRAINT [FK_Folder_User_Join_Folder]
GO
/****** Object:  ForeignKey [FK_Folder_Group_Join_Folder]    Script Date: 12/06/2011 14:25:58 ******/
ALTER TABLE [dbo].[Folder_Group_Join]  WITH CHECK ADD  CONSTRAINT [FK_Folder_Group_Join_Folder] FOREIGN KEY([FolderID])
REFERENCES [dbo].[Folder] ([ID])
GO
ALTER TABLE [dbo].[Folder_Group_Join] CHECK CONSTRAINT [FK_Folder_Group_Join_Folder]
GO
/****** Object:  ForeignKey [FK_Conversion_Destination]    Script Date: 12/06/2011 14:25:59 ******/
ALTER TABLE [dbo].[Conversion]  WITH CHECK ADD  CONSTRAINT [FK_Conversion_Destination] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[Destination] ([ID])
GO
ALTER TABLE [dbo].[Conversion] CHECK CONSTRAINT [FK_Conversion_Destination]
GO
/****** Object:  ForeignKey [FK_Conversion_Format]    Script Date: 12/06/2011 14:25:59 ******/
ALTER TABLE [dbo].[Conversion]  WITH CHECK ADD  CONSTRAINT [FK_Conversion_Format] FOREIGN KEY([FormatID])
REFERENCES [dbo].[Format] ([ID])
GO
ALTER TABLE [dbo].[Conversion] CHECK CONSTRAINT [FK_Conversion_Format]
GO
/****** Object:  ForeignKey [FK_Conversion_FormatCategory]    Script Date: 12/06/2011 14:25:59 ******/
ALTER TABLE [dbo].[Conversion]  WITH CHECK ADD  CONSTRAINT [FK_Conversion_FormatCategory] FOREIGN KEY([FormatCategoryID])
REFERENCES [dbo].[FormatCategory] ([ID])
GO
ALTER TABLE [dbo].[Conversion] CHECK CONSTRAINT [FK_Conversion_FormatCategory]
GO
/****** Object:  ForeignKey [FK_File_Destination]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_Destination] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[Destination] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_Destination]
GO
/****** Object:  ForeignKey [FK_File_File]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_File] FOREIGN KEY([ParentID])
REFERENCES [dbo].[File] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_File]
GO
/****** Object:  ForeignKey [FK_File_Format]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_Format] FOREIGN KEY([FormatID])
REFERENCES [dbo].[Format] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_Format]
GO
/****** Object:  ForeignKey [FK_File_Object]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_Object] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_Object]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Conversion]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint]  WITH CHECK ADD  CONSTRAINT [FK_AccessPoint_Conversion] FOREIGN KEY([ID])
REFERENCES [dbo].[Conversion] ([ID])
GO
ALTER TABLE [dbo].[AccessPoint] CHECK CONSTRAINT [FK_AccessPoint_Conversion]
GO
/****** Object:  ForeignKey [FK_AccessPoint_User_Join_AccessPoint]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint_User_Join]  WITH CHECK ADD  CONSTRAINT [FK_AccessPoint_User_Join_AccessPoint] FOREIGN KEY([AccessPointID])
REFERENCES [dbo].[AccessPoint] ([ID])
GO
ALTER TABLE [dbo].[AccessPoint_User_Join] CHECK CONSTRAINT [FK_AccessPoint_User_Join_AccessPoint]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Object_Join_AccessPoint]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint_Object_Join]  WITH CHECK ADD  CONSTRAINT [FK_AccessPoint_Object_Join_AccessPoint] FOREIGN KEY([AccessPointID])
REFERENCES [dbo].[AccessPoint] ([ID])
GO
ALTER TABLE [dbo].[AccessPoint_Object_Join] CHECK CONSTRAINT [FK_AccessPoint_Object_Join_AccessPoint]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Object_Join_Object]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint_Object_Join]  WITH CHECK ADD  CONSTRAINT [FK_AccessPoint_Object_Join_Object] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Object] ([ID])
GO
ALTER TABLE [dbo].[AccessPoint_Object_Join] CHECK CONSTRAINT [FK_AccessPoint_Object_Join_Object]
GO
/****** Object:  ForeignKey [FK_AccessPoint_Group_Join_AccessPoint]    Script Date: 12/06/2011 14:26:00 ******/
ALTER TABLE [dbo].[AccessPoint_Group_Join]  WITH CHECK ADD  CONSTRAINT [FK_AccessPoint_Group_Join_AccessPoint] FOREIGN KEY([AcessPointID])
REFERENCES [dbo].[AccessPoint] ([ID])
GO
ALTER TABLE [dbo].[AccessPoint_Group_Join] CHECK CONSTRAINT [FK_AccessPoint_Group_Join_AccessPoint]
GO
