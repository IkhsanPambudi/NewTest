USE [master]
GO
/****** Object:  Database [Magic_VillaAPI] 
CREATE DATABASE [Magic_VillaAPI]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Magic_VillaAPI', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IKHSANPAMBUDI\MSSQL\DATA\Magic_VillaAPI.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Magic_VillaAPI_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IKHSANPAMBUDI\MSSQL\DATA\Magic_VillaAPI_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Magic_VillaAPI] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Magic_VillaAPI].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Magic_VillaAPI] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET ARITHABORT OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Magic_VillaAPI] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Magic_VillaAPI] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Magic_VillaAPI] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Magic_VillaAPI] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Magic_VillaAPI] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Magic_VillaAPI] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Magic_VillaAPI] SET  MULTI_USER 
GO
ALTER DATABASE [Magic_VillaAPI] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Magic_VillaAPI] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Magic_VillaAPI] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Magic_VillaAPI] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Magic_VillaAPI] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Magic_VillaAPI] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Magic_VillaAPI] SET QUERY_STORE = OFF
GO
USE [Magic_VillaAPI]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]  
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VillaNumbers]  
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VillaNumbers](
	[VillaNo] [int] NOT NULL,
	[SpecialDetails] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[UpdateDate] [datetime2](7) NOT NULL,
	[VillaID] [int] NOT NULL,
 CONSTRAINT [PK_VillaNumbers] PRIMARY KEY CLUSTERED 
(
	[VillaNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Villas]   
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Villas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
	[Rate] [float] NOT NULL,
	[Sqft] [int] NOT NULL,
	[Occupancy] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Amenity] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Villas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230729134459_AddVillasTable', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230729140711_SeedVillaTable', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230729140918_SeedVillaTableWithCreateDate', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230730083817_AddVillaNumberTable', N'7.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230730091439_AddForeignKeyVillaIdtoVilla', N'7.0.0')
GO
INSERT [dbo].[VillaNumbers] ([VillaNo], [SpecialDetails], [CreateDate], [UpdateDate], [VillaID]) VALUES (101, N'Kamar 101', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1)
GO
SET IDENTITY_INSERT [dbo].[Villas] ON 

INSERT [dbo].[Villas] ([Id], [Name], [Details], [Rate], [Sqft], [Occupancy], [ImageUrl], [Amenity], [CreateDate]) VALUES (1, N'Royal Villa', N'Fusce 11 tincidunt maximus leo, sed scelerisque massa auctor sit amet. Donec ex mauris, hendrerit quis nibh ac, efficitur fringilla enim.', 200, 550, 4, N'https://dotnetmasteryimages.blob.core.windows.net/bluevillaimages/villa3.jpg', N'', CAST(N'2023-07-30T16:14:39.2147460' AS DateTime2))
INSERT [dbo].[Villas] ([Id], [Name], [Details], [Rate], [Sqft], [Occupancy], [ImageUrl], [Amenity], [CreateDate]) VALUES (2, N'Premium Pool Villa', N'Fusce 11 tincidunt maximus leo, sed scelerisque massa auctor sit amet. Donec ex mauris, hendrerit quis nibh ac, efficitur fringilla enim.', 300, 550, 4, N'https://dotnetmasteryimages.blob.core.windows.net/bluevillaimages/villa1.jpg', N'', CAST(N'2023-07-30T16:14:39.2147469' AS DateTime2))
INSERT [dbo].[Villas] ([Id], [Name], [Details], [Rate], [Sqft], [Occupancy], [ImageUrl], [Amenity], [CreateDate]) VALUES (3, N'Luxury Pool Villa', N'Fusce 11 tincidunt maximus leo, sed scelerisque massa auctor sit amet. Donec ex mauris, hendrerit quis nibh ac, efficitur fringilla enim.', 400, 750, 4, N'https://dotnetmasteryimages.blob.core.windows.net/bluevillaimages/villa4.jpg', N'', CAST(N'2023-07-30T16:14:39.2147470' AS DateTime2))
INSERT [dbo].[Villas] ([Id], [Name], [Details], [Rate], [Sqft], [Occupancy], [ImageUrl], [Amenity], [CreateDate]) VALUES (4, N'Diamond Villa', N'Fusce 11 tincidunt maximus leo, sed scelerisque massa auctor sit amet. Donec ex mauris, hendrerit quis nibh ac, efficitur fringilla enim.', 550, 900, 4, N'https://dotnetmasteryimages.blob.core.windows.net/bluevillaimages/villa5.jpg', N'', CAST(N'2023-07-30T16:14:39.2147472' AS DateTime2))
INSERT [dbo].[Villas] ([Id], [Name], [Details], [Rate], [Sqft], [Occupancy], [ImageUrl], [Amenity], [CreateDate]) VALUES (5, N'Diamond Pool Villa', N'Fusce 11 tincidunt maximus leo, sed scelerisque massa auctor sit amet. Donec ex mauris, hendrerit quis nibh ac, efficitur fringilla enim.', 600, 1100, 4, N'https://dotnetmasteryimages.blob.core.windows.net/bluevillaimages/villa2.jpg', N'', CAST(N'2023-07-30T16:14:39.2147474' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Villas] OFF
GO
/****** Object:  Index [IX_VillaNumbers_VillaID]   
CREATE NONCLUSTERED INDEX [IX_VillaNumbers_VillaID] ON [dbo].[VillaNumbers]
(
	[VillaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VillaNumbers] ADD  DEFAULT ((0)) FOR [VillaID]
GO
ALTER TABLE [dbo].[VillaNumbers]  WITH CHECK ADD  CONSTRAINT [FK_VillaNumbers_Villas_VillaID] FOREIGN KEY([VillaID])
REFERENCES [dbo].[Villas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VillaNumbers] CHECK CONSTRAINT [FK_VillaNumbers_Villas_VillaID]
GO
USE [master]
GO
ALTER DATABASE [Magic_VillaAPI] SET  READ_WRITE 
GO
