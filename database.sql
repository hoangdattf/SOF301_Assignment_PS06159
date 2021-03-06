USE [master]
GO
/****** Object:  Database [AssignmentSOF301]    Script Date: 10/21/2017 23:26:28 ******/
CREATE DATABASE [AssignmentSOF301] ON  PRIMARY 
( NAME = N'AssignmentSOF301', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\AssignmentSOF301.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AssignmentSOF301_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\AssignmentSOF301_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AssignmentSOF301] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AssignmentSOF301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AssignmentSOF301] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [AssignmentSOF301] SET ANSI_NULLS OFF
GO
ALTER DATABASE [AssignmentSOF301] SET ANSI_PADDING OFF
GO
ALTER DATABASE [AssignmentSOF301] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [AssignmentSOF301] SET ARITHABORT OFF
GO
ALTER DATABASE [AssignmentSOF301] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [AssignmentSOF301] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [AssignmentSOF301] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [AssignmentSOF301] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [AssignmentSOF301] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [AssignmentSOF301] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [AssignmentSOF301] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [AssignmentSOF301] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [AssignmentSOF301] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [AssignmentSOF301] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [AssignmentSOF301] SET  ENABLE_BROKER
GO
ALTER DATABASE [AssignmentSOF301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [AssignmentSOF301] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [AssignmentSOF301] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [AssignmentSOF301] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [AssignmentSOF301] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [AssignmentSOF301] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [AssignmentSOF301] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [AssignmentSOF301] SET  READ_WRITE
GO
ALTER DATABASE [AssignmentSOF301] SET RECOVERY FULL
GO
ALTER DATABASE [AssignmentSOF301] SET  MULTI_USER
GO
ALTER DATABASE [AssignmentSOF301] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [AssignmentSOF301] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'AssignmentSOF301', N'ON'
GO
USE [AssignmentSOF301]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/21/2017 23:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Price] [float] NULL,
	[Description] [varchar](100) NULL,
	[Picsrc] [varchar](200) NULL,
	[Cataloge] [varchar](50) NULL,
	[Discount] [int] NULL,
	[Tage] [varchar](50) NULL,
	[delstat] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'ip5', N'Iphone 5', 300, N'Old But Good', N'images\iphone5.png', N'Electronic', 15, N'Electronic', 0)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'PR1', N'Real Shoes', 350, N'Shoes Real With Code', N'images\g2.png', N'Mens', 10, N'Hats', 0)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'SKU1', N'Shoe Nike', 200, N'Nike Shoes For Mens', N'images\s2.jpg', N'Mens', 15, N'Footwear', 0)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'SON36', N'Samsung Galaxy S6', 600, N'Luxury Phone With Ram 4GB, Android 6.5 Battery 4000mah', N'images\s6.jpg', N'Electronic', 10, N'Electronic', 0)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'SP02', N'Red Dress', 300, N'Luxury Dress', N'images/a7.png', N'Womens', 15, N'Clothing', 0)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'SP04', N'Brown T-Shirt', 135, N'T-Shirt For Summerr', N'images\a2.png', N'Mens', 15, N'Clothing', 0)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'SP05', N'Hand Bag', 75, N'Fashion Lady Hand Bag', N'images\w3.png', N'Womens', 30, N'Bags', 0)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'SP056', N'Stripes Office Shirt', 1000, N'Sandal for summer', N'images\g3.png', N'Mens', 14, N'Bags', 0)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'SP07', N'Shirt', 175, N'Office Shirt', N'images/g3.png', N'Mens', 30, N'Clothing', 1)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'SP08', N'Iphone 6', 700, N'New Technology From Apple', N'images/ph2.png', N'Electronic', 10, N'Electronic', 0)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'SP09', N'Iphone 6s', 900, N'The Develope Of Iphone 6', N'images/ph4.png', N'Electronic', 15, N'Electronic', 0)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'SP10', N'Jean Coat', 350, N'Fashion Jean Coat', N'images/4.jpg', N'Mens', 10, N'Clothing', 0)
