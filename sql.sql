USE [master]
GO
/****** Object:  Database [G7_CarSpeed]    Script Date: 12/13/2023 1:02:20 PM ******/
CREATE DATABASE [G7_CarSpeed]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'G7_CarSpeed', FILENAME = N'D:\Programs\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\G7_CarSpeed.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'G7_CarSpeed_log', FILENAME = N'D:\Programs\SQL\MSSQL15.MSSQLSERVER\MSSQL\DATA\G7_CarSpeed_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [G7_CarSpeed] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [G7_CarSpeed].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [G7_CarSpeed] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET ARITHABORT OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [G7_CarSpeed] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [G7_CarSpeed] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET  ENABLE_BROKER 
GO
ALTER DATABASE [G7_CarSpeed] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [G7_CarSpeed] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET RECOVERY FULL 
GO
ALTER DATABASE [G7_CarSpeed] SET  MULTI_USER 
GO
ALTER DATABASE [G7_CarSpeed] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [G7_CarSpeed] SET DB_CHAINING OFF 
GO
ALTER DATABASE [G7_CarSpeed] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [G7_CarSpeed] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [G7_CarSpeed] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [G7_CarSpeed] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'G7_CarSpeed', N'ON'
GO
ALTER DATABASE [G7_CarSpeed] SET QUERY_STORE = OFF
GO
USE [G7_CarSpeed]
GO
/****** Object:  Table [dbo].[Chi_Tiet_Hoa_Don]    Script Date: 12/13/2023 1:02:20 PM ******/
USE [G7_CarSpeed]
go
USE [G7_CarSpeed]
go
USE [G7_CarSpeed]
go
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chi_Tiet_Hoa_Don](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Hoa_Don] [int] NULL,
	[ID_CTKM] [int] NULL,
	[ID_CTSP] [int] NULL,
	[Ma_HD] [varchar](20) NULL,
	[Tong_Tien] [decimal](10, 2) NULL,
	[Loai_Thanh_Toan] [nvarchar](500) NULL,
	[So_Luong] [int] NULL,
	[Ma_SP] [varchar](20) NULL,
	[Gia] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Chi_Tiet_Khuyen_Mai]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chi_Tiet_Khuyen_Mai](
	[ID] [int] NOT NULL,
	[ID_SP] [int] NULL,
	[ID_KM] [int] NULL,
	[Ma_KM] [varchar](20) NULL,
	[Hinh_Thuc] [varchar](50) NULL,
	[Gia_Tri] [decimal](10, 2) NULL,
	[So_Luong] [int] NULL,
	[DK_Ap_Dung] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Chi_Tiet_San_Pham]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chi_Tiet_San_Pham](
	[ID] [int] NOT NULL,
	[ID_SP] [int] NULL,
	[ID_Mau_Sac] [int] NULL,
	[ID_Thiet_Ke] [int] NULL,
	[ID_Noi_That] [int] NULL,
	[ID_Dong_Xe] [int] NULL,
	[ID_Phan_Khuc_Xe] [int] NULL,
	[ID_Dong_Co] [int] NULL,
	[ID_Hop_So] [int] NULL,
	[Ten] [varchar](100) NULL,
	[Ma_SP] [varchar](20) NULL,
	[Gioi_Thieu] [nvarchar](500) NULL,
	[Ngay_Ban] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customer]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[id] [int] NOT NULL,
	[fullname] [varchar](50) NOT NULL,
	[email] [varchar](150) NOT NULL,
	[phone_number] [varchar](20) NULL,
	[birthday] [date] NULL,
	[address] [varchar](200) NULL,
	[password] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DiaChi](
	[ID] [int] NOT NULL,
	[ID_USER] [int] NULL,
	[Ten_Duong] [varchar](255) NULL,
	[So_Nha] [varchar](50) NULL,
	[Thanh_Pho] [varchar](100) NULL,
	[Ten_Phuong] [varchar](100) NULL,
	[Ma_Vung] [varchar](20) NULL,
	[Quoc_Gia] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dong_Co]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dong_Co](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Mo_Ta] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dong_Xe]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dong_Xe](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Mo_Ta] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[Mo_Ta] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoa_Don]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hoa_Don](
	[ID] [int] NOT NULL,
	[ID_User] [int] NULL,
	[ID_Khach_Hang] [int] NULL,
	[Ngay_Tao] [date] NULL,
	[Ma_HD] [varchar](20) NULL,
	[Trang_Thai] [varchar](50) NULL,
	[Thong_Tin_Giao_Hang] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hop_So]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hop_So](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Mo_Ta] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khach_Hang]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Khach_Hang](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[Dia_Chi] [int] NULL,
	[Email] [varchar](100) NULL,
	[SDT] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kho_Hang]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kho_Hang](
	[ID] [int] NOT NULL,
	[ID_SP] [int] NULL,
	[Ngay_Nhap_Kho] [date] NULL,
	[Ngay_Xuat_Kho] [date] NULL,
	[Trang_Thai] [nvarchar](50) NULL,
	[So_Luong_SP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khuyen_Mai]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Khuyen_Mai](
	[ID] [int] NOT NULL,
	[Ma_KM] [varchar](20) NULL,
	[Ten] [varchar](100) NULL,
	[Trang_Thai] [varchar](50) NULL,
	[Ngay_Bat_Dau] [date] NULL,
	[Ngay_Ket_Thuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mau_Sac]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mau_Sac](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Mo_Ta] [nvarchar](500) NULL,
	[Trang_Thai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Noi_That]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noi_That](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Mo_Ta] [nvarchar](500) NULL,
	[Trang_Thai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phan_Khuc_Xe]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phan_Khuc_Xe](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Mo_Ta] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[San_Pham]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[San_Pham](
	[ID] [int] NOT NULL,
	[ID_Hang] [int] NULL,
	[Ma_SP] [varchar](20) NULL,
	[Ten] [nvarchar](100) NULL,
	[Gia_Ban] [decimal](10, 2) NULL,
	[Gia_Nhap] [decimal](10, 2) NULL,
	[Mo_Ta] [nvarchar](500) NULL,
	[Trang_Thai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Thiet_Ke]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thiet_Ke](
	[ID] [int] NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[Mo_Ta] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/13/2023 1:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](255) NULL,
	[Ten] [nvarchar](100) NULL,
	[Vai_Tro] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Ngay_Sinh] [date] NULL,
	[SDT] [varchar](15) NULL,
	[Dia_Chi] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Chi_Tiet_Hoa_Don] on
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([ID], [ID_Hoa_Don], [ID_CTKM], [ID_CTSP], [Ma_HD], [Tong_Tien], [Loai_Thanh_Toan], [So_Luong], [Ma_SP], [Gia]) VALUES (1, 1, 1, 1, N'HD123456', CAST(1200000.00 AS Decimal(10, 2)), N'The_Ngan-Hang', 1, N'SP001', CAST(1200000.00 AS Decimal(10, 2)))
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([ID], [ID_Hoa_Don], [ID_CTKM], [ID_CTSP], [Ma_HD], [Tong_Tien], [Loai_Thanh_Toan], [So_Luong], [Ma_SP], [Gia]) VALUES (2, 2, 2, 2, N'HD789012', CAST(1100000.00 AS Decimal(10, 2)), N'Tien_Mat', 2, N'SP002', CAST(550000.00 AS Decimal(10, 2)))
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([ID], [ID_Hoa_Don], [ID_CTKM], [ID_CTSP], [Ma_HD], [Tong_Tien], [Loai_Thanh_Toan], [So_Luong], [Ma_SP], [Gia]) VALUES (3, 3, NULL, 3, N'HD345678', CAST(1500000.00 AS Decimal(10, 2)), N'Chuyen_Khoan', 1, N'SP003', CAST(1500000.00 AS Decimal(10, 2)))
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([ID], [ID_Hoa_Don], [ID_CTKM], [ID_CTSP], [Ma_HD], [Tong_Tien], [Loai_Thanh_Toan], [So_Luong], [Ma_SP], [Gia]) VALUES (4, 4, 3, 4, N'HD901234', CAST(1050000.00 AS Decimal(10, 2)), N'The_Ngan-Hang', 3, N'SP004', CAST(315000.00 AS Decimal(10, 2)))
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([ID], [ID_Hoa_Don], [ID_CTKM], [ID_CTSP], [Ma_HD], [Tong_Tien], [Loai_Thanh_Toan], [So_Luong], [Ma_SP], [Gia]) VALUES (5, 5, NULL, 5, N'HD567890', CAST(2000000.00 AS Decimal(10, 2)), N'Tien_Mat', 1, N'SP005', CAST(2000000.00 AS Decimal(10, 2)))
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([ID], [ID_Hoa_Don], [ID_CTKM], [ID_CTSP], [Ma_HD], [Tong_Tien], [Loai_Thanh_Toan], [So_Luong], [Ma_SP], [Gia]) VALUES (6, 6, 4, 6, N'HD123ABC', CAST(1800000.00 AS Decimal(10, 2)), N'The_Ngan-Hang', 2, N'SP006', CAST(1600000.00 AS Decimal(10, 2)))
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([ID], [ID_Hoa_Don], [ID_CTKM], [ID_CTSP], [Ma_HD], [Tong_Tien], [Loai_Thanh_Toan], [So_Luong], [Ma_SP], [Gia]) VALUES (7, 7, NULL, 7, N'HD789XYZ', CAST(1900000.00 AS Decimal(10, 2)), N'Tien_Mat', 1, N'SP007', CAST(1900000.00 AS Decimal(10, 2)))
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([ID], [ID_Hoa_Don], [ID_CTKM], [ID_CTSP], [Ma_HD], [Tong_Tien], [Loai_Thanh_Toan], [So_Luong], [Ma_SP], [Gia]) VALUES (8, 8, 5, 8, N'HD345LMN', CAST(1250000.00 AS Decimal(10, 2)), N'Chuyen_Khoan', 2, N'SP008', CAST(2200000.00 AS Decimal(10, 2)))
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([ID], [ID_Hoa_Don], [ID_CTKM], [ID_CTSP], [Ma_HD], [Tong_Tien], [Loai_Thanh_Toan], [So_Luong], [Ma_SP], [Gia]) VALUES (9, 9, NULL, 9, N'HD901PQR', CAST(1350000.00 AS Decimal(10, 2)), N'The_Ngan-Hang', 1, N'SP009', CAST(1350000.00 AS Decimal(10, 2)))
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([ID], [ID_Hoa_Don], [ID_CTKM], [ID_CTSP], [Ma_HD], [Tong_Tien], [Loai_Thanh_Toan], [So_Luong], [Ma_SP], [Gia]) VALUES (10, 10, 6, 10, N'HD567UVW', CAST(1550000.00 AS Decimal(10, 2)), N'Chuyen_Khoan', 2, N'SP010', CAST(1400000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Chi_Tiet_Hoa_Don] off
GO
INSERT [dbo].[Chi_Tiet_Khuyen_Mai] ([ID], [ID_SP], [ID_KM], [Ma_KM], [Hinh_Thuc], [Gia_Tri], [So_Luong], [DK_Ap_Dung]) VALUES (1, 1, 1, N'KM123', N'Giam_%', CAST(10.00 AS Decimal(10, 2)), 5, N'2000000')
INSERT [dbo].[Chi_Tiet_Khuyen_Mai] ([ID], [ID_SP], [ID_KM], [Ma_KM], [Hinh_Thuc], [Gia_Tri], [So_Luong], [DK_Ap_Dung]) VALUES (2, 2, 2, N'KM456', N'Giam_%', CAST(5.00 AS Decimal(10, 2)), 10, N'2000000')
INSERT [dbo].[Chi_Tiet_Khuyen_Mai] ([ID], [ID_SP], [ID_KM], [Ma_KM], [Hinh_Thuc], [Gia_Tri], [So_Luong], [DK_Ap_Dung]) VALUES (3, 3, 3, N'KM789', N'Giam_%', CAST(10.00 AS Decimal(10, 2)), 3, N'2000000')
INSERT [dbo].[Chi_Tiet_Khuyen_Mai] ([ID], [ID_SP], [ID_KM], [Ma_KM], [Hinh_Thuc], [Gia_Tri], [So_Luong], [DK_Ap_Dung]) VALUES (4, 4, 4, N'KMABC', N'Giam_%', CAST(7.00 AS Decimal(10, 2)), 2, N'2000000')
INSERT [dbo].[Chi_Tiet_Khuyen_Mai] ([ID], [ID_SP], [ID_KM], [Ma_KM], [Hinh_Thuc], [Gia_Tri], [So_Luong], [DK_Ap_Dung]) VALUES (5, 5, 5, N'KMXYZ', N'Giam_vnd', CAST(200000.00 AS Decimal(10, 2)), 8, N'2000000')
INSERT [dbo].[Chi_Tiet_Khuyen_Mai] ([ID], [ID_SP], [ID_KM], [Ma_KM], [Hinh_Thuc], [Gia_Tri], [So_Luong], [DK_Ap_Dung]) VALUES (6, 6, 6, N'KMLMN', N'Giam_%', CAST(9.00 AS Decimal(10, 2)), 5, N'2000000')
INSERT [dbo].[Chi_Tiet_Khuyen_Mai] ([ID], [ID_SP], [ID_KM], [Ma_KM], [Hinh_Thuc], [Gia_Tri], [So_Luong], [DK_Ap_Dung]) VALUES (7, 7, 7, N'KMXYZ', N'Giam_%', CAST(8.00 AS Decimal(10, 2)), 4, N'2000000')
INSERT [dbo].[Chi_Tiet_Khuyen_Mai] ([ID], [ID_SP], [ID_KM], [Ma_KM], [Hinh_Thuc], [Gia_Tri], [So_Luong], [DK_Ap_Dung]) VALUES (8, 8, 8, N'KM456', N'Giam_%', CAST(6.00 AS Decimal(10, 2)), 6, N'2000000')
INSERT [dbo].[Chi_Tiet_Khuyen_Mai] ([ID], [ID_SP], [ID_KM], [Ma_KM], [Hinh_Thuc], [Gia_Tri], [So_Luong], [DK_Ap_Dung]) VALUES (9, 9, 9, N'KMABC', N'Giam_vnd', CAST(150000.00 AS Decimal(10, 2)), 7, N'2000000')
INSERT [dbo].[Chi_Tiet_Khuyen_Mai] ([ID], [ID_SP], [ID_KM], [Ma_KM], [Hinh_Thuc], [Gia_Tri], [So_Luong], [DK_Ap_Dung]) VALUES (10, 10, 10, N'KMPQR', N'Giam_%', CAST(10.00 AS Decimal(10, 2)), 9, N'2000000')
GO
INSERT [dbo].[Chi_Tiet_San_Pham] ([ID], [ID_SP], [ID_Mau_Sac], [ID_Thiet_Ke], [ID_Noi_That], [ID_Dong_Xe], [ID_Phan_Khuc_Xe], [ID_Dong_Co], [ID_Hop_So], [Ten], [Ma_SP], [Gioi_Thieu], [Ngay_Ban]) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, N'Toyota Camry 2023', N'SP001', N'Xe ô tô Toyota Camry 2023, màu đen, thiết kế hiện đại', CAST(N'2023-01-10' AS Date))
INSERT [dbo].[Chi_Tiet_San_Pham] ([ID], [ID_SP], [ID_Mau_Sac], [ID_Thiet_Ke], [ID_Noi_That], [ID_Dong_Xe], [ID_Phan_Khuc_Xe], [ID_Dong_Co], [ID_Hop_So], [Ten], [Ma_SP], [Gioi_Thieu], [Ngay_Ban]) VALUES (2, 2, 2, 2, 2, 2, 2, 2, 2, N'Honda Civic 2023', N'SP002', N'Xe ô tô Honda Civic 2023, màu trắng, thiết kế thể thao', CAST(N'2023-02-15' AS Date))
INSERT [dbo].[Chi_Tiet_San_Pham] ([ID], [ID_SP], [ID_Mau_Sac], [ID_Thiet_Ke], [ID_Noi_That], [ID_Dong_Xe], [ID_Phan_Khuc_Xe], [ID_Dong_Co], [ID_Hop_So], [Ten], [Ma_SP], [Gioi_Thieu], [Ngay_Ban]) VALUES (3, 3, 3, 3, 3, 3, 3, 3, 3, N'Ford Escape 2023', N'SP003', N'Xe ô tô Ford Escape 2023, màu xanh, nội thất sang trọng', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[Chi_Tiet_San_Pham] ([ID], [ID_SP], [ID_Mau_Sac], [ID_Thiet_Ke], [ID_Noi_That], [ID_Dong_Xe], [ID_Phan_Khuc_Xe], [ID_Dong_Co], [ID_Hop_So], [Ten], [Ma_SP], [Gioi_Thieu], [Ngay_Ban]) VALUES (4, 4, 4, 4, 4, 4, 4, 4, 4, N'Chevrolet Cruze 2023', N'SP004', N'Xe ô tô Chevrolet Cruze 2023, màu đỏ, động cơ mạnh mẽ', CAST(N'2023-04-25' AS Date))
INSERT [dbo].[Chi_Tiet_San_Pham] ([ID], [ID_SP], [ID_Mau_Sac], [ID_Thiet_Ke], [ID_Noi_That], [ID_Dong_Xe], [ID_Phan_Khuc_Xe], [ID_Dong_Co], [ID_Hop_So], [Ten], [Ma_SP], [Gioi_Thieu], [Ngay_Ban]) VALUES (5, 5, 5, 5, 5, 5, 5, 5, 5, N'BMW X5 2023', N'SP005', N'Xe ô tô BMW X5 2023, màu đen, thiết kế sang trọng', CAST(N'2023-05-30' AS Date))
INSERT [dbo].[Chi_Tiet_San_Pham] ([ID], [ID_SP], [ID_Mau_Sac], [ID_Thiet_Ke], [ID_Noi_That], [ID_Dong_Xe], [ID_Phan_Khuc_Xe], [ID_Dong_Co], [ID_Hop_So], [Ten], [Ma_SP], [Gioi_Thieu], [Ngay_Ban]) VALUES (6, 6, 6, 6, 6, 6, 6, 6, 6, N'Mercedes-Benz E-Class 2023', N'SP006', N'Xe ô tô Mercedes-Benz E-Class 2023, màu trắng, nội thất cao cấp', CAST(N'2023-06-05' AS Date))
INSERT [dbo].[Chi_Tiet_San_Pham] ([ID], [ID_SP], [ID_Mau_Sac], [ID_Thiet_Ke], [ID_Noi_That], [ID_Dong_Xe], [ID_Phan_Khuc_Xe], [ID_Dong_Co], [ID_Hop_So], [Ten], [Ma_SP], [Gioi_Thieu], [Ngay_Ban]) VALUES (7, 7, 7, 7, 7, 7, 7, 7, 7, N'Audi Q7 2023', N'SP007', N'Xe ô tô Audi Q7 2023, màu xám, nội thất tiện nghi', CAST(N'2023-07-10' AS Date))
INSERT [dbo].[Chi_Tiet_San_Pham] ([ID], [ID_SP], [ID_Mau_Sac], [ID_Thiet_Ke], [ID_Noi_That], [ID_Dong_Xe], [ID_Phan_Khuc_Xe], [ID_Dong_Co], [ID_Hop_So], [Ten], [Ma_SP], [Gioi_Thieu], [Ngay_Ban]) VALUES (8, 8, 8, 8, 8, 8, 8, 8, 8, N'Hyundai Tucson 2023', N'SP008', N'Xe ô tô Hyundai Tucson 2023, màu vàng, động cơ tiết kiệm nhiên liệu', CAST(N'2023-08-15' AS Date))
INSERT [dbo].[Chi_Tiet_San_Pham] ([ID], [ID_SP], [ID_Mau_Sac], [ID_Thiet_Ke], [ID_Noi_That], [ID_Dong_Xe], [ID_Phan_Khuc_Xe], [ID_Dong_Co], [ID_Hop_So], [Ten], [Ma_SP], [Gioi_Thieu], [Ngay_Ban]) VALUES (9, 9, 9, 9, 9, 9, 9, 9, 9, N'Kia Sorento 2023', N'SP009', N'Xe ô tô Kia Sorento 2023, màu nâu, nội thất thoải mái', CAST(N'2023-09-20' AS Date))
INSERT [dbo].[Chi_Tiet_San_Pham] ([ID], [ID_SP], [ID_Mau_Sac], [ID_Thiet_Ke], [ID_Noi_That], [ID_Dong_Xe], [ID_Phan_Khuc_Xe], [ID_Dong_Co], [ID_Hop_So], [Ten], [Ma_SP], [Gioi_Thieu], [Ngay_Ban]) VALUES (10, 10, 10, 10, 10, 10, 10, 10, 10, N'Subaru Outback 2023', N'SP010', N'Xe ô tô Subaru Outback 2023, màu đen, động cơ mạnh mẽ', CAST(N'2023-10-25' AS Date))
GO
INSERT [dbo].[customer] ([id], [fullname], [email], [phone_number], [birthday], [address], [password]) VALUES (1, N'John Doe', N'john.doe@example.com', N'1234567890', CAST(N'1990-01-01' AS Date), N'123 Main St, City', N'password1')
INSERT [dbo].[customer] ([id], [fullname], [email], [phone_number], [birthday], [address], [password]) VALUES (2, N'Jane Smith', N'jane.smith@example.com', N'9876543210', CAST(N'1985-05-15' AS Date), N'456 Oak St, Town', N'password2')
INSERT [dbo].[customer] ([id], [fullname], [email], [phone_number], [birthday], [address], [password]) VALUES (3, N'Alice Johnson', N'alice.johnson@example.com', N'5556667777', CAST(N'1995-09-30' AS Date), N'789 Pine St, Village', N'password3')
INSERT [dbo].[customer] ([id], [fullname], [email], [phone_number], [birthday], [address], [password]) VALUES (4, N'Bob Williams', N'bob.williams@example.com', N'1112223333', CAST(N'1982-07-12' AS Date), N'101 Elm St, Suburb', N'password4')
INSERT [dbo].[customer] ([id], [fullname], [email], [phone_number], [birthday], [address], [password]) VALUES (5, N'Eva Davis', N'eva.davis@example.com', N'4445556666', CAST(N'1988-03-25' AS Date), N'202 Maple St, City', N'password5')
INSERT [dbo].[customer] ([id], [fullname], [email], [phone_number], [birthday], [address], [password]) VALUES (6, N'Michael Brown', N'michael.brown@example.com', N'9998887777', CAST(N'1998-11-08' AS Date), N'303 Cedar St, Town', N'password6')
INSERT [dbo].[customer] ([id], [fullname], [email], [phone_number], [birthday], [address], [password]) VALUES (7, N'Sophia Lee', N'sophia.lee@example.com', N'3334445555', CAST(N'1993-06-17' AS Date), N'404 Oak St, Village', N'password7')
INSERT [dbo].[customer] ([id], [fullname], [email], [phone_number], [birthday], [address], [password]) VALUES (8, N'David Miller', N'david.miller@example.com', N'7778889999', CAST(N'1980-04-03' AS Date), N'505 Pine St, Suburb', N'password8')
INSERT [dbo].[customer] ([id], [fullname], [email], [phone_number], [birthday], [address], [password]) VALUES (9, N'Olivia Wilson', N'olivia.wilson@example.com', N'2223334444', CAST(N'1997-02-14' AS Date), N'606 Elm St, City', N'password9')
INSERT [dbo].[customer] ([id], [fullname], [email], [phone_number], [birthday], [address], [password]) VALUES (10, N'William Taylor', N'william.taylor@example.com', N'6667778889', CAST(N'1987-08-23' AS Date), N'707 Maple St, Town', N'password10')
GO
INSERT [dbo].[DiaChi] ([ID], [ID_USER], [Ten_Duong], [So_Nha], [Thanh_Pho], [Ten_Phuong], [Ma_Vung], [Quoc_Gia]) VALUES (1, 1001, N'Le Loi', N'123', N'Ho Chi Minh', N'Phuong 1', N'700000', N'Vietnam')
INSERT [dbo].[DiaChi] ([ID], [ID_USER], [Ten_Duong], [So_Nha], [Thanh_Pho], [Ten_Phuong], [Ma_Vung], [Quoc_Gia]) VALUES (2, 1002, N'Nguyen Trai', N'456', N'Hanoi', N'Phuong 2', N'100000', N'Vietnam')
INSERT [dbo].[DiaChi] ([ID], [ID_USER], [Ten_Duong], [So_Nha], [Thanh_Pho], [Ten_Phuong], [Ma_Vung], [Quoc_Gia]) VALUES (3, NULL, N'Dien Bien Phu', N'789', N'Da Nang', N'Phuong 3', N'550000', N'Vietnam')
INSERT [dbo].[DiaChi] ([ID], [ID_USER], [Ten_Duong], [So_Nha], [Thanh_Pho], [Ten_Phuong], [Ma_Vung], [Quoc_Gia]) VALUES (4, 1003, N'Tran Hung Dao', N'101', N'Hue', N'Phuong 4', N'450000', N'Vietnam')
INSERT [dbo].[DiaChi] ([ID], [ID_USER], [Ten_Duong], [So_Nha], [Thanh_Pho], [Ten_Phuong], [Ma_Vung], [Quoc_Gia]) VALUES (5, 1004, N'Ly Thai To', N'555', N'Can Tho', N'Phuong 5', N'200000', N'Vietnam')
INSERT [dbo].[DiaChi] ([ID], [ID_USER], [Ten_Duong], [So_Nha], [Thanh_Pho], [Ten_Phuong], [Ma_Vung], [Quoc_Gia]) VALUES (6, NULL, N'Le Duan', N'888', N'Vung Tau', N'Phuong 6', N'780000', N'Vietnam')
INSERT [dbo].[DiaChi] ([ID], [ID_USER], [Ten_Duong], [So_Nha], [Thanh_Pho], [Ten_Phuong], [Ma_Vung], [Quoc_Gia]) VALUES (7, 1005, N'Hoang Van Thu', N'222', N'Nha Trang', N'Phuong 7', N'570000', N'Vietnam')
INSERT [dbo].[DiaChi] ([ID], [ID_USER], [Ten_Duong], [So_Nha], [Thanh_Pho], [Ten_Phuong], [Ma_Vung], [Quoc_Gia]) VALUES (8, 1006, N'Phan Chu Trinh', N'333', N'Bien Hoa', N'Phuong 8', N'710000', N'Vietnam')
INSERT [dbo].[DiaChi] ([ID], [ID_USER], [Ten_Duong], [So_Nha], [Thanh_Pho], [Ten_Phuong], [Ma_Vung], [Quoc_Gia]) VALUES (9, NULL, N'Cao Thang', N'777', N'Can Tho', N'Phuong 9', N'200000', N'Vietnam')
INSERT [dbo].[DiaChi] ([ID], [ID_USER], [Ten_Duong], [So_Nha], [Thanh_Pho], [Ten_Phuong], [Ma_Vung], [Quoc_Gia]) VALUES (10, 1007, N'Pham Ngu Lao', N'999', N'Quy Nhon', N'Phuong 10', N'460000', N'Vietnam')
GO
INSERT [dbo].[Dong_Co] ([ID], [Ten], [Mo_Ta]) VALUES (1, N'Động Cơ Xăng', N'Động cơ sử dụng nhiên liệu xăng, tiết kiệm và phổ biến')
INSERT [dbo].[Dong_Co] ([ID], [Ten], [Mo_Ta]) VALUES (2, N'Động Cơ Dầu Diesel', N'Động cơ sử dụng nhiên liệu dầu diesel, mạnh mẽ và tiết kiệm nhiên liệu')
INSERT [dbo].[Dong_Co] ([ID], [Ten], [Mo_Ta]) VALUES (3, N'Động Cơ Hybrid', N'Động cơ kết hợp giữa nhiên liệu xăng và điện, tiết kiệm nhiên liệu')
INSERT [dbo].[Dong_Co] ([ID], [Ten], [Mo_Ta]) VALUES (4, N'Động Cơ Điện', N'Động cơ sử dụng điện, không gây khí thải và thân thiện với môi trường')
INSERT [dbo].[Dong_Co] ([ID], [Ten], [Mo_Ta]) VALUES (5, N'Động Cơ Xăng Turbo', N'Động cơ xăng được trang bị công nghệ turbo, tăng cường công suất')
INSERT [dbo].[Dong_Co] ([ID], [Ten], [Mo_Ta]) VALUES (6, N'Động Cơ Hybrid Plug-in', N'Động cơ kết hợp nhiên liệu xăng và điện, có thể sạc từ nguồn điện')
INSERT [dbo].[Dong_Co] ([ID], [Ten], [Mo_Ta]) VALUES (7, N'Động Cơ Xăng Tăng Áp', N'Động cơ xăng với công nghệ tăng áp, đạt hiệu suất cao')
INSERT [dbo].[Dong_Co] ([ID], [Ten], [Mo_Ta]) VALUES (8, N'Động Cơ Điện Pure Electric', N'Động cơ sử dụng điện hoàn toàn, không sử dụng nhiên liệu')
INSERT [dbo].[Dong_Co] ([ID], [Ten], [Mo_Ta]) VALUES (9, N'Động Cơ Hybrid Micro', N'Động cơ hybrid nhỏ gọn và linh hoạt')
INSERT [dbo].[Dong_Co] ([ID], [Ten], [Mo_Ta]) VALUES (10, N'Động Cơ Khác', N'Các loại động cơ đa dạng không thuộc các loại trên')
GO
INSERT [dbo].[Dong_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (1, N'Dòng Xe Sedan', N'Dòng xe sedan phổ biến, thích hợp cho gia đình và công việc hàng ngày')
INSERT [dbo].[Dong_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (2, N'Dòng Xe SUV', N'Dòng xe SUV chủ lực, đa dụng và phù hợp với mọi loại địa hình')
INSERT [dbo].[Dong_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (3, N'Dòng Xe Crossover', N'Dòng xe crossover kết hợp giữa dòng sedan và SUV, linh hoạt và tiện ích')
INSERT [dbo].[Dong_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (4, N'Dòng Xe Coupe', N'Dòng xe coupe thiết kế thể thao và năng động, phù hợp cho người trẻ')
INSERT [dbo].[Dong_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (5, N'Dòng Xe Hatchback', N'Dòng xe hatchback linh hoạt, phù hợp cho di chuyển trong thành phố')
INSERT [dbo].[Dong_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (6, N'Dòng Xe Mô Tô', N'Dòng xe mô tô cá tính, thích hợp cho người yêu thích tốc độ')
INSERT [dbo].[Dong_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (7, N'Dòng Xe Công Nghiệp', N'Dòng xe công nghiệp chuyên dụng, phục vụ cho các công việc đặc biệt')
INSERT [dbo].[Dong_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (8, N'Dòng Xe Điện', N'Dòng xe sử dụng động cơ điện, thân thiện với môi trường')
INSERT [dbo].[Dong_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (9, N'Dòng Xe Hybrid', N'Dòng xe hybrid kết hợp giữa động cơ xăng và điện, tiết kiệm nhiên liệu')
INSERT [dbo].[Dong_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (10, N'Dòng Xe Khác', N'Các dòng xe đa dạng khác không thuộc các phân khúc truyền thống')
GO
INSERT [dbo].[Hang] ([ID], [Ten], [Mo_Ta]) VALUES (1, N'Toyota', N'Hãng xe Toyota đến từ Nhật Bản có mặt tại Việt Nam từ năm 1995, được mệnh danh là “Thương hiệu xe ô tô được yêu mến nhất tại Việt Nam”.')
INSERT [dbo].[Hang] ([ID], [Ten], [Mo_Ta]) VALUES (2, N'Honda', N'Honda là hãng xe đến từ Nhật Bản, có mặt tại Việt Nam trên 20 năm, kể từ năm 1996 và chính thức được Bộ Kế Hoạch và Đầu Tư Việt Nam cấp giấy phép được sản xuất và lắp ráp xe ô tô tại Việt Nam vào năm 2005. ')
INSERT [dbo].[Hang] ([ID], [Ten], [Mo_Ta]) VALUES (3, N'Ford', N'Trong các hãng xe ô tô ở Việt Nam, Ford là thương hiệu xe hơi đến từ Mỹ và đã có mặt tại Việt Nam từ năm 1995.')
INSERT [dbo].[Hang] ([ID], [Ten], [Mo_Ta]) VALUES (4, N'Chevrolet', N'Chevrolet là một thương hiệu ô tô thuộc tập đoàn General Motors Corporation (GM) đến từ Mỹ. ')
INSERT [dbo].[Hang] ([ID], [Ten], [Mo_Ta]) VALUES (5, N'BMW', N'Đây là thương hiệu xe hơi đặc trưng với phong cách thể thao, đẳng cấp đến từ Đức. Hãng xe BMW chính thức có mặt tại Việt Nam từ năm 1994, qua hợp đồng với xí nghiệp sản xuất ô tô Hòa Bình. Sau đó, Euro Auto chính thức dành được quyền nhập khẩu xe BMW tại thị trường Việt Nam. Tuy nhiên, do vướng mắc về pháp lý nên Thaco trở thành đơn vị phân phối mới của thương hiệu xe sang này từ năm 2018.')
INSERT [dbo].[Hang] ([ID], [Ten], [Mo_Ta]) VALUES (6, N'Mercedes Benz', N'Mercedes Benz là hãng xe sang có thương hiệu đến từ Đức. Hiện đã có nhà máy lắp ráp và sản xuất ô tô tại Việt Nam với phụ tùng và linh kiện nhập khẩu từ Đức.')
INSERT [dbo].[Hang] ([ID], [Ten], [Mo_Ta]) VALUES (7, N'Audi', N'Năm 2008, hãng xe Audi là thương hiệu xe sang đến từ Đức chính thức nhập khẩu xe nguyên chiếc vào thị trường Việt Nam. ')
INSERT [dbo].[Hang] ([ID], [Ten], [Mo_Ta]) VALUES (8, N'Hyundai', N'Hyundai là thương hiệu xe hơi đến từ Hàn Quốc và được thành lập tại Việt Nam vào tháng 6/2009. Hiện nay, nhà máy sản xuất và lắp ráp ô tô Hyundai tại Ninh Bình là một trong những nhà máy lớn nhất Đông Nam Á.')
INSERT [dbo].[Hang] ([ID], [Ten], [Mo_Ta]) VALUES (9, N'Kia', N'Hãng xe Kia mang thương hiệu Hàn Quốc chính thức bước chân vào thị trường Việt Nam vào ngày 4/4/2007 qua sự ký kết hợp tác giữa Trường Hải Group và tập đoàn Kia Motors (Hàn Quốc). Đến tháng 06/2007, Trường Hải Group chính thức triển khai xây dựng nhà máy sản xuất và lắp ráp xe ô tô tại tỉnh Quảng Nam, Việt Nam.')
INSERT [dbo].[Hang] ([ID], [Ten], [Mo_Ta]) VALUES (10, N'Subaru', N'Subaru là hãng xe đến từ Nhật Bản, hiện đang kinh doanh theo hình thức nhập khẩu xe ô tô nguyên chiếc từ Thái Lan vào thị trường Việt Nam.')
GO
INSERT [dbo].[Hoa_Don] ([ID], [ID_User], [ID_Khach_Hang], [Ngay_Tao], [Ma_HD], [Trang_Thai], [Thong_Tin_Giao_Hang]) VALUES (1, 1001, 1, CAST(N'2023-01-10' AS Date), N'HD123456', N'Chua_Thanh_Toan', N'Giao hang tai dia chi A')
INSERT [dbo].[Hoa_Don] ([ID], [ID_User], [ID_Khach_Hang], [Ngay_Tao], [Ma_HD], [Trang_Thai], [Thong_Tin_Giao_Hang]) VALUES (2, 1002, 2, CAST(N'2023-02-15' AS Date), N'HD789012', N'Da_Thanh_Toan', N'Giao hang tai dia chi B')
INSERT [dbo].[Hoa_Don] ([ID], [ID_User], [ID_Khach_Hang], [Ngay_Tao], [Ma_HD], [Trang_Thai], [Thong_Tin_Giao_Hang]) VALUES (3, 1003, 3, CAST(N'2023-03-20' AS Date), N'HD345678', N'Chua_Thanh_Toan', N'Giao hang tai dia chi C')
INSERT [dbo].[Hoa_Don] ([ID], [ID_User], [ID_Khach_Hang], [Ngay_Tao], [Ma_HD], [Trang_Thai], [Thong_Tin_Giao_Hang]) VALUES (4, 1004, 4, CAST(N'2023-04-25' AS Date), N'HD901234', N'Da_Thanh_Toan', N'Giao hang tai dia chi D')
INSERT [dbo].[Hoa_Don] ([ID], [ID_User], [ID_Khach_Hang], [Ngay_Tao], [Ma_HD], [Trang_Thai], [Thong_Tin_Giao_Hang]) VALUES (5, 1005, 5, CAST(N'2023-05-30' AS Date), N'HD567890', N'Chua_Thanh_Toan', N'Giao hang tai dia chi E')
INSERT [dbo].[Hoa_Don] ([ID], [ID_User], [ID_Khach_Hang], [Ngay_Tao], [Ma_HD], [Trang_Thai], [Thong_Tin_Giao_Hang]) VALUES (6, 1006, 6, CAST(N'2023-06-05' AS Date), N'HD123ABC', N'Da_Thanh_Toan', N'Giao hang tai dia chi F')
INSERT [dbo].[Hoa_Don] ([ID], [ID_User], [ID_Khach_Hang], [Ngay_Tao], [Ma_HD], [Trang_Thai], [Thong_Tin_Giao_Hang]) VALUES (7, 1007, 7, CAST(N'2023-07-10' AS Date), N'HD789XYZ', N'Chua_Thanh_Toan', N'Giao hang tai dia chi G')
INSERT [dbo].[Hoa_Don] ([ID], [ID_User], [ID_Khach_Hang], [Ngay_Tao], [Ma_HD], [Trang_Thai], [Thong_Tin_Giao_Hang]) VALUES (8, 1008, 8, CAST(N'2023-08-15' AS Date), N'HD345LMN', N'Da_Thanh_Toan', N'Giao hang tai dia chi H')
INSERT [dbo].[Hoa_Don] ([ID], [ID_User], [ID_Khach_Hang], [Ngay_Tao], [Ma_HD], [Trang_Thai], [Thong_Tin_Giao_Hang]) VALUES (9, 1009, 9, CAST(N'2023-09-20' AS Date), N'HD901PQR', N'Chua_Thanh_Toan', N'Giao hang tai dia chi I')
INSERT [dbo].[Hoa_Don] ([ID], [ID_User], [ID_Khach_Hang], [Ngay_Tao], [Ma_HD], [Trang_Thai], [Thong_Tin_Giao_Hang]) VALUES (10, 1010, 10, CAST(N'2023-10-25' AS Date), N'HD567UVW', N'Da_Thanh_Toan', N'Giao hang tai dia chi K')
GO
INSERT [dbo].[Hop_So] ([ID], [Ten], [Mo_Ta]) VALUES (1, N'Hộp Số Tự Động', N'Hộp số tự động, thuận tiện và dễ sử dụng')
INSERT [dbo].[Hop_So] ([ID], [Ten], [Mo_Ta]) VALUES (2, N'Hộp Số Sàn', N'Hộp số sàn, cho trải nghiệm lái xe truyền thống')
INSERT [dbo].[Hop_So] ([ID], [Ten], [Mo_Ta]) VALUES (3, N'Hộp Số Công Nghệ Cao', N'Hộp số với công nghệ cao, chuyển số mượt mà và nhanh chóng')
INSERT [dbo].[Hop_So] ([ID], [Ten], [Mo_Ta]) VALUES (4, N'Hộp Số CVT', N'Hộp số vô cấp, cung cấp trải nghiệm lái xe êm dịu và tiết kiệm nhiên liệu')
INSERT [dbo].[Hop_So] ([ID], [Ten], [Mo_Ta]) VALUES (5, N'Hộp Số DSG', N'Hộp số tự động với công nghệ đôi ly hợp, chuyển số nhanh và mượt mà')
INSERT [dbo].[Hop_So] ([ID], [Ten], [Mo_Ta]) VALUES (6, N'Hộp Số Hybride', N'Hộp số kết hợp giữa hộp số tự động và hộp số điện, linh hoạt và tiết kiệm nhiên liệu')
INSERT [dbo].[Hop_So] ([ID], [Ten], [Mo_Ta]) VALUES (7, N'Hộp Số 4WD', N'Hộp số cho xe 4 bánh, cung cấp khả năng vận hành tốt trên mọi loại địa hình')
INSERT [dbo].[Hop_So] ([ID], [Ten], [Mo_Ta]) VALUES (8, N'Hộp Số Xe Điện', N'Hộp số được thiết kế cho động cơ điện, cung cấp trải nghiệm lái xe mượt mà')
INSERT [dbo].[Hop_So] ([ID], [Ten], [Mo_Ta]) VALUES (9, N'Hộp Số 6 Cấp', N'Hộp số với 6 cấp số, cung cấp sự linh hoạt trong việc chọn số')
INSERT [dbo].[Hop_So] ([ID], [Ten], [Mo_Ta]) VALUES (10, N'Hộp Số Tự Động 9 Cấp', N'Hộp số tự động với 9 cấp số, đảm bảo hiệu suất tốt và tiết kiệm nhiên liệu')
GO
INSERT [dbo].[Khach_Hang] ([ID], [Ten], [Dia_Chi], [Email], [SDT]) VALUES (1, N'Nguyen Van A', 1, N'customer1@example.com', N'123456789')
INSERT [dbo].[Khach_Hang] ([ID], [Ten], [Dia_Chi], [Email], [SDT]) VALUES (2, N'Tran Thi B', 2, N'customer2@example.com', N'987654321')
INSERT [dbo].[Khach_Hang] ([ID], [Ten], [Dia_Chi], [Email], [SDT]) VALUES (3, N'Le Van C', 3, N'customer3@example.com', N'555111333')
INSERT [dbo].[Khach_Hang] ([ID], [Ten], [Dia_Chi], [Email], [SDT]) VALUES (4, N'Pham Thi D', 4, N'customer4@example.com', N'999000111')
INSERT [dbo].[Khach_Hang] ([ID], [Ten], [Dia_Chi], [Email], [SDT]) VALUES (5, N'Ho Van E', 5, N'customer5@example.com', N'111222333')
INSERT [dbo].[Khach_Hang] ([ID], [Ten], [Dia_Chi], [Email], [SDT]) VALUES (6, N'Do Thi F', 6, N'customer6@example.com', N'444555666')
INSERT [dbo].[Khach_Hang] ([ID], [Ten], [Dia_Chi], [Email], [SDT]) VALUES (7, N'Tran Van G', 7, N'customer7@example.com', N'777888999')
INSERT [dbo].[Khach_Hang] ([ID], [Ten], [Dia_Chi], [Email], [SDT]) VALUES (8, N'Le Thi H', 8, N'customer8@example.com', N'222333444')
INSERT [dbo].[Khach_Hang] ([ID], [Ten], [Dia_Chi], [Email], [SDT]) VALUES (9, N'Nguyen Van I', 9, N'customer9@example.com', N'666777888')
INSERT [dbo].[Khach_Hang] ([ID], [Ten], [Dia_Chi], [Email], [SDT]) VALUES (10, N'Pham Van K', 10, N'customer10@example.com', N'333444555')
GO
INSERT [dbo].[Kho_Hang] ([ID], [ID_SP], [Ngay_Nhap_Kho], [Ngay_Xuat_Kho], [Trang_Thai], [So_Luong_SP]) VALUES (1, 1, CAST(N'2023-01-05' AS Date), NULL, N'Con_Hang', 20)
INSERT [dbo].[Kho_Hang] ([ID], [ID_SP], [Ngay_Nhap_Kho], [Ngay_Xuat_Kho], [Trang_Thai], [So_Luong_SP]) VALUES (2, 2, CAST(N'2023-02-10' AS Date), NULL, N'Con_Hang', 16)
INSERT [dbo].[Kho_Hang] ([ID], [ID_SP], [Ngay_Nhap_Kho], [Ngay_Xuat_Kho], [Trang_Thai], [So_Luong_SP]) VALUES (3, 3, CAST(N'2023-03-15' AS Date), CAST(N'2023-03-20' AS Date), N'Het_Hang', 0)
INSERT [dbo].[Kho_Hang] ([ID], [ID_SP], [Ngay_Nhap_Kho], [Ngay_Xuat_Kho], [Trang_Thai], [So_Luong_SP]) VALUES (4, 4, CAST(N'2023-04-20' AS Date), NULL, N'Con_Hang', 25)
INSERT [dbo].[Kho_Hang] ([ID], [ID_SP], [Ngay_Nhap_Kho], [Ngay_Xuat_Kho], [Trang_Thai], [So_Luong_SP]) VALUES (5, 5, CAST(N'2023-05-25' AS Date), CAST(N'2023-05-30' AS Date), N'Het_Hang', 0)
INSERT [dbo].[Kho_Hang] ([ID], [ID_SP], [Ngay_Nhap_Kho], [Ngay_Xuat_Kho], [Trang_Thai], [So_Luong_SP]) VALUES (6, 6, CAST(N'2023-06-30' AS Date), NULL, N'Con_Hang', 18)
INSERT [dbo].[Kho_Hang] ([ID], [ID_SP], [Ngay_Nhap_Kho], [Ngay_Xuat_Kho], [Trang_Thai], [So_Luong_SP]) VALUES (7, 7, CAST(N'2023-07-05' AS Date), CAST(N'2023-07-10' AS Date), N'Het_Hang', 0)
INSERT [dbo].[Kho_Hang] ([ID], [ID_SP], [Ngay_Nhap_Kho], [Ngay_Xuat_Kho], [Trang_Thai], [So_Luong_SP]) VALUES (8, 8, CAST(N'2023-08-10' AS Date), NULL, N'Con_Hang', 30)
INSERT [dbo].[Kho_Hang] ([ID], [ID_SP], [Ngay_Nhap_Kho], [Ngay_Xuat_Kho], [Trang_Thai], [So_Luong_SP]) VALUES (9, 9, CAST(N'2023-09-15' AS Date), CAST(N'2023-09-20' AS Date), N'Het_Hang', 0)
INSERT [dbo].[Kho_Hang] ([ID], [ID_SP], [Ngay_Nhap_Kho], [Ngay_Xuat_Kho], [Trang_Thai], [So_Luong_SP]) VALUES (10, 10, CAST(N'2023-10-20' AS Date), NULL, N'Con_Hang', 30)
INSERT [dbo].[Kho_Hang] ([ID], [ID_SP], [Ngay_Nhap_Kho], [Ngay_Xuat_Kho], [Trang_Thai], [So_Luong_SP]) VALUES (11, 11, CAST(N'2023-12-13' AS Date), NULL, N'Con_Hang', 10)
GO
INSERT [dbo].[Khuyen_Mai] ([ID], [Ma_KM], [Ten], [Trang_Thai], [Ngay_Bat_Dau], [Ngay_Ket_Thuc]) VALUES (1, N'KM123', N'Khuyen Mai Tet 2023', N'Hoat_Dong', CAST(N'2023-01-01' AS Date), CAST(N'2023-02-10' AS Date))
INSERT [dbo].[Khuyen_Mai] ([ID], [Ma_KM], [Ten], [Trang_Thai], [Ngay_Bat_Dau], [Ngay_Ket_Thuc]) VALUES (2, N'KM456', N'Khuyen Mai Le 8/3', N'Chua_Hoat_Dong', CAST(N'2023-02-15' AS Date), CAST(N'2023-03-08' AS Date))
INSERT [dbo].[Khuyen_Mai] ([ID], [Ma_KM], [Ten], [Trang_Thai], [Ngay_Bat_Dau], [Ngay_Ket_Thuc]) VALUES (3, N'KM789', N'Khuyen Mai Mua He', N'Hoat_Dong', CAST(N'2023-03-20' AS Date), CAST(N'2023-06-20' AS Date))
INSERT [dbo].[Khuyen_Mai] ([ID], [Ma_KM], [Ten], [Trang_Thai], [Ngay_Bat_Dau], [Ngay_Ket_Thuc]) VALUES (4, N'KMABC', N'Khuyen Mai Nhan Dip Le Hoi', N'Chua_Hoat_Dong', CAST(N'2023-04-25' AS Date), CAST(N'2023-05-05' AS Date))
INSERT [dbo].[Khuyen_Mai] ([ID], [Ma_KM], [Ten], [Trang_Thai], [Ngay_Bat_Dau], [Ngay_Ket_Thuc]) VALUES (5, N'KMXXZ', N'Khuyen Mai Cuoi Nam', N'Hoat_Dong', CAST(N'2023-06-01' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[Khuyen_Mai] ([ID], [Ma_KM], [Ten], [Trang_Thai], [Ngay_Bat_Dau], [Ngay_Ket_Thuc]) VALUES (6, N'KMLMN', N'Khuyen Mai Heo Dat', N'Chua_Hoat_Dong', CAST(N'2023-07-01' AS Date), CAST(N'2023-07-15' AS Date))
INSERT [dbo].[Khuyen_Mai] ([ID], [Ma_KM], [Ten], [Trang_Thai], [Ngay_Bat_Dau], [Ngay_Ket_Thuc]) VALUES (7, N'KMXYY', N'Khuyen Mai Halloween', N'Hoat_Dong', CAST(N'2023-10-20' AS Date), CAST(N'2023-10-31' AS Date))
INSERT [dbo].[Khuyen_Mai] ([ID], [Ma_KM], [Ten], [Trang_Thai], [Ngay_Bat_Dau], [Ngay_Ket_Thuc]) VALUES (8, N'KM446', N'Khuyen Mai Black Friday', N'Chua_Hoat_Dong', CAST(N'2023-11-24' AS Date), CAST(N'2023-11-25' AS Date))
INSERT [dbo].[Khuyen_Mai] ([ID], [Ma_KM], [Ten], [Trang_Thai], [Ngay_Bat_Dau], [Ngay_Ket_Thuc]) VALUES (9, N'KMAAB', N'Khuyen Mai Giang Sinh', N'Hoat_Dong', CAST(N'2023-12-01' AS Date), CAST(N'2023-12-25' AS Date))
INSERT [dbo].[Khuyen_Mai] ([ID], [Ma_KM], [Ten], [Trang_Thai], [Ngay_Bat_Dau], [Ngay_Ket_Thuc]) VALUES (10, N'KMPQR', N'Khuyen Mai Tet Am Lich', N'Chua_Hoat_Dong', CAST(N'2023-01-30' AS Date), CAST(N'2023-02-10' AS Date))
GO
INSERT [dbo].[Mau_Sac] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (1, N'Đen', N'Màu đen sang trọng', N'Hoat_Dong')
INSERT [dbo].[Mau_Sac] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (2, N'Trắng', N'Màu trắng tinh khôi', N'Hoat_Dong')
INSERT [dbo].[Mau_Sac] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (3, N'Xanh', N'Màu xanh dịu dàng', N'Hoat_Dong')
INSERT [dbo].[Mau_Sac] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (4, N'Đỏ', N'Màu đỏ nổi bật', N'Hoat_Dong')
INSERT [dbo].[Mau_Sac] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (5, N'Xám', N'Màu xám lịch lãm', N'Ngung_Hoat_Dong')
INSERT [dbo].[Mau_Sac] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (6, N'Vàng', N'Màu vàng năng động', N'Hoat_Dong')
INSERT [dbo].[Mau_Sac] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (7, N'Nâu', N'Màu nâu ấm áp', N'Hoat_Dong')
INSERT [dbo].[Mau_Sac] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (8, N'Hồng', N'Màu hồng dịu dàng', N'Hoat_Dong')
INSERT [dbo].[Mau_Sac] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (9, N'Xanh Lá', N'Màu xanh lá cây tươi mới', N'Ngung_Hoat_Dong')
INSERT [dbo].[Mau_Sac] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (10, N'Xanh Dương', N'Màu xanh dương biển cả', N'Hoat_Dong')
GO
INSERT [dbo].[Noi_That] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (1, N'Da Gia Cao Cấp', N'Da nỉ cao cấp, êm ái và sang trọng', N'Hoat_Dong')
INSERT [dbo].[Noi_That] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (2, N'Da Simili', N'Da simili chất lượng, giá phải chăng', N'Hoat_Dong')
INSERT [dbo].[Noi_That] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (3, N'Vải Nỉ', N'Vải nỉ mềm mại và thoải mái', N'Hoat_Dong')
INSERT [dbo].[Noi_That] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (4, N'Vải Nhung', N'Vải nhung sang trọng, dễ lau chùi', N'Ngung_Hoat_Dong')
INSERT [dbo].[Noi_That] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (5, N'Da Chất Liệu Cao Cấp', N'Da chất liệu cao cấp, bền và đẹp', N'Hoat_Dong')
INSERT [dbo].[Noi_That] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (6, N'Vải Hợp Kim', N'Vải hợp kim nhẹ và thoáng khí', N'Hoat_Dong')
INSERT [dbo].[Noi_That] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (7, N'Da PU', N'Da PU chất lượng, giả mạo da thật', N'Hoat_Dong')
INSERT [dbo].[Noi_That] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (8, N'Vải Canvas', N'Vải canvas chống thấm nước', N'Hoat_Dong')
INSERT [dbo].[Noi_That] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (9, N'Da Nâu Vintage', N'Da nâu vintage cổ điển và quyến rũ', N'Ngung_Hoat_Dong')
INSERT [dbo].[Noi_That] ([ID], [Ten], [Mo_Ta], [Trang_Thai]) VALUES (10, N'Vải Jeans', N'Vải jeans thời trang và cá tính', N'Hoat_Dong')
GO
INSERT [dbo].[Phan_Khuc_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (1, N'Phân Khúc Xe Hang A', N'Xe mini cỡ nhỏ ')
INSERT [dbo].[Phan_Khuc_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (2, N'Phân Khúc Xe Hang B', N'Xe dành cho gia đình cỡ nhỏ')
INSERT [dbo].[Phan_Khuc_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (3, N'Phân Khúc Xe Hang C', N'Xe bình dân cỡ trung')
INSERT [dbo].[Phan_Khuc_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (4, N'Phân Khúc Xe Hang D', N'Xe bình dân cỡ lớn')
INSERT [dbo].[Phan_Khuc_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (5, N'Phân Khúc Xe Hang E', N'Xe hạng sang')
INSERT [dbo].[Phan_Khuc_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (6, N'Phân Khúc Xe Hang F', N'Xe hạng sang cỡ lớn')
INSERT [dbo].[Phan_Khuc_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (7, N'Phân Khúc Xe Hang S', N'Xe coupe thể thao')
INSERT [dbo].[Phan_Khuc_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (8, N'Phân Khúc Xe Hang M', N'Xe Minivan và MPV')
INSERT [dbo].[Phan_Khuc_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (9, N'Phân Khúc Xe Hang J', N'Dòng xe SUV')
INSERT [dbo].[Phan_Khuc_Xe] ([ID], [Ten], [Mo_Ta]) VALUES (10, N'Phân Khúc Xe Ban Tai', N'xe hơi hạng nhẹ có một khu vực phía sau để hàng')
GO
INSERT [dbo].[San_Pham] ([ID], [ID_Hang], [Ma_SP], [Ten], [Gia_Ban], [Gia_Nhap], [Mo_Ta], [Trang_Thai]) VALUES (1, 1, N'SP001', N'Ô tô Toyota Camry', CAST(1200000.00 AS Decimal(10, 2)), CAST(1000000.00 AS Decimal(10, 2)), N'Xe ô tô Toyota Camry, màu đen, đời 2023', N'Còn Hàng')
INSERT [dbo].[San_Pham] ([ID], [ID_Hang], [Ma_SP], [Ten], [Gia_Ban], [Gia_Nhap], [Mo_Ta], [Trang_Thai]) VALUES (2, 2, N'SP002', N'Ô tô Honda Civic', CAST(1100000.00 AS Decimal(10, 2)), CAST(950000.00 AS Decimal(10, 2)), N'Xe ô tô Honda Civic, màu trắng, đời 2023', N'Còn Hàng')
INSERT [dbo].[San_Pham] ([ID], [ID_Hang], [Ma_SP], [Ten], [Gia_Ban], [Gia_Nhap], [Mo_Ta], [Trang_Thai]) VALUES (3, 3, N'SP003', N'Ô tô Ford Escape', CAST(1500000.00 AS Decimal(10, 2)), CAST(1300000.00 AS Decimal(10, 2)), N'Xe ô tô Ford Escape, màu xanh, đời 2023', N'Hết Hàng')
INSERT [dbo].[San_Pham] ([ID], [ID_Hang], [Ma_SP], [Ten], [Gia_Ban], [Gia_Nhap], [Mo_Ta], [Trang_Thai]) VALUES (4, 4, N'SP004', N'Ô tô Chevrolet Cruze', CAST(1050000.00 AS Decimal(10, 2)), CAST(900000.00 AS Decimal(10, 2)), N'Xe ô tô Chevrolet Cruze, màu đỏ, đời 2023', N'Còn Hàng')
INSERT [dbo].[San_Pham] ([ID], [ID_Hang], [Ma_SP], [Ten], [Gia_Ban], [Gia_Nhap], [Mo_Ta], [Trang_Thai]) VALUES (5, 5, N'SP005', N'Ô tô BMW X5', CAST(2000000.00 AS Decimal(10, 2)), CAST(1800000.00 AS Decimal(10, 2)), N'Xe ô tô BMW X5, màu đen, đời 2023', N'Hết Hàng')
INSERT [dbo].[San_Pham] ([ID], [ID_Hang], [Ma_SP], [Ten], [Gia_Ban], [Gia_Nhap], [Mo_Ta], [Trang_Thai]) VALUES (6, 6, N'SP006', N'Ô tô Mercedes-Benz E-Class', CAST(1800000.00 AS Decimal(10, 2)), CAST(1600000.00 AS Decimal(10, 2)), N'Xe ô tô Mercedes-Benz E-Class, màu trắng, đời 2023', N'Còn Hàng')
INSERT [dbo].[San_Pham] ([ID], [ID_Hang], [Ma_SP], [Ten], [Gia_Ban], [Gia_Nhap], [Mo_Ta], [Trang_Thai]) VALUES (7, 7, N'SP007', N'Ô tô Audi Q7', CAST(1900000.00 AS Decimal(10, 2)), CAST(1700000.00 AS Decimal(10, 2)), N'Xe ô tô Audi Q7, màu xám, đời 2023', N'Hết Hàng')
INSERT [dbo].[San_Pham] ([ID], [ID_Hang], [Ma_SP], [Ten], [Gia_Ban], [Gia_Nhap], [Mo_Ta], [Trang_Thai]) VALUES (8, 8, N'SP008', N'Ô tô Hyundai Tucson', CAST(1250000.00 AS Decimal(10, 2)), CAST(1100000.00 AS Decimal(10, 2)), N'Xe ô tô Hyundai Tucson, màu vàng, đời 2023', N'Còn Hàng')
INSERT [dbo].[San_Pham] ([ID], [ID_Hang], [Ma_SP], [Ten], [Gia_Ban], [Gia_Nhap], [Mo_Ta], [Trang_Thai]) VALUES (9, 9, N'SP009', N'Ô tô Kia Sorento', CAST(1350000.00 AS Decimal(10, 2)), CAST(1200000.00 AS Decimal(10, 2)), N'Xe ô tô Kia Sorento, màu nâu, đời 2023', N'Hết Hàng')
INSERT [dbo].[San_Pham] ([ID], [ID_Hang], [Ma_SP], [Ten], [Gia_Ban], [Gia_Nhap], [Mo_Ta], [Trang_Thai]) VALUES (10, 10, N'SP010', N'Ô tô Subaru Outback', CAST(1660000.00 AS Decimal(10, 2)), CAST(1400000.00 AS Decimal(10, 2)), N'Xe ô tô Subaru Outback, màu đen, đời 2023', N'Còn Hàng')
INSERT [dbo].[San_Pham] ([ID], [ID_Hang], [Ma_SP], [Ten], [Gia_Ban], [Gia_Nhap], [Mo_Ta], [Trang_Thai]) VALUES (11, 10, N'SP011', N'Ô tô Subaru Outback', CAST(1660000.00 AS Decimal(10, 2)), CAST(1400000.00 AS Decimal(10, 2)), N'Xe ô tô Subaru Outback, màu đen, đời 2023', N'Còn Hàng')
GO
INSERT [dbo].[Thiet_Ke] ([ID], [Ten], [Mo_Ta]) VALUES (1, N'Thiết Kế Hiện Đại', N'Thiết kế ô tô theo phong cách hiện đại, đẹp và sang trọng')
INSERT [dbo].[Thiet_Ke] ([ID], [Ten], [Mo_Ta]) VALUES (2, N'Thiết Kế Thể Thao', N'Thiết kế ô tô theo phong cách thể thao, năng động và mạnh mẽ')
INSERT [dbo].[Thiet_Ke] ([ID], [Ten], [Mo_Ta]) VALUES (3, N'Thiết Kế Cổ Điển', N'Thiết kế ô tô theo phong cách cổ điển, lịch lãm và quý phái')
INSERT [dbo].[Thiet_Ke] ([ID], [Ten], [Mo_Ta]) VALUES (4, N'Thiết Kế Tiện Nghi', N'Thiết kế ô tô với trang thiết bị tiện nghi, thoải mái cho người sử dụng')
INSERT [dbo].[Thiet_Ke] ([ID], [Ten], [Mo_Ta]) VALUES (5, N'Thiết Kế Nội Thất Cao Cấp', N'Thiết kế nội thất ô tô với chất liệu cao cấp và độ hoàn thiện cao')
INSERT [dbo].[Thiet_Ke] ([ID], [Ten], [Mo_Ta]) VALUES (6, N'Thiết Kế Đa Dạng', N'Thiết kế ô tô đa dạng với nhiều lựa chọn cho khách hàng')
INSERT [dbo].[Thiet_Ke] ([ID], [Ten], [Mo_Ta]) VALUES (7, N'Thiết Kế Gia Đình', N'Thiết kế ô tô phục vụ cho nhu cầu của gia đình, thoải mái và an toàn')
INSERT [dbo].[Thiet_Ke] ([ID], [Ten], [Mo_Ta]) VALUES (8, N'Thiết Kế Chống Thấm Nước', N'Thiết kế ô tô với khả năng chống thấm nước, phù hợp cho mọi thời tiết')
INSERT [dbo].[Thiet_Ke] ([ID], [Ten], [Mo_Ta]) VALUES (9, N'Thiết Kế Công Nghệ Cao', N'Thiết kế ô tô tích hợp công nghệ cao, tiện ích và thông minh')
INSERT [dbo].[Thiet_Ke] ([ID], [Ten], [Mo_Ta]) VALUES (10, N'Thiết Kế Xanh', N'Thiết kế ô tô hướng đến tính bền vững và thân thiện với môi trường')
GO
INSERT [dbo].[Users] ([ID], [Username], [Password], [Ten], [Vai_Tro], [Email], [Ngay_Sinh], [SDT], [Dia_Chi]) VALUES (1001, N'user1', N'pass123', N'Nguyen Van A', N'Nhan_Vien', N'user1@example.com', CAST(N'1990-01-15' AS Date), N'123456789', 1)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Ten], [Vai_Tro], [Email], [Ngay_Sinh], [SDT], [Dia_Chi]) VALUES (1002, N'user2', N'pass456', N'Tran Thi B', N'Nhan_Vien', N'user2@example.com', CAST(N'1985-05-20' AS Date), N'987654321', 2)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Ten], [Vai_Tro], [Email], [Ngay_Sinh], [SDT], [Dia_Chi]) VALUES (1003, N'user3', N'pass789', N'Le Van C', N'Quan_Ly', N'user3@example.com', CAST(N'2000-08-10' AS Date), N'555111333', 3)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Ten], [Vai_Tro], [Email], [Ngay_Sinh], [SDT], [Dia_Chi]) VALUES (1004, N'user4', N'passa12', N'Pham Thi D', N'Nhan_Vien', N'user4@example.com', CAST(N'1978-12-03' AS Date), N'999000111', 4)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Ten], [Vai_Tro], [Email], [Ngay_Sinh], [SDT], [Dia_Chi]) VALUES (1005, N'user5', N'passxyz', N'Ho Van A', N'Nhan_Vien', N'user5@example.com', CAST(N'1995-03-25' AS Date), N'111222333', 5)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Ten], [Vai_Tro], [Email], [Ngay_Sinh], [SDT], [Dia_Chi]) VALUES (1006, N'user6', N'pass456', N'Do Thi F', N'Nhan_Vien', N'user6@example.com', CAST(N'1982-07-18' AS Date), N'444555666', 6)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Ten], [Vai_Tro], [Email], [Ngay_Sinh], [SDT], [Dia_Chi]) VALUES (1007, N'user7', N'pass123', N'Tran Van G', N'Nhan_Vien', N'user7@example.com', CAST(N'1998-11-30' AS Date), N'777888999', 7)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Ten], [Vai_Tro], [Email], [Ngay_Sinh], [SDT], [Dia_Chi]) VALUES (1008, N'user8', N'pass789', N'Le Thi H', N'Quan_Ly', N'user8@example.com', CAST(N'1993-09-05' AS Date), N'222333444', 8)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Ten], [Vai_Tro], [Email], [Ngay_Sinh], [SDT], [Dia_Chi]) VALUES (1009, N'user9', N'passabc', N'Nguyen Van I', N'Nhan_Vien', N'user9@example.com', CAST(N'1987-04-22' AS Date), N'666777888', 9)
INSERT [dbo].[Users] ([ID], [Username], [Password], [Ten], [Vai_Tro], [Email], [Ngay_Sinh], [SDT], [Dia_Chi]) VALUES (1010, N'user10', N'passxyz', N'Pham Van K', N'Nhan_Vien', N'user10@example.com', CAST(N'2002-02-14' AS Date), N'333444555', 10)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Chi_Tiet__2E62F345085F5947]    Script Date: 12/13/2023 1:02:20 PM ******/
ALTER TABLE [dbo].[Chi_Tiet_San_Pham] ADD UNIQUE NONCLUSTERED 
(
	[Ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Chi_Tiet__2E62F34579778011]    Script Date: 12/13/2023 1:02:20 PM ******/
ALTER TABLE [dbo].[Chi_Tiet_San_Pham] ADD UNIQUE NONCLUSTERED 
(
	[Ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Khuyen_M__2E62B24A6FC47B48]    Script Date: 12/13/2023 1:02:20 PM ******/
ALTER TABLE [dbo].[Khuyen_Mai] ADD UNIQUE NONCLUSTERED 
(
	[Ma_KM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Khuyen_M__2E62B24A8150DE3C]    Script Date: 12/13/2023 1:02:20 PM ******/
ALTER TABLE [dbo].[Khuyen_Mai] ADD UNIQUE NONCLUSTERED 
(
	[Ma_KM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__San_Pham__2E62F3456EAE63A4]    Script Date: 12/13/2023 1:02:20 PM ******/
ALTER TABLE [dbo].[San_Pham] ADD UNIQUE NONCLUSTERED 
(
	[Ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__San_Pham__2E62F345D030F769]    Script Date: 12/13/2023 1:02:20 PM ******/
ALTER TABLE [dbo].[San_Pham] ADD UNIQUE NONCLUSTERED 
(
	[Ma_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__536C85E453BA23EB]    Script Date: 12/13/2023 1:02:20 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__536C85E481C65DAF]    Script Date: 12/13/2023 1:02:20 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD FOREIGN KEY([ID_CTKM])
REFERENCES [dbo].[Chi_Tiet_Khuyen_Mai] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD FOREIGN KEY([ID_CTSP])
REFERENCES [dbo].[Chi_Tiet_San_Pham] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD FOREIGN KEY([ID_Hoa_Don])
REFERENCES [dbo].[Hoa_Don] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_Khuyen_Mai]  WITH CHECK ADD FOREIGN KEY([ID_KM])
REFERENCES [dbo].[Khuyen_Mai] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_Khuyen_Mai]  WITH CHECK ADD FOREIGN KEY([ID_SP])
REFERENCES [dbo].[San_Pham] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_San_Pham]  WITH CHECK ADD FOREIGN KEY([ID_Dong_Xe])
REFERENCES [dbo].[Dong_Xe] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_San_Pham]  WITH CHECK ADD FOREIGN KEY([ID_Dong_Co])
REFERENCES [dbo].[Dong_Co] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_San_Pham]  WITH CHECK ADD FOREIGN KEY([ID_Hop_So])
REFERENCES [dbo].[Hop_So] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_San_Pham]  WITH CHECK ADD FOREIGN KEY([ID_Mau_Sac])
REFERENCES [dbo].[Mau_Sac] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_San_Pham]  WITH CHECK ADD FOREIGN KEY([ID_Noi_That])
REFERENCES [dbo].[Noi_That] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_San_Pham]  WITH CHECK ADD FOREIGN KEY([ID_Phan_Khuc_Xe])
REFERENCES [dbo].[Phan_Khuc_Xe] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chi_Tiet_San_Pham]  WITH CHECK ADD FOREIGN KEY([ID_Thiet_Ke])
REFERENCES [dbo].[Thiet_Ke] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD FOREIGN KEY([ID_Khach_Hang])
REFERENCES [dbo].[Khach_Hang] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD FOREIGN KEY([ID_User])
REFERENCES [dbo].[Users] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kho_Hang]  WITH CHECK ADD FOREIGN KEY([ID_SP])
REFERENCES [dbo].[San_Pham] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[San_Pham]  WITH CHECK ADD FOREIGN KEY([ID_Hang])
REFERENCES [dbo].[Hang] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([Dia_Chi])
REFERENCES [dbo].[DiaChi] ([ID])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [G7_CarSpeed] SET  READ_WRITE 
GO
