USE [master]
GO
/****** Object:  Database [ServingHands]    Script Date: 1/15/2020 10:45:41 PM ******/
CREATE DATABASE [ServingHands] ON  PRIMARY 
( NAME = N'ServingHands', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ServingHands.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ServingHands_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ServingHands_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ServingHands] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ServingHands].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ServingHands] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ServingHands] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ServingHands] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ServingHands] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ServingHands] SET ARITHABORT OFF 
GO
ALTER DATABASE [ServingHands] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ServingHands] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [ServingHands] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ServingHands] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ServingHands] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ServingHands] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ServingHands] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ServingHands] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ServingHands] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ServingHands] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ServingHands] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ServingHands] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ServingHands] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ServingHands] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ServingHands] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ServingHands] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ServingHands] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ServingHands] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ServingHands] SET RECOVERY FULL 
GO
ALTER DATABASE [ServingHands] SET  MULTI_USER 
GO
ALTER DATABASE [ServingHands] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ServingHands] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ServingHands', N'ON'
GO
USE [ServingHands]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 1/15/2020 10:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[total] [float] NULL,
	[date] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[blood]    Script Date: 1/15/2020 10:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blood](
	[bid] [int] IDENTITY(1,1) NOT NULL,
	[rid] [int] NULL,
	[oid] [int] NULL,
	[bloodgroup] [nvarchar](50) NULL,
	[organization] [nvarchar](50) NULL,
	[date] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[clothes]    Script Date: 1/15/2020 10:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clothes](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[oid] [int] NULL,
	[rid] [int] NULL,
	[noclothes] [nvarchar](50) NULL,
	[organization] [nvarchar](50) NULL,
	[date] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Drowsy]    Script Date: 1/15/2020 10:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drowsy](
	[did] [int] IDENTITY(1,1) NOT NULL,
	[rid] [int] NULL,
	[oid] [int] NULL,
	[furniture] [nvarchar](50) NULL,
	[appliances] [nvarchar](50) NULL,
	[crockeries] [nvarchar](50) NULL,
	[organization] [nvarchar](50) NULL,
	[date] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[money]    Script Date: 1/15/2020 10:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[money](
	[mid] [int] IDENTITY(1,1) NOT NULL,
	[rid] [int] NULL,
	[oid] [int] NULL,
	[amount] [float] NULL,
	[organization] [nvarchar](50) NULL,
	[date] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Organization]    Script Date: 1/15/2020 10:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[oid] [int] IDENTITY(1,1) NOT NULL,
	[nameOrganization] [nvarchar](50) NULL,
	[requirement] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Register]    Script Date: 1/15/2020 10:45:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
	[gender] [nvarchar](50) NULL,
	[contact] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[date] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[blood] ON 

INSERT [dbo].[blood] ([bid], [rid], [oid], [bloodgroup], [organization], [date]) VALUES (1, NULL, NULL, N'O-', N'Chipa', N'20/07/2019')
INSERT [dbo].[blood] ([bid], [rid], [oid], [bloodgroup], [organization], [date]) VALUES (6, NULL, NULL, N'A+', N'Alamgir', N'20/07/2019')
INSERT [dbo].[blood] ([bid], [rid], [oid], [bloodgroup], [organization], [date]) VALUES (7, NULL, NULL, N'B-', N'Chipa', N'12/02/2020')
SET IDENTITY_INSERT [dbo].[blood] OFF
SET IDENTITY_INSERT [dbo].[clothes] ON 

INSERT [dbo].[clothes] ([cid], [oid], [rid], [noclothes], [organization], [date]) VALUES (4, NULL, NULL, N'19', N'Chipa', N'02/02/2020')
INSERT [dbo].[clothes] ([cid], [oid], [rid], [noclothes], [organization], [date]) VALUES (5, NULL, NULL, N'15', N'Alamgir', N'08/02/2019')
INSERT [dbo].[clothes] ([cid], [oid], [rid], [noclothes], [organization], [date]) VALUES (6, NULL, NULL, N'17', N'Chipa', N'12/06/2019')
INSERT [dbo].[clothes] ([cid], [oid], [rid], [noclothes], [organization], [date]) VALUES (7, NULL, NULL, N'12', N'Alamgir', N'2/02/2020')
INSERT [dbo].[clothes] ([cid], [oid], [rid], [noclothes], [organization], [date]) VALUES (8, NULL, NULL, N'12', N'Alamgir', N'14/04/2020')
SET IDENTITY_INSERT [dbo].[clothes] OFF
SET IDENTITY_INSERT [dbo].[Drowsy] ON 

INSERT [dbo].[Drowsy] ([did], [rid], [oid], [furniture], [appliances], [crockeries], [organization], [date]) VALUES (1, NULL, NULL, N'Table', N'Refrigerator', N'Plates', N'Alamgir', N'12/02/2019')
INSERT [dbo].[Drowsy] ([did], [rid], [oid], [furniture], [appliances], [crockeries], [organization], [date]) VALUES (2, NULL, NULL, N'Chairs', N'Tv', N'spoons', N'Chipa', N'12/05/2019')
INSERT [dbo].[Drowsy] ([did], [rid], [oid], [furniture], [appliances], [crockeries], [organization], [date]) VALUES (4, NULL, NULL, N'Chairs', N'Tv', N'Plates', N'Alamgir', N'Tv')
SET IDENTITY_INSERT [dbo].[Drowsy] OFF
SET IDENTITY_INSERT [dbo].[money] ON 