INSERT [dbo].[Products] ([Code], [Name], [Price], [Description], [Picsrc], [Cataloge], [Discount], [Tage], [delstat]) VALUES (N'SPS1', N'Samsung Galaxy S7', 650, N'Smart Phone With Edge Design Very Modern ', N'images\s7.png', N'Electronic', 10, N'Electronic', 0)
/****** Object:  Table [dbo].[Customers]    Script Date: 10/21/2017 23:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Hoten] [nvarchar](50) NULL,
	[Gioitinh] [bit] NULL,
	[Diachi] [nvarchar](100) NULL,
	[Emai] [nvarchar](50) NULL,
	[Phone] [varchar](11) NULL,
	[Role] [bit] NULL,
	[delstatus] [bit] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customers] ([Username], [Password], [Hoten], [Gioitinh], [Diachi], [Emai], [Phone], [Role], [delstatus]) VALUES (N'admin', N'12345', N'Admin', 0, N'Q3 TPHCM', N'datthps06159@fpt.edu.vn', N'0925489239', 0, 0)
INSERT [dbo].[Customers] ([Username], [Password], [Hoten], [Gioitinh], [Diachi], [Emai], [Phone], [Role], [delstatus]) VALUES (N'dark', N'123456', N'Dark Tean', 0, N'Q12 TPHCM', N'trahoangdat@yahoo.com', N'0124567868', 1, 0)
INSERT [dbo].[Customers] ([Username], [Password], [Hoten], [Gioitinh], [Diachi], [Emai], [Phone], [Role], [delstatus]) VALUES (N'das', N'sadasdadad', N'dsadsa', 0, N'da12d12asa', N'dasdasdaa', N'adasadaad', 1, 0)
INSERT [dbo].[Customers] ([Username], [Password], [Hoten], [Gioitinh], [Diachi], [Emai], [Phone], [Role], [delstatus]) VALUES (N'dat', N'12345', N'darazz', 1, N'Binh Phuong TPHCM', N'ssda@a.vn', N'01516889129', 1, 0)
INSERT [dbo].[Customers] ([Username], [Password], [Hoten], [Gioitinh], [Diachi], [Emai], [Phone], [Role], [delstatus]) VALUES (N'dung', N'dung123', N'Dung Xlz', 1, N'Q7 TP HCM', N'dung@fpt.edu.vn', N'0184848115', 1, 0)
INSERT [dbo].[Customers] ([Username], [Password], [Hoten], [Gioitinh], [Diachi], [Emai], [Phone], [Role], [delstatus]) VALUES (N'hoa', N'dmcs', N'Hoa CS', 0, N'Thu Dau 1', N'hoattps0601@fpt.edu.vn', N'0519881848', 1, 0)
INSERT [dbo].[Customers] ([Username], [Password], [Hoten], [Gioitinh], [Diachi], [Emai], [Phone], [Role], [delstatus]) VALUES (N'phuoc', N'phuoc123', N'Phuoc Lee', 1, N'Q4 TP HCM', N'phuockxps@fpt.edu.vn', N'0154874115', 1, 0)
INSERT [dbo].[Customers] ([Username], [Password], [Hoten], [Gioitinh], [Diachi], [Emai], [Phone], [Role], [delstatus]) VALUES (N'son', N'366', N'SOn 36', 1, N'Binh Duon', N'sonlvps06114@fpt.edu.vn', N'0980707435', 1, 0)
INSERT [dbo].[Customers] ([Username], [Password], [Hoten], [Gioitinh], [Diachi], [Emai], [Phone], [Role], [delstatus]) VALUES (N'tuannung', N'nung123', N'Quoc Nung', 1, N'Becamex Binh Duong', N'tuannung123@fpt.edu.vn', N'0144849115', 1, 0)
INSERT [dbo].[Customers] ([Username], [Password], [Hoten], [Gioitinh], [Diachi], [Emai], [Phone], [Role], [delstatus]) VALUES (N'thai', N'thai123', N'Quang Thai', 1, N'Tien Giang', N'thaittq@fpt.edu.vn', N'0128489488', 1, 0)
/****** Object:  Table [dbo].[bills]    Script Date: 10/21/2017 23:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bills](
	[id_hd] [smallint] IDENTITY(1,1) NOT NULL,
	[usernam] [varchar](50) NULL,
	[userphone] [varchar](11) NULL,
	[useradd] [varchar](50) NULL,
	[usermail] [varchar](50) NULL,
	[paymentmethod] [varchar](50) NULL,
	[orderdate] [smalldatetime] NULL,
	[statusbill] [bit] NULL,
 CONSTRAINT [PK__bills__00B7E65E0AD2A005] PRIMARY KEY CLUSTERED 
(
	[id_hd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[bills] ON
INSERT [dbo].[bills] ([id_hd], [usernam], [userphone], [useradd], [usermail], [paymentmethod], [orderdate], [statusbill]) VALUES (6, N'dat', N'012548985', N'BRVT', N'trahoangdat1998@gmail.com', N'card', CAST(0xA8130370 AS SmallDateTime), 0)
INSERT [dbo].[bills] ([id_hd], [usernam], [userphone], [useradd], [usermail], [paymentmethod], [orderdate], [statusbill]) VALUES (7, N'dat', N'012548985', N'BRVT', N'trahoangdat1998@gmail.com', N'card', CAST(0xA8130371 AS SmallDateTime), 0)
SET IDENTITY_INSERT [dbo].[bills] OFF
/****** Object:  Table [dbo].[billdetails]    Script Date: 10/21/2017 23:26:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[billdetails](
	[idbilldetail] [smallint] IDENTITY(1,1) NOT NULL,
	[id_hd] [smallint] NULL,
	[Code] [varchar](50) NULL,
	[quantity] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[idbilldetail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[billdetails] ON
INSERT [dbo].[billdetails] ([idbilldetail], [id_hd], [Code], [quantity]) VALUES (40, 6, N'Ip5', 5)
INSERT [dbo].[billdetails] ([idbilldetail], [id_hd], [Code], [quantity]) VALUES (41, 7, N'Ip5', 5)
SET IDENTITY_INSERT [dbo].[billdetails] OFF
/****** Object:  StoredProcedure [dbo].[sp_insbill]    Script Date: 10/21/2017 23:26:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_insbill]
(@username varchar(50),@userphone varchar(11),@useradd varchar(50),@usermail varchar(50),
@paymentmethod varchar(50),@Code varchar(50),@Quantity smallint)
as
begin
	Declare @oderdate smalldatetime
	Set @oderdate =(SELECT CONVERT (smalldatetime, GETDATE()))
	IF NOT EXISTS (Select * from bills where usernam like @username and orderdate like @oderdate)
		begin
			Declare @mamoi smallint
			Insert into bills values(@username,@userphone,@useradd,@usermail,@paymentmethod,@oderdate,'false')
			Set @mamoi= (SELECT SCOPE_IDENTITY() AS NewID)
			insert into billdetails values(@mamoi,@Code,@Quantity)
		end
	else
		begin 
			Declare @manew smallint
			Set @manew=(Select id_hd from bills where usernam like @username and orderdate like @oderdate)
			Insert into billdetails values(@manew,@Code,@Quantity)
		end
end
GO
/****** Object:  ForeignKey [FK_billdetails_bills]    Script Date: 10/21/2017 23:26:31 ******/
ALTER TABLE [dbo].[billdetails]  WITH CHECK ADD  CONSTRAINT [FK_billdetails_bills] FOREIGN KEY([id_hd])
REFERENCES [dbo].[bills] ([id_hd])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[billdetails] CHECK CONSTRAINT [FK_billdetails_bills]
GO
