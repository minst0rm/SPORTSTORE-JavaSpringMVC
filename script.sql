USE [master]
GO
/****** Object:  Database [test123]    Script Date: 6/20/2021 11:08:19 PM ******/
CREATE DATABASE [test123]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test123', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\test123.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test123_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\test123_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [test123] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test123].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test123] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test123] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test123] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test123] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test123] SET ARITHABORT OFF 
GO
ALTER DATABASE [test123] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test123] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test123] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test123] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test123] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test123] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test123] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test123] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test123] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test123] SET  DISABLE_BROKER 
GO
ALTER DATABASE [test123] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test123] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test123] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test123] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test123] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test123] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test123] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test123] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [test123] SET  MULTI_USER 
GO
ALTER DATABASE [test123] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test123] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test123] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test123] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test123] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [test123] SET QUERY_STORE = OFF
GO
USE [test123]
GO
/****** Object:  Table [dbo].[admin_users]    Script Date: 6/20/2021 11:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[level] [nvarchar](255) NULL,
	[remember_token] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/20/2021 11:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[slug] [nvarchar](255) NULL,
	[parent_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detail_imgs]    Script Date: 6/20/2021 11:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detail_imgs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[images_url] [text] NULL,
	[pro_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 6/20/2021 11:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pro_id] [int] NOT NULL,
	[qty] [int] NULL,
	[o_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/20/2021 11:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[qty] [int] NULL,
	[sub_total] [float] NULL,
	[total] [float] NULL,
	[status] [int] NULL,
	[type] [nvarchar](50) NULL,
	[note] [text] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pro_details]    Script Date: 6/20/2021 11:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[size] [nvarchar](255) NULL,
	[color] [nvarchar](255) NULL,
	[quantity] [nvarchar](255) NULL,
	[note] [ntext] NULL,
	[pro_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 6/20/2021 11:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[slug] [nvarchar](255) NULL,
	[intro] [nvarchar](255) NULL,
	[packet] [nvarchar](255) NULL,
	[promo1] [nvarchar](255) NULL,
	[promo2] [nvarchar](255) NULL,
	[promo3] [nvarchar](255) NULL,
	[images] [nvarchar](255) NULL,
	[price] [float] NULL,
	[tag] [nvarchar](255) NULL,
	[status] [int] NULL,
	[review] [ntext] NULL,
	[cat_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 6/20/2021 11:08:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[status] [int] NULL,
	[remember_token] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[admin_users] ON 

INSERT [dbo].[admin_users] ([id], [name], [email], [password], [level], [remember_token], [created_at], [updated_at]) VALUES (1, N'ADMIN', N'admin@manthien.com', N'123', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[admin_users] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (1, N'Dụng cụ tập GYM', N'dudng-cud-tadp-gym', 0, CAST(N'2021-06-20T21:23:50.623' AS DateTime), NULL)
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (2, N'Giày chạy bộ', N'giady-chady-bod', 0, CAST(N'2021-06-20T21:42:32.823' AS DateTime), NULL)
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (3, N'Áo thể thao', N'ado-thed-thao', 0, CAST(N'2021-06-20T21:42:55.337' AS DateTime), NULL)
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (4, N'Quần thể thao', N'quadn-thed-thao', 0, CAST(N'2021-06-20T21:43:03.487' AS DateTime), NULL)
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (5, N'Dụng cụ bóng bàn', N'dudng-cud-bodng-badn', 0, CAST(N'2021-06-20T21:43:33.400' AS DateTime), NULL)
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (6, N'Dụng cụ bóng đá', N'dudng-cud-bodng-dad', 0, CAST(N'2021-06-20T21:43:39.663' AS DateTime), NULL)
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (7, N'Dụng cụ thể thao ngoài trời', N'dudng-cud-thed-thao-ngoadi-trodi', 0, CAST(N'2021-06-20T21:43:50.780' AS DateTime), NULL)
INSERT [dbo].[categories] ([id], [name], [slug], [parent_id], [created_at], [updated_at]) VALUES (8, N'Dụng cụ Tennis', N'dudng-cud-tennis', 0, CAST(N'2021-06-20T21:58:34.127' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[order_details] ON 

INSERT [dbo].[order_details] ([id], [pro_id], [qty], [o_id], [created_at], [updated_at]) VALUES (1, 2, 1, 1, CAST(N'2021-06-20T22:59:30.780' AS DateTime), NULL)
INSERT [dbo].[order_details] ([id], [pro_id], [qty], [o_id], [created_at], [updated_at]) VALUES (2, 6, 1, 1, CAST(N'2021-06-20T22:59:30.787' AS DateTime), NULL)
INSERT [dbo].[order_details] ([id], [pro_id], [qty], [o_id], [created_at], [updated_at]) VALUES (3, 4, 1, 2, CAST(N'2021-06-20T22:59:58.407' AS DateTime), NULL)
INSERT [dbo].[order_details] ([id], [pro_id], [qty], [o_id], [created_at], [updated_at]) VALUES (4, 8, 2, 2, CAST(N'2021-06-20T22:59:58.410' AS DateTime), NULL)
INSERT [dbo].[order_details] ([id], [pro_id], [qty], [o_id], [created_at], [updated_at]) VALUES (5, 7, 1, 3, CAST(N'2021-06-20T23:00:28.183' AS DateTime), NULL)
INSERT [dbo].[order_details] ([id], [pro_id], [qty], [o_id], [created_at], [updated_at]) VALUES (6, 5, 1, 3, CAST(N'2021-06-20T23:00:28.187' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[order_details] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [qty], [sub_total], [total], [status], [type], [note], [created_at], [updated_at], [user_id]) VALUES (1, NULL, NULL, 19205000, 1, NULL, NULL, CAST(N'2021-06-20T22:59:30.733' AS DateTime), CAST(N'2021-06-20T23:00:45.360' AS DateTime), 1)
INSERT [dbo].[orders] ([id], [qty], [sub_total], [total], [status], [type], [note], [created_at], [updated_at], [user_id]) VALUES (2, NULL, NULL, 14190000, NULL, NULL, NULL, CAST(N'2021-06-20T22:59:58.397' AS DateTime), NULL, 2)
INSERT [dbo].[orders] ([id], [qty], [sub_total], [total], [status], [type], [note], [created_at], [updated_at], [user_id]) VALUES (3, NULL, NULL, 4880000, 2, NULL, NULL, CAST(N'2021-06-20T23:00:28.180' AS DateTime), CAST(N'2021-06-20T23:00:55.947' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[pro_details] ON 

INSERT [dbo].[pro_details] ([id], [size], [color], [quantity], [note], [pro_id], [created_at], [updated_at]) VALUES (1, N'', N'', N'còn hàng', NULL, 1, CAST(N'2021-06-20T21:45:46.860' AS DateTime), CAST(N'2021-06-20T21:50:18.263' AS DateTime))
INSERT [dbo].[pro_details] ([id], [size], [color], [quantity], [note], [pro_id], [created_at], [updated_at]) VALUES (2, N'', N'', N'còn hàng', NULL, 2, CAST(N'2021-06-20T21:47:50.280' AS DateTime), NULL)
INSERT [dbo].[pro_details] ([id], [size], [color], [quantity], [note], [pro_id], [created_at], [updated_at]) VALUES (3, N'116-150cm 84-130cm ', N'đen', N'còn hàng', NULL, 3, CAST(N'2021-06-20T21:49:19.087' AS DateTime), NULL)
INSERT [dbo].[pro_details] ([id], [size], [color], [quantity], [note], [pro_id], [created_at], [updated_at]) VALUES (4, N'1820 x 910 x 760 mm.', N'xanh', N'còn hàng', NULL, 4, CAST(N'2021-06-20T21:51:56.830' AS DateTime), NULL)
INSERT [dbo].[pro_details] ([id], [size], [color], [quantity], [note], [pro_id], [created_at], [updated_at]) VALUES (5, N'', N'', N'còn hàng', NULL, 5, CAST(N'2021-06-20T21:53:24.690' AS DateTime), NULL)
INSERT [dbo].[pro_details] ([id], [size], [color], [quantity], [note], [pro_id], [created_at], [updated_at]) VALUES (6, N'', N'', N'còn hàng', NULL, 6, CAST(N'2021-06-20T22:03:10.863' AS DateTime), NULL)
INSERT [dbo].[pro_details] ([id], [size], [color], [quantity], [note], [pro_id], [created_at], [updated_at]) VALUES (7, N'1900 x 650 x 2250 mm (dài x rộng x cao)', N'', N'còn hàng', NULL, 7, CAST(N'2021-06-20T22:07:24.620' AS DateTime), NULL)
INSERT [dbo].[pro_details] ([id], [size], [color], [quantity], [note], [pro_id], [created_at], [updated_at]) VALUES (8, N'9UK 10UK 10.5UK', N'Xanh, Đen, Trắng', N'còn hàng', NULL, 8, CAST(N'2021-06-20T22:31:00.557' AS DateTime), CAST(N'2021-06-20T22:31:28.730' AS DateTime))
SET IDENTITY_INSERT [dbo].[pro_details] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (1, N'Trụ đấm bốc HuiJun HJ-G070', N'trud-dadm-bodc-huijun-hj-g070', N'', N'', N'', NULL, NULL, N'gym1.jpg', 5220000, NULL, 1, N'1. Thông tin trụ đấm bốc HuiJun HJ-G070.
- Mã sản phẩm: HJ-G070.

- Hãng sản xuất: HuiJun.

- Xuất xứ: Trung Quốc.

- Trụ đấm bốc HuiJun HJ-G070 được làm chắc chắn, thiết kế dạng tự đứng và chuyên dụng để tập võ tại nhà hoặc sử dụng cho các phòng tập. Thiết kế chi tiết của trụ đấm Huijun HJ-G070 gồm:

+ Vỏ ngoài của thân trụ đấm bốc được làm từ da PU và bên trong ruột là EVA.

+ Chân đế được làm từ nhựa cao cấp, cực dày, cực bền và được nối với thân trụ bằng một hệ thống ốc vít chặt cố định. Với đế trụ thì bạn sẽ cho nước hoặc cát vào để làm đối trọng cho thân bao. Đế trụ có đường kính 60cm và dưới chân có hệ thống hút giúp sản phẩm có thể đứng vững hơn trên mặt sàn.
- Tổng chiều cao bao cát tự đứng: 175 cm.

- Chiều cao thân bao cát: 115 cm.

- Trụ đấm bốc khi chưa đổ nước hoặc cát vào làm đối trọng nặng 35 kg.

- Đế trụ có dung tích 0.35m³.

- Trụ đấm bốc HuiJun HJ-G070 phù hợp sử dụng để tập luyện võ thuật cho cảm giác như tập với người thật. Sản phẩm rất thích hợp dành cho vận động viên thi đấu đối kháng các môn võ như Wushu, Sanshou, Boxing hay Muay Thai...', 1, CAST(N'2021-06-20T21:45:46.850' AS DateTime), CAST(N'2021-06-20T21:50:18.257' AS DateTime))
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (2, N'Giàn tạ đa năng Robot HQ-908S', N'giadn-tad-da-nadng-robot-hq-908s', NULL, NULL, NULL, NULL, NULL, N'gym2.jpg', 18925000, NULL, 1, N'1. Thông tin giàn tạ đa năng HQ-908S.
- Mã sản phẩm: HQ-908S.

- Đơn vị nhập khẩu: Thiên Trường Sport.

- Xuất xứ: Trung Quốc.

- Giàn tạ đa năng HQ-908S được thiết kế rất chắc chắn, tích hợp hơn 52 bài tập thể hình hiệu quả cho Gymer và hỗ trợ 3 người cùng tập luyện một thời điểm. Đây là mẫu dụng cụ tập Gym mới được nhập khẩu bởi Thiên Trường nhằm phục vụ nhu cầu tập luyện thể hình của anh em Gymer. Thiết kế chi tiết của mẫu giàn tạ HQ-908S này gồm:

+ Toàn bộ khung chính của giàn tạ được làm từ thép hộp 50 x 70mm, cực dày và có khả năng chịu lực tốt. Các vị trí thanh phụ như thanh kéo xô, thanh tập xà đơn, khung tập xà kép, khung tập Squat, thanh đặt bánh tạ, thanh đá chân,... cũng được làm từ thép dày, chất lượng. Bề mặt khung thép được sơn tĩnh điện cao cấp, có khả năng chống bong tróc và rỉ sét.
+ Bộ phận ghế ngồi tập, bàn tập tay trước, vị trí đặt cẳng tay và tựa lưng khi tập xà kép, vị trí đặt vai khi tập Squat đều được bọc mút da cao cấp chống xẹp, có độ bền cao và mang lại cảm giác thoải mái cho người sử dụng. Ghế ngồi tập kéo xô và bàn tập tay trước đều có chức năng điều chỉnh độ cao dễ dàng giúp phù hợp cho người tập có chiều cao khác nhau.

+ HQ-908S tích hợp 13 đĩa tạ, với tổng trọng lượng lên đến 73kg và toàn bộ đĩa tạ đều được bọc nhựa giúp đảm bảo độ bền khi sử dụng lâu ngày. Hệ thống đĩa tạ có ốp hai bên giúp bảo vệ người tập tốt hơn. Đặc biệt, sản phẩm sử dụng hệ thống ròng rọc bằng bánh xe và cáp chuyên dụng có chức năng chống mài mòn, dây có đường kính lên tới 6mm giúp đảm bảo an toàn tuyệt đối cho người sử dụng.

+ Ngoài các bộ phận cơ bản như những bộ giàn tạ trước đây, giàn tạ đa năng HQ-908S còn thiết kế thêm nhiều bộ phận hỗ trợ tập luyện khác như bộ phận tập xà đơn, bộ phận tập xà kép, bộ phận tập Squat, thanh đặt bánh tạ,...', 1, CAST(N'2021-06-20T21:47:50.273' AS DateTime), NULL)
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (3, N'Xà đơn gắn cửa 2020', N'xad-dodn-gadn-cuda-2020', NULL, NULL, NULL, NULL, NULL, N'gym3.jpg', 200000, NULL, 1, N'1. Thông tin xà đơn gắn cửa 2020.
- Mã sản phẩm: XD2020.

- Xuất xứ: Trung Quốc.

- Xà đơn treo tường 2020 được thiết kế gồm có 3 kích thước cơ bản và có giá bán tương ứng như sau:

+ Kích thước 66-100cm phù hợp lắp cho khung cửa ra vào có chiều rộng từ 68 đến 90cm, có trọng lượng 2kg và giá bán 350.000 đồng/chiếc.

+ Kích thước 84-130cm phù hợp lắp cho khung cửa ra vào có chiều rộng từ 86 đến 120cm, có trọng lượng 2.2kg và có giá bán 400.000 đồng/chiếc.

+ Kích thước 116-150cm phù hợp lắp cho khung cửa ra vào có chiều rộng từ 118 đến 140cm, có trọng lượng 3kg và có giá bán 450.000 đồng/chiếc.
', 1, CAST(N'2021-06-20T21:49:19.083' AS DateTime), NULL)
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (4, N'Bàn bóng bàn Mini Harito 368', N'badn-bodng-badn-mini-harito-368', NULL, NULL, NULL, NULL, NULL, N'ban1.jpg', 3190000, NULL, 1, N'Thông tin bàn bóng bàn Mini Harito 368.
- Mã sản phẩm: 368.

- Thương hiệu: Harito.

- Xuất xứ: Trung Quốc.

- Bàn bóng bàn Mini Harito 368 được thiết kế nhỏ gọn, có chức năng gập lại sau khi chơi và phù hợp để chơi bóng bàn cho trẻ em, gia đình có không gian hẹp. Thiết kế chi tiết của chiếc bàn bóng bàn này như sau:

+ Mặt bàn làm từ chất liệu gỗ MDF cao cấp, có độ dày 12mm và được sơn màu xanh chống lóa. Mặt bàn vô cùng phẳng mịn, có độ nảy chuẩn, đều ở mọi vị trí và có các đường kẻ sắc nét.', 5, CAST(N'2021-06-20T21:51:56.823' AS DateTime), NULL)
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (5, N'Quả bóng bàn Xiom 40+ ABS Bravo', N'quad-bodng-badn-xiom-40+-abs-bravo', NULL, NULL, NULL, NULL, NULL, N'ban2.jpg', 160000, NULL, 1, N'1. Thông tin quả bóng bàn Xiom 40+ ABS Bravo.
- Mã sản phẩm: BBXO ABS Bravo.

- Hãng sản xuất: Xiom.

- Xuất xứ: Trung Quốc.

- Quả bóng bàn Xiom 40+ ABS Bravo là dòng sản phẩm được sản xuất theo công nghệ hiện đại đạt chuẩn quốc tế được nhiều người lựa chọn.

2. Ưu điểm của quả bóng bàn Xiom 40+ ABS Bravo.
- Bóng được thiết kế nguyên khối không cần mối ghép giúp tăng độ bền và đã được kiểm định chất lượng bởi ITTF về độ nảy, độ tròn đạt chuẩn.

- Mặt bóng được thiết kế có độ nhám nhẹ giúp tạo độ bám bề mặt tốt, tránh bị trơn khi cầm.

- Vỏ bóng cứng cho độ nảy chuẩn và hạn chế tối đa khả năng bị móp, vỡ khi chơi.

- Chất liệu bóng rất an toàn với sức khỏe và môi trường.

- Bóng có mức giá rất hợp lý chỉ 160.000 đồng cho 1 hộp gồm 6 quả.', 5, CAST(N'2021-06-20T21:53:24.687' AS DateTime), NULL)
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (6, N'Găng tay tập Gym', N'gadng-tay-tadp-gym', NULL, NULL, NULL, NULL, NULL, N'gym4.jpg', 280000, NULL, 1, N'Thông tin găng tay tập Gym HJ-C1007.
- Mã sản phẩm: HJ-C1007.

- Thương hiệu: Huijun.

- Xuất xứ: Trung Quốc.

- Găng tay tập Gym HJ-C1007 chính hãng Huijun được thiết kế đẹp, may chắc chắn từ chất liệu da + vải lưới và có tác dụng bảo vệ tay khi nâng tạ, tập Gym. Thiết kế chi tiết của găng tay tập Gym như sau:

+ Găng được thiết kế dạng hở ngón, giúp thoáng khí và thoáng mồ hôi khi tập.

+ Đường may chắc chắn, độ bền cao.

+ Lòng bàn tay khi cầm nắm được gia cố giúp chống trơn trượt và chống mài mòn khi sử dụng lâu ngày.

+ Ngoài ra, phần khóa cổ tay được làm chắc chắn và quấn nhiều vòng giúp bảo vệ cổ tay khi nâng tạ nặng.

+ Sản phẩm được đựng trong túi giúp bảo quản dễ dàng sau khi tập.', 1, CAST(N'2021-06-20T22:03:10.823' AS DateTime), NULL)
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (7, N'Giàn tập tạ đa năng 2016', N'giadn-tadp-tad-da-nadng-2016', NULL, NULL, NULL, NULL, NULL, N'gym5.jpg', 4720000, NULL, 1, N'Thông tin giàn tập tạ đa năng 2016.
- Mã sản phẩm: GT2016.

- Xuất xứ: Trung Quốc.

- Giàn tập tạ đa năng 2016 được thiết kế chắc chắn từ khung thép chịu lực có độ bền cao, sơn tĩnh điện chống rỉ, nệm mút dày và hỗ trợ tập Gym tại nhà hiệu quả.', 1, CAST(N'2021-06-20T22:07:24.613' AS DateTime), NULL)
INSERT [dbo].[products] ([id], [name], [slug], [intro], [packet], [promo1], [promo2], [promo3], [images], [price], [tag], [status], [review], [cat_id], [created_at], [updated_at]) VALUES (8, N'GIÀY ULTRABOOST 21 X PARLEY', N'giady-ultraboost-21-x-parley', N'', N'', N'', NULL, NULL, N'giay1.jpg', 5500000, NULL, 1, N'GIÀY ULTRABOOST 21 X PARLEY
ĐÔI GIÀY CHẠY BỘ SIÊU ĐÀN HỒI LÀM TỪ CHẤT LIỆU TÁI CHẾ.
Đón chào nguồn năng lượng hoàn trả phi thường. Đôi giày adidas Ultraboost 21 x Parley cho độ đàn hồi cao hơn cùng thiết kế thân thiện với môi trường. Thân giày kết hợp chất liệu vải lưới, vải dệt thoi và vải ripstop, tất cả đều có nguồn gốc từ sợi Parley Ocean Plastic. Thiết kế này mô phỏng tính chất bảo vệ của trang phục quân đội, thể hiện nhu cầu bảo vệ đại dương.', 2, CAST(N'2021-06-20T22:31:00.550' AS DateTime), CAST(N'2021-06-20T22:31:28.713' AS DateTime))
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [email], [password], [phone], [address], [status], [remember_token], [created_at], [updated_at]) VALUES (1, N'Võ Ngọc Minh', N'minhpro.fc@gmail.com', N'123', N'0944425633', N'Quận 9', NULL, NULL, CAST(N'2021-06-20T21:23:12.837' AS DateTime), NULL)
INSERT [dbo].[users] ([id], [name], [email], [password], [phone], [address], [status], [remember_token], [created_at], [updated_at]) VALUES (2, N'Trần Công Trí', N'tri@gmail.com', N'123', N'09318045999', N'Man Thiện, Quận 9', NULL, NULL, CAST(N'2021-06-20T22:35:46.550' AS DateTime), NULL)
INSERT [dbo].[users] ([id], [name], [email], [password], [phone], [address], [status], [remember_token], [created_at], [updated_at]) VALUES (3, N'Lê Khánh Duy', N'duycc@hotmail.net', N'123', N'0999999111', N'Man Thiện, Quận 9, Thành phố Thủ Đức, Thành phố Hồ chí minh', NULL, NULL, CAST(N'2021-06-20T22:36:30.483' AS DateTime), NULL)
INSERT [dbo].[users] ([id], [name], [email], [password], [phone], [address], [status], [remember_token], [created_at], [updated_at]) VALUES (4, N'Nguyễn Hoàng Long', N'longgg@yahoo.com', N'123', N'0931804500', N'Học viện công nghệ, Quận 9, Thành phố Thủ Đức, Thành phố Hồ chí minh', NULL, NULL, CAST(N'2021-06-20T22:37:06.387' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[detail_imgs]  WITH CHECK ADD FOREIGN KEY([pro_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([pro_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([o_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[pro_details]  WITH CHECK ADD FOREIGN KEY([pro_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([cat_id])
REFERENCES [dbo].[categories] ([id])
GO
USE [master]
GO
ALTER DATABASE [test123] SET  READ_WRITE 
GO