INSERT [dbo].[money] ([mid], [rid], [oid], [amount], [organization], [date]) VALUES (1, NULL, NULL, 20500, N'Chipa', N'12/03/2020')
INSERT [dbo].[money] ([mid], [rid], [oid], [amount], [organization], [date]) VALUES (2, NULL, NULL, 3000, N'Alamgir', N'12/08/2019')
INSERT [dbo].[money] ([mid], [rid], [oid], [amount], [organization], [date]) VALUES (4, NULL, NULL, 20000, N'Alamgir', N'12/03/2020')
SET IDENTITY_INSERT [dbo].[money] OFF
SET IDENTITY_INSERT [dbo].[Organization] ON 

INSERT [dbo].[Organization] ([oid], [nameOrganization], [requirement]) VALUES (2, N'Alamgir', N'Clothes,money and furniture')
INSERT [dbo].[Organization] ([oid], [nameOrganization], [requirement]) VALUES (3, N'Chipa', N'Clothes,money ')
SET IDENTITY_INSERT [dbo].[Organization] OFF
SET IDENTITY_INSERT [dbo].[Register] ON 

INSERT [dbo].[Register] ([id], [name], [Email], [Pass], [gender], [contact], [Address], [date], [role]) VALUES (1, N'Ali', N'Ali123@gmail.com', N'12345', N'male', N'0987634352', N'Gulshan e iqbal karachi ', N'02/01/2019', N'Admin')
INSERT [dbo].[Register] ([id], [name], [Email], [Pass], [gender], [contact], [Address], [date], [role]) VALUES (2, N'Raza', N'Raza123@gmail.com', N'12345', N'male', N'0987634352', N'Gulshan e iqbal karachi ', N'02/01/2019', N'User')
INSERT [dbo].[Register] ([id], [name], [Email], [Pass], [gender], [contact], [Address], [date], [role]) VALUES (3, N'Afnan', N'hassanafnan20@gmail.com', N'12345', N'male', N'03456782938', N'Gulshan e Iqbal Karachi', N'02/12/2019', N'Admin')
INSERT [dbo].[Register] ([id], [name], [Email], [Pass], [gender], [contact], [Address], [date], [role]) VALUES (4, N'Kashan', N'Kashan123@gmail.com', N'12345', N'male', N'0987634352', N'Gulshan e iqbal karachi ', N'02/01/2020', N'Admin')
INSERT [dbo].[Register] ([id], [name], [Email], [Pass], [gender], [contact], [Address], [date], [role]) VALUES (5, N'Shah', N'Shah12@gmail.com', N'2345', N'male', N'0987634352', N'Gulshan e iqbal karachi ', N'02/01/2020', N'User')
SET IDENTITY_INSERT [dbo].[Register] OFF
ALTER TABLE [dbo].[blood]  WITH CHECK ADD  CONSTRAINT [FK_blood_Organization] FOREIGN KEY([oid])
REFERENCES [dbo].[Organization] ([oid])
GO
ALTER TABLE [dbo].[blood] CHECK CONSTRAINT [FK_blood_Organization]
GO
ALTER TABLE [dbo].[blood]  WITH CHECK ADD  CONSTRAINT [FK_blood_Register] FOREIGN KEY([rid])
REFERENCES [dbo].[Register] ([id])
GO
ALTER TABLE [dbo].[blood] CHECK CONSTRAINT [FK_blood_Register]
GO
ALTER TABLE [dbo].[clothes]  WITH CHECK ADD  CONSTRAINT [FK_clothes_Organization] FOREIGN KEY([oid])
REFERENCES [dbo].[Organization] ([oid])
GO
ALTER TABLE [dbo].[clothes] CHECK CONSTRAINT [FK_clothes_Organization]
GO
ALTER TABLE [dbo].[clothes]  WITH CHECK ADD  CONSTRAINT [FK_clothes_Register] FOREIGN KEY([rid])
REFERENCES [dbo].[Register] ([id])
GO
ALTER TABLE [dbo].[clothes] CHECK CONSTRAINT [FK_clothes_Register]
GO
ALTER TABLE [dbo].[Drowsy]  WITH CHECK ADD  CONSTRAINT [FK_Drowsy_Organization] FOREIGN KEY([oid])
REFERENCES [dbo].[Organization] ([oid])
GO
ALTER TABLE [dbo].[Drowsy] CHECK CONSTRAINT [FK_Drowsy_Organization]
GO
ALTER TABLE [dbo].[Drowsy]  WITH CHECK ADD  CONSTRAINT [FK_Drowsy_Register] FOREIGN KEY([rid])
REFERENCES [dbo].[Register] ([id])
GO
ALTER TABLE [dbo].[Drowsy] CHECK CONSTRAINT [FK_Drowsy_Register]
GO
ALTER TABLE [dbo].[money]  WITH CHECK ADD  CONSTRAINT [FK_money_Organization] FOREIGN KEY([oid])
REFERENCES [dbo].[Organization] ([oid])
GO
ALTER TABLE [dbo].[money] CHECK CONSTRAINT [FK_money_Organization]
GO
ALTER TABLE [dbo].[money]  WITH CHECK ADD  CONSTRAINT [FK_money_Register] FOREIGN KEY([rid])
REFERENCES [dbo].[Register] ([id])
GO
ALTER TABLE [dbo].[money] CHECK CONSTRAINT [FK_money_Register]
GO
USE [master]
GO
ALTER DATABASE [ServingHands] SET  READ_WRITE 
GO
