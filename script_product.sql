USE [master]
GO
/****** Object:  Database [Products]    Script Date: 3/4/2025 12:48:46 PM ******/
CREATE DATABASE [Products]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Products', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Products.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Products_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Products_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Products] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Products].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Products] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Products] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Products] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Products] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Products] SET ARITHABORT OFF 
GO
ALTER DATABASE [Products] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Products] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Products] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Products] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Products] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Products] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Products] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Products] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Products] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Products] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Products] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Products] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Products] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Products] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Products] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Products] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Products] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Products] SET RECOVERY FULL 
GO
ALTER DATABASE [Products] SET  MULTI_USER 
GO
ALTER DATABASE [Products] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Products] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Products] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Products] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Products] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Products] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Products', N'ON'
GO
ALTER DATABASE [Products] SET QUERY_STORE = ON
GO
ALTER DATABASE [Products] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Products]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 3/4/2025 12:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[category] [nvarchar](50) NULL,
	[price] [float] NULL,
	[discount] [decimal](18, 0) NULL,
	[quantity] [int] NULL,
	[measurment] [decimal](18, 0) NULL,
	[producer] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[supplier] [varchar](50) NULL,
	[date_of_delivery] [date] NULL,
	[expire_date] [date] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Table_1] ON 

INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (1, N'Smartphone', N'Electronics', 499.99, CAST(10 AS Decimal(18, 0)), 25, CAST(6 AS Decimal(18, 0)), N'TechCorp', N'USA', N'ElectronicsSupplier', CAST(N'2024-03-03' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (2, N'Laptop', N'Electronics', 799.99, CAST(15 AS Decimal(18, 0)), 30, CAST(20 AS Decimal(18, 0)), N'TechCorp', N'USA', N'ElectronicsSupplier', CAST(N'2023-04-06' AS Date), CAST(N'2029-03-17' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (3, N'Headphones', N'Accessories', 69.99, CAST(5 AS Decimal(18, 0)), 50, CAST(5 AS Decimal(18, 0)), N'AudioX', N'Ukraine', N'AccessoriesSupplier', CAST(N'2022-12-02' AS Date), CAST(N'2029-03-17' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (4, N'Smartwatch', N'Electronics', 199.99, CAST(20 AS Decimal(18, 0)), 20, CAST(4 AS Decimal(18, 0)), N'TimTech', N'Germany', N'ElectronicsSupplier', CAST(N'2023-12-03' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (5, N'Keyboard', N'Accessories', 49.99, CAST(0 AS Decimal(18, 0)), 100, CAST(23 AS Decimal(18, 0)), N'KeyMaster', N'Italy', N'AccessoriesSupplier', CAST(N'2023-04-06' AS Date), CAST(N'2028-10-27' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (6, N'Mouse', N'Accessories', 29.99, CAST(10 AS Decimal(18, 0)), 150, CAST(4 AS Decimal(18, 0)), N'MouseWorks', N'German', N'AccessoriesSupplier', CAST(N'2023-12-03' AS Date), CAST(N'2026-01-01' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (7, N'Monitor', N'Electronics', 299.99, CAST(5 AS Decimal(18, 0)), 10, CAST(34 AS Decimal(18, 0)), N'VisionCo', N'Canada', N'ElectronicsSupplier', CAST(N'2022-03-31' AS Date), CAST(N'2028-10-27' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (8, N'Tablet', N'Electronics', 349.99, CAST(10 AS Decimal(18, 0)), 15, CAST(16 AS Decimal(18, 0)), N'GizmoTech', N'Austria', N'ElectronicsSupplier', CAST(N'2022-12-02' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (9, N'Charger', N'Accessories', 19.99, CAST(0 AS Decimal(18, 0)), 200, CAST(2 AS Decimal(18, 0)), N'PowerPlus', N'Australia', N'AccessoriesSupplier', CAST(N'2024-08-20' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (10, N'Speakers', N'Audio', 129.99, CAST(15 AS Decimal(18, 0)), 40, CAST(5 AS Decimal(18, 0)), N'SoundWorld', N'Netherlands', N'AudioSupplier', CAST(N'2022-11-14' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (11, N'Camera', N'Electronics', 599.99, CAST(20 AS Decimal(18, 0)), 8, CAST(7 AS Decimal(18, 0)), N'PhotoTech', N'Poland', N'ElectronicsSupplier', CAST(N'2023-12-03' AS Date), CAST(N'2026-01-01' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (12, N'External Hard Drive', N'Accessories', 79.99, CAST(10 AS Decimal(18, 0)), 60, CAST(4 AS Decimal(18, 0)), N'DataSafe', N'Latvia', N'AccessoriesSupplier', CAST(N'2023-04-06' AS Date), CAST(N'2029-03-17' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (13, N'Phone Case', N'Accessories', 15.99, CAST(5 AS Decimal(18, 0)), 250, CAST(6 AS Decimal(18, 0)), N'CaseMate', N'Greece', N'AccessoriesSupplier', CAST(N'2022-03-31' AS Date), CAST(N'2029-03-17' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (14, N'Bluetooth Speaker', N'Audio', 59.99, CAST(0 AS Decimal(18, 0)), 35, CAST(5 AS Decimal(18, 0)), N'SoundMaster', N'Italy', N'AudioSupplier', CAST(N'2022-03-31' AS Date), CAST(N'2026-01-01' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (15, N'VR Headset', N'Electronics', 299.99, CAST(10 AS Decimal(18, 0)), 12, CAST(13 AS Decimal(18, 0)), N'FutureVision', N'USA', N'ElectronicsSupplier', CAST(N'2023-04-06' AS Date), CAST(N'2028-10-27' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (16, N'Microwave', N'Appliances', 150, CAST(5 AS Decimal(18, 0)), 22, CAST(26 AS Decimal(18, 0)), N'HomeTech', N'China', N'AppliancesSupplier', CAST(N'2023-04-06' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (17, N'Blender', N'Appliances', 89, CAST(20 AS Decimal(18, 0)), 40, CAST(14 AS Decimal(18, 0)), N'BlendMaster', N'Japan', N'AppliancesSupplier', CAST(N'2022-11-14' AS Date), CAST(N'2026-01-01' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (18, N'Washing Machine', N'Appliances', 499.99, CAST(10 AS Decimal(18, 0)), 18, CAST(75 AS Decimal(18, 0)), N'CleanTech', N'Japan', N'AppliancesSupplier', CAST(N'2022-11-14' AS Date), CAST(N'2029-03-17' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (19, N'Refrigerator', N'Appliances', 799.99, CAST(15 AS Decimal(18, 0)), 10, CAST(50 AS Decimal(18, 0)), N'ColdMaster', N'Belgium', N'AppliancesSupplier', CAST(N'2024-08-20' AS Date), CAST(N'2029-03-17' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (20, N'Coffee Maker', N'Appliances', 120, CAST(10 AS Decimal(18, 0)), 50, CAST(32 AS Decimal(18, 0)), N'BrewMaster', N'Sweden', N'AppliancesSupplier', CAST(N'2024-08-20' AS Date), CAST(N'2026-01-01' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (21, N'Toaster', N'Appliances', 45, CAST(5 AS Decimal(18, 0)), 70, CAST(17 AS Decimal(18, 0)), N'ToastMaster', N'Norway', N'AppliancesSupplier', CAST(N'2023-12-03' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (22, N'Vacuum Cleaner', N'Appliances', 159.99, CAST(0 AS Decimal(18, 0)), 30, CAST(35 AS Decimal(18, 0)), N'CleanPower', N'Latvia', N'AppliancesSupplier', CAST(N'2023-12-03' AS Date), CAST(N'2028-10-27' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (23, N'Air Conditioner', N'Appliances', 350, CAST(10 AS Decimal(18, 0)), 15, CAST(40 AS Decimal(18, 0)), N'CoolBreeze', N'Poland', N'AppliancesSupplier', CAST(N'2022-11-14' AS Date), CAST(N'2026-01-01' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (24, N'Fan', N'Appliances', 40, CAST(0 AS Decimal(18, 0)), 100, CAST(9 AS Decimal(18, 0)), N'AirFlow', N'Germany', N'AppliancesSupplier', CAST(N'2022-11-14' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (25, N'Showerhead', N'Bathroom', 35, CAST(5 AS Decimal(18, 0)), 60, CAST(8 AS Decimal(18, 0)), N'WaterFlow', N'Netherlands', N'AppliancesSupplier', CAST(N'2022-12-02' AS Date), CAST(N'2029-03-17' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (26, N'Towel', N'Bathroom', 15, CAST(0 AS Decimal(18, 0)), 100, CAST(40 AS Decimal(18, 0)), N'SoftCotton', N'Austria', N'AppliancesSupplier', CAST(N'2022-12-02' AS Date), CAST(N'2026-01-01' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (27, N'Shampoo', N'Beauty', 10.99, CAST(0 AS Decimal(18, 0)), 200, CAST(5 AS Decimal(18, 0)), N'CleanHair', N'Canada', N'AppliancesSupplier', CAST(N'2022-11-14' AS Date), CAST(N'2028-10-27' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (28, N'Conditioner', N'Beauty', 12.99, CAST(5 AS Decimal(18, 0)), 150, CAST(100 AS Decimal(18, 0)), N'SilkyHair', N'Australia', N'AppliancesSupplier', CAST(N'2023-04-06' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (29, N'Perfume', N'Beauty', 45, CAST(15 AS Decimal(18, 0)), 50, CAST(2 AS Decimal(18, 0)), N'ScentAura', N'Italy', N'AppliancesSupplier', CAST(N'2022-03-31' AS Date), CAST(N'2026-01-01' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (30, N'Lipstick', N'Beauty', 19.99, CAST(0 AS Decimal(18, 0)), 120, CAST(1 AS Decimal(18, 0)), N'Glamour', N'France', N'AppliancesSupplier', CAST(N'2022-11-14' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (31, N'Sunglasses', N'Accessories', 30, CAST(10 AS Decimal(18, 0)), 75, CAST(3 AS Decimal(18, 0)), N'SunVision', N'Italy', N'AccessoriesSupplier', CAST(N'2022-03-31' AS Date), CAST(N'2026-01-01' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (32, N'Belt', N'Accessories', 25, CAST(5 AS Decimal(18, 0)), 80, CAST(15 AS Decimal(18, 0)), N'FitStyle', N'Italy', N'AccessoriesSupplier', CAST(N'2022-11-14' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (33, N'Watch', N'Accessories', 150, CAST(20 AS Decimal(18, 0)), 40, CAST(4 AS Decimal(18, 0)), N'TimeCrraft', N'France', N'AccessoriesSupplier', CAST(N'2023-12-03' AS Date), CAST(N'2029-03-17' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (34, N'Bag', N'Accessories', 70, CAST(15 AS Decimal(18, 0)), 60, CAST(2 AS Decimal(18, 0)), N'BagMaster', N'France', N'AccessoriesSupplier', CAST(N'2024-08-20' AS Date), CAST(N'2027-12-31' AS Date))
INSERT [dbo].[Table_1] ([id], [name], [category], [price], [discount], [quantity], [measurment], [producer], [country], [supplier], [date_of_delivery], [expire_date]) VALUES (35, N'Shoes', N'Clothing', 80, CAST(5 AS Decimal(18, 0)), 100, CAST(42 AS Decimal(18, 0)), N'StepUp', N'Greece', N'ClothingSupplier', CAST(N'2022-12-02' AS Date), CAST(N'2027-12-31' AS Date))
SET IDENTITY_INSERT [dbo].[Table_1] OFF
GO
USE [master]
GO
ALTER DATABASE [Products] SET  READ_WRITE 
GO
