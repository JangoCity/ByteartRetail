USE [ByteartRetail]
GO
/****** Object:  ForeignKey [FK_dbo.SalesLines_dbo.Products_Product_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesLines_dbo.Products_Product_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesLines]'))
ALTER TABLE [dbo].[SalesLines] DROP CONSTRAINT [FK_dbo.SalesLines_dbo.Products_Product_ID]
GO
/****** Object:  ForeignKey [FK_dbo.SalesLines_dbo.SalesOrders_SalesOrder_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesLines_dbo.SalesOrders_SalesOrder_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesLines]'))
ALTER TABLE [dbo].[SalesLines] DROP CONSTRAINT [FK_dbo.SalesLines_dbo.SalesOrders_SalesOrder_ID]
GO
/****** Object:  ForeignKey [FK_dbo.SalesOrders_dbo.Users_User_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesOrders_dbo.Users_User_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesOrders]'))
ALTER TABLE [dbo].[SalesOrders] DROP CONSTRAINT [FK_dbo.SalesOrders_dbo.Users_User_ID]
GO
/****** Object:  ForeignKey [FK_dbo.ShoppingCartItems_dbo.Products_Product_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCartItems_dbo.Products_Product_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCartItems]'))
ALTER TABLE [dbo].[ShoppingCartItems] DROP CONSTRAINT [FK_dbo.ShoppingCartItems_dbo.Products_Product_ID]
GO
/****** Object:  ForeignKey [FK_dbo.ShoppingCartItems_dbo.ShoppingCarts_ShoppingCart_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCartItems_dbo.ShoppingCarts_ShoppingCart_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCartItems]'))
ALTER TABLE [dbo].[ShoppingCartItems] DROP CONSTRAINT [FK_dbo.ShoppingCartItems_dbo.ShoppingCarts_ShoppingCart_ID]
GO
/****** Object:  ForeignKey [FK_dbo.ShoppingCarts_dbo.Users_User_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCarts_dbo.Users_User_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCarts]'))
ALTER TABLE [dbo].[ShoppingCarts] DROP CONSTRAINT [FK_dbo.ShoppingCarts_dbo.Users_User_ID]
GO
/****** Object:  Table [dbo].[ShoppingCartItems]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCartItems_dbo.Products_Product_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCartItems]'))
ALTER TABLE [dbo].[ShoppingCartItems] DROP CONSTRAINT [FK_dbo.ShoppingCartItems_dbo.Products_Product_ID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCartItems_dbo.ShoppingCarts_ShoppingCart_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCartItems]'))
ALTER TABLE [dbo].[ShoppingCartItems] DROP CONSTRAINT [FK_dbo.ShoppingCartItems_dbo.ShoppingCarts_ShoppingCart_ID]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ShoppingCart__ID__2A4B4B5E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ShoppingCartItems] DROP CONSTRAINT [DF__ShoppingCart__ID__2A4B4B5E]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShoppingCartItems]') AND type in (N'U'))
DROP TABLE [dbo].[ShoppingCartItems]
GO
/****** Object:  Table [dbo].[SalesLines]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesLines_dbo.Products_Product_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesLines]'))
ALTER TABLE [dbo].[SalesLines] DROP CONSTRAINT [FK_dbo.SalesLines_dbo.Products_Product_ID]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesLines_dbo.SalesOrders_SalesOrder_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesLines]'))
ALTER TABLE [dbo].[SalesLines] DROP CONSTRAINT [FK_dbo.SalesLines_dbo.SalesOrders_SalesOrder_ID]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SalesLines__ID__164452B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesLines] DROP CONSTRAINT [DF__SalesLines__ID__164452B1]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalesLines]') AND type in (N'U'))
DROP TABLE [dbo].[SalesLines]
GO
/****** Object:  Table [dbo].[SalesOrders]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesOrders_dbo.Users_User_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesOrders]'))
ALTER TABLE [dbo].[SalesOrders] DROP CONSTRAINT [FK_dbo.SalesOrders_dbo.Users_User_ID]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__SalesOrders__ID__1367E606]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesOrders] DROP CONSTRAINT [DF__SalesOrders__ID__1367E606]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalesOrders]') AND type in (N'U'))
DROP TABLE [dbo].[SalesOrders]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCarts_dbo.Users_User_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCarts]'))
ALTER TABLE [dbo].[ShoppingCarts] DROP CONSTRAINT [FK_dbo.ShoppingCarts_dbo.Users_User_ID]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__ShoppingCart__ID__21B6055D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ShoppingCarts] DROP CONSTRAINT [DF__ShoppingCart__ID__21B6055D]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShoppingCarts]') AND type in (N'U'))
DROP TABLE [dbo].[ShoppingCarts]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__UserRoles__ID__24927208]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserRoles] DROP CONSTRAINT [DF__UserRoles__ID__24927208]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[UserRoles]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/03/2012 19:24:08 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Users__ID__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF__Users__ID__108B795B]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/03/2012 19:24:07 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Categories__ID__1BFD2C07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [DF__Categories__ID__1BFD2C07]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[Categorizations]    Script Date: 11/03/2012 19:24:07 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Categorizati__ID__1ED998B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Categorizations] DROP CONSTRAINT [DF__Categorizati__ID__1ED998B2]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categorizations]') AND type in (N'U'))
DROP TABLE [dbo].[Categorizations]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/03/2012 19:24:07 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Products__ID__1920BF5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF__Products__ID__1920BF5C]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/03/2012 19:24:07 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Roles__ID__276EDEB3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Roles] DROP CONSTRAINT [DF__Roles__ID__276EDEB3]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/03/2012 19:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Roles](
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Name] [nvarchar](25) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (N'80181f68-890d-4956-bbb7-0782e5929860', N'SalesReps', N'用于管理销售方面的专员角色')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (N'4688f0c4-39d0-4bef-babd-08bb64615c69', N'Buyers', N'用于管理采购方面的专员角色')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (N'068d4ff3-dda8-4274-8c7d-a0cea5a3b3d3', N'Customers', N'普通客户角色')
INSERT [dbo].[Roles] ([ID], [Name], [Description]) VALUES (N'7d25079e-23b6-4f8f-8b37-eabf7ab18e51', N'Administrators', N'系统管理员角色')
/****** Object:  Table [dbo].[Products]    Script Date: 11/03/2012 19:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Products](
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Name] [nvarchar](40) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[IsFeatured] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'973a3217-f504-4842-a7a0-2cbbd8e561da', N'ZTE 中兴 V970 3G手机', N'ZTE 中兴 V970 3G手机(黑色)WCDMA/GSM 双卡双待安卓4.0+1GHz双核处理器+4.3寸QHD高清大屏', CAST(975.00 AS Decimal(18, 2)), N'dd34e809_b1fc_4c75_b8f9_c5444a64cb47.jpg', 0)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'556aa854-41b1-4d99-8419-3ce5cf902e9a', N'ZTE 中兴 V889M', N'ZTE 中兴 V889M 智能双卡双待3G手机(黑)联通定制 1GHz双核处理器 4.0英寸超大炫屏', CAST(784.00 AS Decimal(18, 2)), N'a1c1738a_eaba_4c4c_b683_7c5b4eb64306.jpg', 0)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'091c2ca8-6b5e-4268-a471-402f12de7257', N'DELL 戴尔 V260SR-526 台式电脑', N'DELL 戴尔 V260SR-526 台式电脑(G630 2G 500G DVD Linux 18.5英寸宽屏液晶 三年上门服务)。选择节约空间、使用与拥有同样简单的台式机，简化您的工作空间。Vostro成就260s超薄塔式机可配备第2代英特尔®酷睿™处理器，以及将普通办公室转变为动态工作环境所需的必要组件。', CAST(2749.00 AS Decimal(18, 2)), N'43dd3fe6_4203_41dd_b570_2c9eacb7c021.jpg', 0)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'5ad2dc87-111a-4c8b-9a84-4750abf5032f', N'惠普6460B（WX560AV）', N'CPU型号：Intel 酷睿i5 2520M; 屏幕尺寸：14英寸; 内存容量：2GB; 硬盘容量：320GB', CAST(6900.00 AS Decimal(18, 2)), N'b182e978_85e1_474d_84e3_e505441e9000.jpg', 1)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'441c61c5-7332-41e4-b432-64326f2dbb0f', N'Lenovo 联想 IdeaCentre Q180', N'Lenovo 联想 IdeaCentre Q180 台式电脑主机(凌动D2700 2G 320G 512M独显 无线网卡 WIN7 2年保修含1年上门)', CAST(1799.00 AS Decimal(18, 2)), N'2d3df03f_0663_4f9a_8f6c_cb0af683cd23.jpg', 0)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'af114c11-fd1f-4759-b0d7-666d438fefd6', N'联想ThinkPad Tablet 2', N'操作系统：Windows 8屏幕尺寸：10.1英寸处理器：Intel Atom摄像头：双摄像头（前置：200屏幕分辨：1366x768WiFi功能：WIFI无线上网续航时间：10小时左右，具体时间上市时间：2012年声音系统：双立体声扬声器，内置屏幕描述：电容式触摸屏，多点式', CAST(6480.00 AS Decimal(18, 2)), N'774f83b1_e90d_4ff1_a148_f90af591a865.jpg', 1)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'5c04766f-ed08-4427-b3f0-798bfc021232', N'三星GALAXY Tab P6800', N'操作系统：Android3.2屏幕尺寸：7.7英寸系统内存：1GB存储容量：16GB处理器：双核，1.4GHz摄像头：双摄像头（前置：200网络模式：支持3G网络屏幕分辨：1280x800GPS导航：内置GPS导航WiFi功能：支持802.11a/b/g/n无', CAST(3599.00 AS Decimal(18, 2)), N'd633a09b_479f_4af2_af9d_635b7a59e1b7.jpg', 1)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'9c36236e-56cc-4b3d-8405-934c084cf8fa', N'惠普Deskjet 1050 彩色喷墨打印机', N'HP 惠普 惠众系列 Deskjet 1050 彩色喷墨多功能一体机(打印 复印 扫描)。惠普（HP）惠众系列 Deskjet 1050 彩色喷墨多功能一体机 （打印 复印 扫描）具有更低的使用成本。超低价HP 802S墨盒
配合单墨盒打印/复印，使用成本经济快速安装配合快速开机，操作更方便、快捷。hp1050 彩色喷墨多功能一体机核心特点：销量领先，品质放心 
即使在极端条件下，也可顺利开展工作。HP Deskjet 1050经过精心设计和严格测试，可以在炎热、潮湿或布满灰尘的环境下可靠运行. 
Deskjet 1050核心特点，符合能源之星® 认证（ENERGY STAR®）
大幅降低打印机的能源成本。节能，环保，省钱。 ', CAST(339.00 AS Decimal(18, 2)), N'd5d4367d_ab87_4687_8d7c_d1544acf50d1.jpg', 0)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'f7c2a2dd-5453-49c4-a6f8-94e049b408de', N'联想G460A-PSI', N'CPU型号：Intel 奔腾双核 P6200屏幕尺寸：14英寸内存容量：2GB硬盘容量：320GBCPU主频：2.13GHz笔记本重：2.2Kg', CAST(3360.00 AS Decimal(18, 2)), N'bc2dbf1a_699a_4eaf_a49f_4eccc199bb55.jpg', 1)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'2986f586-03ff-470d-bc48-98775056998b', N'联想G470A-IFI', N'CPU型号：Intel 酷睿i5 2450M屏幕尺寸：14英寸内存容量：2GB硬盘容量：500GBCPU主频：2.5GHz笔记本重：2.2Kg', CAST(3465.00 AS Decimal(18, 2)), N'c9285a49_972c_4356_a893_3e2a4e45c17d.jpg', 1)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'1ce92b9e-9d6e-4345-ad89-a43d58939172', N'SAMSUNG 三星S7562', N'SAMSUNG 三星S7562双卡3G智能手机(白)Android 4.0操作系统 4.0英寸大屏 1GHz处理器', CAST(1578.00 AS Decimal(18, 2)), N'333c0de9_cae2_4458_a675_3560e8525ae5.jpg', 0)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'5ba927af-0016-475c-8617-b2dc0b01f9c0', N'惠普LaserjetM1005黑白激光一体机', N'HP 惠普  LaserjetM1005 黑白激光一体机(打印 扫描 复印)。', CAST(1459.00 AS Decimal(18, 2)), N'dafeaaed_0b93_45ea_8b04_00dd86c62d5e.jpg', 1)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'fa9bf134-ee4d-4cbd-ba82-b718eb140df6', N'惠普G42-382TX（XU766PA）', N'CPU型号：Intel 酷睿i3 370M屏幕尺寸：14英寸内存容量：2GB硬盘容量：500GBCPU主频：2.4GHz笔记本重：2.2Kg', CAST(3860.00 AS Decimal(18, 2)), N'bc0d0d76_3d79_472e_86bb_63a9376d2bab.jpg', 1)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'b2d4480d-bc64-447f-9ee1-d5e1867342a9', N'惠普Envy 4-1008tx（B4P51PA）', N'CPU型号：Intel 酷睿i5 3317U屏幕尺寸：14英寸内存容量：4GB硬盘容量：500GBCPU主频：1.7GHz笔记本重：1.75Kg', CAST(5399.00 AS Decimal(18, 2)), N'29ebfc59_e14a_49bc_9a41_d0796f392475.jpg', 1)
INSERT [dbo].[Products] ([ID], [Name], [Description], [UnitPrice], [ImageUrl], [IsFeatured]) VALUES (N'd091265a-81f6-4337-846b-e1d676463dcb', N'NOKIA 诺基亚Lumia 800C', N'NOKIA 诺基亚Lumia 800C 全新WP系统 时尚智能3G手机(电信定制 WP Mango系统 黑)', CAST(1585.00 AS Decimal(18, 2)), N'82d1556f_1238_43ce_a5fd_410cc246162e.jpg', 1)
/****** Object:  Table [dbo].[Categorizations]    Script Date: 11/03/2012 19:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categorizations]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categorizations](
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[CategoryID] [uniqueidentifier] NOT NULL,
	[ProductID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.Categorizations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'5c56c331-aebe-4d88-bfc0-1ac94917975a', N'32baec42-edad-41a5-bd57-1726870affcd', N'441c61c5-7332-41e4-b432-64326f2dbb0f')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'd18a0d6f-154b-4795-86d9-49c62686c3c7', N'18cfaa08-5832-4c57-a532-1efc1e02a432', N'5ad2dc87-111a-4c8b-9a84-4750abf5032f')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'34b07ba3-37d3-4e4d-8ae1-538b254f0e15', N'18cfaa08-5832-4c57-a532-1efc1e02a432', N'fa9bf134-ee4d-4cbd-ba82-b718eb140df6')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'4657784d-f426-498d-8ddb-572bf804a3b2', N'fa4afef9-d074-4c5b-954f-3a3e22969b26', N'556aa854-41b1-4d99-8419-3ce5cf902e9a')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'2c68929d-f405-4234-9be1-5dfc6c0ef2f0', N'18cfaa08-5832-4c57-a532-1efc1e02a432', N'2986f586-03ff-470d-bc48-98775056998b')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'64de10cb-d882-489d-9f3c-63bd704ef611', N'17eeba7a-86a4-4980-8dcd-fa8656988fb4', N'9c36236e-56cc-4b3d-8405-934c084cf8fa')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'5fc07a0b-87b6-4edd-9bbc-7309950c1f98', N'17eeba7a-86a4-4980-8dcd-fa8656988fb4', N'5ba927af-0016-475c-8617-b2dc0b01f9c0')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'f98c1757-bf5a-4df0-905c-79f20a97c632', N'fa4afef9-d074-4c5b-954f-3a3e22969b26', N'973a3217-f504-4842-a7a0-2cbbd8e561da')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'48f2c14e-7427-4f82-9159-7d6660f93b64', N'18cfaa08-5832-4c57-a532-1efc1e02a432', N'b2d4480d-bc64-447f-9ee1-d5e1867342a9')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'8012ea24-fadf-4af7-b660-7ebfa3624fe4', N'ba0c3efd-507c-48de-b124-f318a4712764', N'5c04766f-ed08-4427-b3f0-798bfc021232')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'b161b53f-457f-46bd-a7f1-87c3dca696dd', N'32baec42-edad-41a5-bd57-1726870affcd', N'091c2ca8-6b5e-4268-a471-402f12de7257')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'5ba6d3b2-e09a-48cc-8e73-8bd6386d9774', N'fa4afef9-d074-4c5b-954f-3a3e22969b26', N'1ce92b9e-9d6e-4345-ad89-a43d58939172')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'0105ef4d-142f-473b-8361-90e0c804b567', N'ba0c3efd-507c-48de-b124-f318a4712764', N'af114c11-fd1f-4759-b0d7-666d438fefd6')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'862e4a26-07ce-4ad0-be69-a041810f70dc', N'fa4afef9-d074-4c5b-954f-3a3e22969b26', N'd091265a-81f6-4337-846b-e1d676463dcb')
INSERT [dbo].[Categorizations] ([ID], [CategoryID], [ProductID]) VALUES (N'a402de2f-55ff-44f4-9181-c105e4203500', N'18cfaa08-5832-4c57-a532-1efc1e02a432', N'f7c2a2dd-5453-49c4-a6f8-94e049b408de')
/****** Object:  Table [dbo].[Categories]    Script Date: 11/03/2012 19:24:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Name] [nvarchar](25) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Categories] ([ID], [Name], [Description]) VALUES (N'32baec42-edad-41a5-bd57-1726870affcd', N'台式电脑', N'各种品牌的台式电脑')
INSERT [dbo].[Categories] ([ID], [Name], [Description]) VALUES (N'18cfaa08-5832-4c57-a532-1efc1e02a432', N'笔记本电脑', N'各种品牌的笔记本电脑')
INSERT [dbo].[Categories] ([ID], [Name], [Description]) VALUES (N'fa4afef9-d074-4c5b-954f-3a3e22969b26', N'手机', N'手机')
INSERT [dbo].[Categories] ([ID], [Name], [Description]) VALUES (N'ba0c3efd-507c-48de-b124-f318a4712764', N'平板设备', N'包括平板电脑和MID设备')
INSERT [dbo].[Categories] ([ID], [Name], [Description]) VALUES (N'17eeba7a-86a4-4980-8dcd-fa8656988fb4', N'打印机', N'打印机设备')
/****** Object:  Table [dbo].[Users]    Script Date: 11/03/2012 19:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[UserName] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](80) NOT NULL,
	[IsDisabled] [bit] NOT NULL,
	[DateRegistered] [datetime] NOT NULL,
	[DateLastLogon] [datetime] NULL,
	[Contact] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[ContactAddress_Country] [nvarchar](max) NULL,
	[ContactAddress_State] [nvarchar](max) NULL,
	[ContactAddress_City] [nvarchar](max) NULL,
	[ContactAddress_Street] [nvarchar](max) NULL,
	[ContactAddress_Zip] [nvarchar](max) NULL,
	[DeliveryAddress_Country] [nvarchar](max) NULL,
	[DeliveryAddress_State] [nvarchar](max) NULL,
	[DeliveryAddress_City] [nvarchar](max) NULL,
	[DeliveryAddress_Street] [nvarchar](max) NULL,
	[DeliveryAddress_Zip] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Email], [IsDisabled], [DateRegistered], [DateLastLogon], [Contact], [PhoneNumber], [ContactAddress_Country], [ContactAddress_State], [ContactAddress_City], [ContactAddress_Street], [ContactAddress_Zip], [DeliveryAddress_Country], [DeliveryAddress_State], [DeliveryAddress_City], [DeliveryAddress_Street], [DeliveryAddress_Zip]) VALUES (N'3755a9dc-fa85-412a-87e9-146082db1a68', N'daxnet', N'daxnet', N'daxnet@ByteartRetail.com', 0, CAST(0x0000A0E800E71712 AS DateTime), NULL, N'dax.net', N'0123-45678912', N'中国', N'上海市', N'上海市', N'ABC大道63号，DEF大厦G楼', N'200000', N'中国', N'上海市', N'上海市', N'ABC大道63号，DEF大厦G楼', N'200000')
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Email], [IsDisabled], [DateRegistered], [DateLastLogon], [Contact], [PhoneNumber], [ContactAddress_Country], [ContactAddress_State], [ContactAddress_City], [ContactAddress_Street], [ContactAddress_Zip], [DeliveryAddress_Country], [DeliveryAddress_State], [DeliveryAddress_City], [DeliveryAddress_Street], [DeliveryAddress_Zip]) VALUES (N'4e5e6fbd-68fb-4619-b30b-17acbc1061c4', N'buyer', N'buyer', N'buyer@ByteartRetail.com', 0, CAST(0x0000A0F600B0BCB5 AS DateTime), NULL, N'Buyer', N'1234567', N'中国', N'上海市', N'上海', N'ABC大道', N'200000', N'中国', N'上海市', N'上海', N'ABC大道', N'200000')
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Email], [IsDisabled], [DateRegistered], [DateLastLogon], [Contact], [PhoneNumber], [ContactAddress_Country], [ContactAddress_State], [ContactAddress_City], [ContactAddress_Street], [ContactAddress_Zip], [DeliveryAddress_Country], [DeliveryAddress_State], [DeliveryAddress_City], [DeliveryAddress_Street], [DeliveryAddress_Zip]) VALUES (N'27f2c2d1-5219-48d9-8e1f-185909d7494f', N'admin', N'admin', N'admin@ByteartRetail.com', 0, CAST(0x0000A0F600AD02BA AS DateTime), NULL, N'admin', N'1234567', N'中国', N'上海市', N'上海', N'ABC大道', N'200000', N'中国', N'上海市', N'上海', N'ABC大道', N'200000')
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Email], [IsDisabled], [DateRegistered], [DateLastLogon], [Contact], [PhoneNumber], [ContactAddress_Country], [ContactAddress_State], [ContactAddress_City], [ContactAddress_Street], [ContactAddress_Zip], [DeliveryAddress_Country], [DeliveryAddress_State], [DeliveryAddress_City], [DeliveryAddress_Street], [DeliveryAddress_Zip]) VALUES (N'94802ce2-18ce-44b1-9c56-599bd8c25dc2', N'sales', N'sales', N'sales@ByteartRetail.com', 0, CAST(0x0000A0F600B07EEF AS DateTime), NULL, N'Sales Rep', N'1234567', N'中国', N'上海市', N'上海', N'ABC大道', N'200000', N'中国', N'上海市', N'上海', N'ABC大道', N'200000')
/****** Object:  Table [dbo].[UserRoles]    Script Date: 11/03/2012 19:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserRoles](
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[UserID] [uniqueidentifier] NOT NULL,
	[RoleID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.UserRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[UserRoles] ([ID], [UserID], [RoleID]) VALUES (N'14eeae0a-d5e5-4fec-a0c7-34e50a81efcc', N'3755a9dc-fa85-412a-87e9-146082db1a68', N'068d4ff3-dda8-4274-8c7d-a0cea5a3b3d3')
INSERT [dbo].[UserRoles] ([ID], [UserID], [RoleID]) VALUES (N'2280d2ed-c37c-40a8-bf04-56ead38c3c3c', N'd4a6bcf2-6b54-4db6-99f8-0e561f657cad', N'068d4ff3-dda8-4274-8c7d-a0cea5a3b3d3')
INSERT [dbo].[UserRoles] ([ID], [UserID], [RoleID]) VALUES (N'cb187795-9566-4262-8267-5d062bffaffd', N'4e5e6fbd-68fb-4619-b30b-17acbc1061c4', N'4688f0c4-39d0-4bef-babd-08bb64615c69')
INSERT [dbo].[UserRoles] ([ID], [UserID], [RoleID]) VALUES (N'67c81bde-dab8-43c2-9244-8a7d577e2b13', N'6ed37409-8df3-4840-96fd-daaa1c5277ca', N'068d4ff3-dda8-4274-8c7d-a0cea5a3b3d3')
INSERT [dbo].[UserRoles] ([ID], [UserID], [RoleID]) VALUES (N'0ae8d163-54fc-44ad-98ec-912984498948', N'94802ce2-18ce-44b1-9c56-599bd8c25dc2', N'80181f68-890d-4956-bbb7-0782e5929860')
INSERT [dbo].[UserRoles] ([ID], [UserID], [RoleID]) VALUES (N'f742b0fb-e217-4e64-81b6-cc699199c6ce', N'27f2c2d1-5219-48d9-8e1f-185909d7494f', N'7d25079e-23b6-4f8f-8b37-eabf7ab18e51')
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 11/03/2012 19:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShoppingCarts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShoppingCarts](
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[User_ID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_dbo.ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[ShoppingCarts] ([ID], [User_ID]) VALUES (N'd558d799-45e7-4707-94fc-88f6381a0db2', N'3755a9dc-fa85-412a-87e9-146082db1a68')
INSERT [dbo].[ShoppingCarts] ([ID], [User_ID]) VALUES (N'22a469c2-c5aa-44a5-bed2-f896e6ef8ab2', N'4e5e6fbd-68fb-4619-b30b-17acbc1061c4')
INSERT [dbo].[ShoppingCarts] ([ID], [User_ID]) VALUES (N'29f34ab7-2152-4cc9-ac47-01dc89cc4e3e', N'27f2c2d1-5219-48d9-8e1f-185909d7494f')
INSERT [dbo].[ShoppingCarts] ([ID], [User_ID]) VALUES (N'94b9a4e9-dd50-4d26-80fe-d11e1c6f6319', N'94802ce2-18ce-44b1-9c56-599bd8c25dc2')
/****** Object:  Table [dbo].[SalesOrders]    Script Date: 11/03/2012 19:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalesOrders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SalesOrders](
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[DateDispatched] [datetime] NULL,
	[DateDelivered] [datetime] NULL,
	[User_ID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_dbo.SalesOrders] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[SalesOrders] ([ID], [Status], [DateCreated], [DateDispatched], [DateDelivered], [User_ID]) VALUES (N'c1619ed1-8c36-4591-8b5b-0a2079b9d105', 3, CAST(0x0000A0F400E0C0CB AS DateTime), CAST(0x0000A0F500DA368E AS DateTime), NULL, N'3755a9dc-fa85-412a-87e9-146082db1a68')
INSERT [dbo].[SalesOrders] ([ID], [Status], [DateCreated], [DateDispatched], [DateDelivered], [User_ID]) VALUES (N'28cd38a9-70d3-42ad-93b0-39283f4627f8', 4, CAST(0x0000A0F7010A855D AS DateTime), CAST(0x0000A0F7010AD6E8 AS DateTime), CAST(0x0000A0F7010AF048 AS DateTime), N'3755a9dc-fa85-412a-87e9-146082db1a68')
INSERT [dbo].[SalesOrders] ([ID], [Status], [DateCreated], [DateDispatched], [DateDelivered], [User_ID]) VALUES (N'642e9387-1479-4714-973a-69dde85b5f03', 1, CAST(0x0000A0F600B6A9F3 AS DateTime), NULL, NULL, N'3755a9dc-fa85-412a-87e9-146082db1a68')
INSERT [dbo].[SalesOrders] ([ID], [Status], [DateCreated], [DateDispatched], [DateDelivered], [User_ID]) VALUES (N'd7320573-bb41-406f-a400-f415cecfb321', 4, CAST(0x0000A0F400E12D4D AS DateTime), CAST(0x0000A0F500AE52B5 AS DateTime), CAST(0x0000A0F500D4E094 AS DateTime), N'3755a9dc-fa85-412a-87e9-146082db1a68')
/****** Object:  Table [dbo].[SalesLines]    Script Date: 11/03/2012 19:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalesLines]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SalesLines](
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Quantity] [int] NOT NULL,
	[Product_ID] [uniqueidentifier] NULL,
	[SalesOrder_ID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_dbo.SalesLines] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[SalesLines] ([ID], [Quantity], [Product_ID], [SalesOrder_ID]) VALUES (N'3f70a8d5-2c62-4a45-8e37-19946940b20d', 1, N'5ad2dc87-111a-4c8b-9a84-4750abf5032f', N'd7320573-bb41-406f-a400-f415cecfb321')
INSERT [dbo].[SalesLines] ([ID], [Quantity], [Product_ID], [SalesOrder_ID]) VALUES (N'290a2c06-ca17-4201-8a4d-1df4cb3a08ef', 1, N'5ad2dc87-111a-4c8b-9a84-4750abf5032f', N'642e9387-1479-4714-973a-69dde85b5f03')
INSERT [dbo].[SalesLines] ([ID], [Quantity], [Product_ID], [SalesOrder_ID]) VALUES (N'ef36ba0f-0151-49ec-b98e-201d87e29386', 1, N'af114c11-fd1f-4759-b0d7-666d438fefd6', N'c1619ed1-8c36-4591-8b5b-0a2079b9d105')
INSERT [dbo].[SalesLines] ([ID], [Quantity], [Product_ID], [SalesOrder_ID]) VALUES (N'431aecf5-9780-4d84-95cb-31548a82fec5', 1, N'5c04766f-ed08-4427-b3f0-798bfc021232', N'd7320573-bb41-406f-a400-f415cecfb321')
INSERT [dbo].[SalesLines] ([ID], [Quantity], [Product_ID], [SalesOrder_ID]) VALUES (N'7ed0e53a-3519-4059-947d-52a3deb18580', 1, N'5c04766f-ed08-4427-b3f0-798bfc021232', N'28cd38a9-70d3-42ad-93b0-39283f4627f8')
INSERT [dbo].[SalesLines] ([ID], [Quantity], [Product_ID], [SalesOrder_ID]) VALUES (N'e7523c81-07db-4b97-82e5-5fb5d036d544', 1, N'af114c11-fd1f-4759-b0d7-666d438fefd6', N'28cd38a9-70d3-42ad-93b0-39283f4627f8')
INSERT [dbo].[SalesLines] ([ID], [Quantity], [Product_ID], [SalesOrder_ID]) VALUES (N'994cb3fd-f9c2-4347-be71-cfc89f2fe0bf', 1, N'b2d4480d-bc64-447f-9ee1-d5e1867342a9', N'd7320573-bb41-406f-a400-f415cecfb321')
/****** Object:  Table [dbo].[ShoppingCartItems]    Script Date: 11/03/2012 19:24:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ShoppingCartItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ShoppingCartItems](
	[ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Quantity] [int] NOT NULL,
	[Product_ID] [uniqueidentifier] NULL,
	[ShoppingCart_ID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_dbo.ShoppingCartItems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  ForeignKey [FK_dbo.SalesLines_dbo.Products_Product_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesLines_dbo.Products_Product_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesLines]'))
ALTER TABLE [dbo].[SalesLines]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalesLines_dbo.Products_Product_ID] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Products] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesLines_dbo.Products_Product_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesLines]'))
ALTER TABLE [dbo].[SalesLines] CHECK CONSTRAINT [FK_dbo.SalesLines_dbo.Products_Product_ID]
GO
/****** Object:  ForeignKey [FK_dbo.SalesLines_dbo.SalesOrders_SalesOrder_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesLines_dbo.SalesOrders_SalesOrder_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesLines]'))
ALTER TABLE [dbo].[SalesLines]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalesLines_dbo.SalesOrders_SalesOrder_ID] FOREIGN KEY([SalesOrder_ID])
REFERENCES [dbo].[SalesOrders] ([ID])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesLines_dbo.SalesOrders_SalesOrder_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesLines]'))
ALTER TABLE [dbo].[SalesLines] CHECK CONSTRAINT [FK_dbo.SalesLines_dbo.SalesOrders_SalesOrder_ID]
GO
/****** Object:  ForeignKey [FK_dbo.SalesOrders_dbo.Users_User_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesOrders_dbo.Users_User_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesOrders]'))
ALTER TABLE [dbo].[SalesOrders]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SalesOrders_dbo.Users_User_ID] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.SalesOrders_dbo.Users_User_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesOrders]'))
ALTER TABLE [dbo].[SalesOrders] CHECK CONSTRAINT [FK_dbo.SalesOrders_dbo.Users_User_ID]
GO
/****** Object:  ForeignKey [FK_dbo.ShoppingCartItems_dbo.Products_Product_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCartItems_dbo.Products_Product_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCartItems]'))
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShoppingCartItems_dbo.Products_Product_ID] FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Products] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCartItems_dbo.Products_Product_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCartItems]'))
ALTER TABLE [dbo].[ShoppingCartItems] CHECK CONSTRAINT [FK_dbo.ShoppingCartItems_dbo.Products_Product_ID]
GO
/****** Object:  ForeignKey [FK_dbo.ShoppingCartItems_dbo.ShoppingCarts_ShoppingCart_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCartItems_dbo.ShoppingCarts_ShoppingCart_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCartItems]'))
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShoppingCartItems_dbo.ShoppingCarts_ShoppingCart_ID] FOREIGN KEY([ShoppingCart_ID])
REFERENCES [dbo].[ShoppingCarts] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCartItems_dbo.ShoppingCarts_ShoppingCart_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCartItems]'))
ALTER TABLE [dbo].[ShoppingCartItems] CHECK CONSTRAINT [FK_dbo.ShoppingCartItems_dbo.ShoppingCarts_ShoppingCart_ID]
GO
/****** Object:  ForeignKey [FK_dbo.ShoppingCarts_dbo.Users_User_ID]    Script Date: 11/03/2012 19:24:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCarts_dbo.Users_User_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCarts]'))
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ShoppingCarts_dbo.Users_User_ID] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.ShoppingCarts_dbo.Users_User_ID]') AND parent_object_id = OBJECT_ID(N'[dbo].[ShoppingCarts]'))
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_dbo.ShoppingCarts_dbo.Users_User_ID]
GO
