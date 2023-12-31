USE [master]
GO
/****** Object:  Database [Viesonet]    Script Date: 6/16/2023 11:04:38 PM ******/
CREATE DATABASE [Viesonet]
GO
ALTER DATABASE [Viesonet] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Viesonet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Viesonet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Viesonet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Viesonet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Viesonet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Viesonet] SET ARITHABORT OFF 
GO
ALTER DATABASE [Viesonet] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Viesonet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Viesonet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Viesonet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Viesonet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Viesonet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Viesonet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Viesonet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Viesonet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Viesonet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Viesonet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Viesonet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Viesonet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Viesonet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Viesonet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Viesonet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Viesonet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Viesonet] SET RECOVERY FULL 
GO
ALTER DATABASE [Viesonet] SET  MULTI_USER 
GO
ALTER DATABASE [Viesonet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Viesonet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Viesonet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Viesonet] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Viesonet] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Viesonet] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Viesonet] SET QUERY_STORE = ON
GO
ALTER DATABASE [Viesonet] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Viesonet]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[maBaiViet] [int] IDENTITY(1,1) NOT NULL,
	[sdt] [nvarchar](12) NULL,
	[ngayDang] [datetime] NULL,
	[moTa] [nvarchar](max) NULL,
	[hinhAnh] [nvarchar](100) NULL,
	[luotBinhLuan] [int] NULL,
	[luotThich] [int] NULL,
	[maCheDo] [int] NULL,
	[trangThai] [bit] NULL,
 CONSTRAINT [PK__BaiViet__51CC343A5EAE8013] PRIMARY KEY CLUSTERED 
(
	[maBaiViet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiVietViPham]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiVietViPham](
	[maToCao] [int] IDENTITY(1,1) NOT NULL,
	[sdt] [nvarchar](12) NULL,
	[maBaiViet] [int] NULL,
	[maLoai] [int] NULL,
	[trangThai] [bit] NULL,
	[ngayToCao] [datetime] NULL,
 CONSTRAINT [PK__BaiVietV__72218031F10FAC84] PRIMARY KEY CLUSTERED 
(
	[maToCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[banBe]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banBe](
	[maBanBe] [int] IDENTITY(1,1) NOT NULL,
	[sdt] [nvarchar](12) NULL,
	[sdtBb] [nvarchar](12) NULL,
	[ngayKb] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[maBanBe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CheDo]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheDo](
	[maCheDo] [int] IDENTITY(1,1) NOT NULL,
	[tenCheDo] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[maCheDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachBinhLuan]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachBinhLuan](
	[maBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[sdt] [nvarchar](12) NULL,
	[chiTiet] [nvarchar](max) NULL,
	[maBaiViet] [int] NULL,
	[ngayBinhLuan] [datetime] NULL,
 CONSTRAINT [PK__DanhSach__CF056B66F1DCFF02] PRIMARY KEY CLUSTERED 
(
	[maBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachKetBan]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachKetBan](
	[maLoiMoi] [int] IDENTITY(1,1) NOT NULL,
	[sdt] [nvarchar](12) NULL,
	[sdtNguoiLa] [nvarchar](12) NULL,
	[ngayGui] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoiMoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachYeuThich]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachYeuThich](
	[maYeuThich] [int] IDENTITY(1,1) NOT NULL,
	[sdt] [nvarchar](12) NULL,
	[maBaiViet] [int] NULL,
	[ngayYeuThich] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[maYeuThich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiViPham]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiViPham](
	[maLoai] [int] IDENTITY(1,1) NOT NULL,
	[chiTiet] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoiDung]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoiDung](
	[sdt] [nvarchar](12) NOT NULL,
	[hoTen] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[matKhau] [nvarchar](16) NULL,
	[diaChi] [nvarchar](100) NULL,
	[moiQuanHe] [nvarchar](40) NULL,
	[gioiThieu] [nvarchar](100) NULL,
	[gioiTinh] [bit] NULL,
	[anhDaiDien] [nvarchar](100) NULL,
	[anhBia] [nvarchar](100) NULL,
	[ngaySinh] [date] NULL,
	[ngayTao] [date] NULL,
	[maVaiTro] [int] NULL,
	[luotViPham] [int] NULL,
	[trangThai] [bit] NULL,
	[thoiGianTruyCap] [datetime] NULL,
	[soLuongBanBe] [int] NULL,
 CONSTRAINT [PK__nguoiDun__DDDFB482E07062F2] PRIMARY KEY CLUSTERED 
(
	[sdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongBao]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongBao](
	[maThongBao] [int] IDENTITY(1,1) NOT NULL,
	[noiDung] [nvarchar](max) NULL,
	[ngayThongBao] [datetime] NULL,
	[sdt] [nvarchar](12) NULL,
	[trangThai] [bit] NULL,
	[maBaiViet] [int] NULL,
 CONSTRAINT [PK__ThongBao__657CA5397E379822] PRIMARY KEY CLUSTERED 
(
	[maThongBao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[maVaiTro] [int] IDENTITY(1,1) NOT NULL,
	[tenVaiTro] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[maVaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BaiViet] ON 

INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (95, N'0111111119', CAST(N'2023-06-15T20:39:09.840' AS DateTime), N'Hòa An nơi tình yêu bắt đầu!!!', N'75204586_741726599635245_8486597111922556928_n.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (96, N'0111111119', CAST(N'2023-06-15T20:41:23.447' AS DateTime), N'Tri Tôn-An Giang, chuyến đi của thanh xuân...', N'282001077_1380129535794945_8393359840086289338_n.jpg', 2, 1, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (97, N'0767161102', CAST(N'2023-06-15T21:59:45.933' AS DateTime), N'Nodel - noem', N'z4435586694967_51fe41ead30727c132489e01a38f4312.jpg', 0, 1, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1101, N'0111111123', CAST(N'2023-06-16T11:49:56.467' AS DateTime), N'', N'laVy2.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1102, N'0111111123', CAST(N'2023-06-16T11:52:23.750' AS DateTime), N'Hôm nay em đi cà phê với bạn gái em là Ngọc Vy ở Nha Mân ạ ', N'leVy.jpg-20230616.jpg', 0, 0, 2, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1103, N'0767161102', CAST(N'2023-06-16T11:56:22.610' AS DateTime), N'Mì cay Omega 3/2', N'z4435586687099_8472cbcc1c36825b812f271514eaa047.jpg-20230616.jpg', 0, 1, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1104, N'0111111114', CAST(N'2023-06-16T12:28:53.167' AS DateTime), N'Dịch vụ kiểm định ô tô tận nơi', N'z4435428898010_1f8d8df436edfa523403730277cd5896.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1105, N'0111111114', CAST(N'2023-06-16T12:32:43.460' AS DateTime), N'Dạ hôm nay em đi xem phim ở lotte Cinema với bạn, mình cảm thấy rất là dui ạ ', N'z4435426040243_9963dacfda2fe0c7b401b77089e1d0e4.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1106, N'0111111117', CAST(N'2023-06-16T12:40:49.563' AS DateTime), N'Hôm nay em tốt nghiệp cấp 3, mọi người vào chúc mừng em đi', N'70874446_902049050162434_2139972463163867136_n.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1107, N'0111111117', CAST(N'2023-06-16T12:41:34.570' AS DateTime), N'Có mai có cúc có đào
Có thêm em nữa ngọt ngào cả năm', N'327123107_1313052312599214_2453950246328048867_n.jpg-20230616.jpg', 0, 1, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1108, N'0111111118', CAST(N'2023-06-16T12:54:45.920' AS DateTime), N'Lý Hòa- Minh Tuyến_ Công viên sông Hậu
', N'z4435403856514_bc0c0035ea341b310518662c1c0bf87d.jpg-20230616.jpg', 0, 2, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1109, N'0111111118', CAST(N'2023-06-16T12:55:40.040' AS DateTime), N'Tôi thấy hoa vàng trên cỏ xanh
', N'lyHoaAvt.jpg-20230616.jpg', 4, 3, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1110, N'0111111120', CAST(N'2023-06-16T12:58:06.277' AS DateTime), N'Gucci', N'346664063_207548262084931_3382768658997650364_n.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1111, N'0111111120', CAST(N'2023-06-16T12:58:57.097' AS DateTime), N'Tấm thân nhỏ bé cin chào đại gia đình', N'347236939_2465911110227431_5952883918790101011_n.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1112, N'0111111120', CAST(N'2023-06-16T12:59:25.087' AS DateTime), N'Bỏ em vào balo', N'347784847_764367291827600_8536761517187639052_n.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1113, N'0111111120', CAST(N'2023-06-16T12:59:53.857' AS DateTime), N'Làn sương khói phôi phai đưa bước ai xa rồi', N'348439679_755655829580447_3242710578322081129_n.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1114, N'0111111120', CAST(N'2023-06-16T13:00:25.203' AS DateTime), N'Ngồi buồn một mình đếm lá đếm hoa', N'349285329_597451385520925_6740485566037597789_n.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1115, N'0111111116', CAST(N'2023-06-16T13:10:54.583' AS DateTime), N'Hôm nay em đi chơi với người iu em ạ', N'z4437082686832_f8873582a8804711b6675e1ea5eb48a2.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1116, N'0111111116', CAST(N'2023-06-16T13:12:19.007' AS DateTime), N'Siuuuu', N'z4437082682856_c21a6b6d9f4fe811b62e4ffb10412840.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1117, N'0111111122', CAST(N'2023-06-16T13:17:54.790' AS DateTime), N'Hoa rơi cửa phật', N'minhTuyenAvt.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1118, N'0111111122', CAST(N'2023-06-16T13:19:07.993' AS DateTime), N'Non nước hữu tình 3 miền xinh đẹp quá, từ những câu hò ý nhạc thành bài ca', N'minhTuyenBia.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1119, N'0111111113', CAST(N'2023-06-16T13:30:14.580' AS DateTime), N'Một ngày chạy deadline, một đời chạy deadline', N'z4435414405128_86ac23bfd3edbbdf61202676ad2e2c30.jpg-20230616.jpg', 0, 0, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1120, N'0111111113', CAST(N'2023-06-16T13:31:37.477' AS DateTime), N'Một ngày chạy deadline, một đời chạy deadline', N'nen.jpg-20230616.jpg', 0, 0, 1, 0)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1121, N'0111111113', CAST(N'2023-06-16T13:36:12.837' AS DateTime), N'', N'nen.jpg-20230616.jpg', 0, 0, 1, 0)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1122, N'0111111113', CAST(N'2023-06-16T13:37:38.287' AS DateTime), N'', N'nen.jpg-20230616.jpg', 0, 0, 1, 0)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1123, N'0111111113', CAST(N'2023-06-16T13:40:20.417' AS DateTime), N'', N'nen.jpg-20230616_134018.jpg', 0, 0, 1, 0)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1124, N'0111111113', CAST(N'2023-06-16T13:45:47.923' AS DateTime), N'Sách là kho tàng tri thức phong phú, đa dạng và..
', N'z4435416972544_ec34ab61bd070e62345360adc86454bd.jpg-20230616_134547.jpg', 0, 0, 1, 0)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1125, N'0111111113', CAST(N'2023-06-16T13:50:36.387' AS DateTime), N'Hôm nay em chụp kỉ yếu với lớp, mọi ng có thấy em đẹp trai ko ạ
', N'tranTrungAvt.jpg-20230616_135036.jpg', 3, 0, 1, 0)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1126, N'0767161102', CAST(N'2023-06-16T17:34:24.993' AS DateTime), N'có con cá mập, rất mặp', N'518428521_297392774_1263902804342958_4850954387533039689_n.jpg', 3, 2, 1, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1127, N'0767161102', CAST(N'2023-06-16T17:37:09.653' AS DateTime), N'không có ảnh', N'', 0, 0, 2, 1)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1128, N'0767161102', CAST(N'2023-06-16T17:37:41.953' AS DateTime), N'', N'353118332_068531558_q.png', 9, 1, 1, 0)
INSERT [dbo].[BaiViet] ([maBaiViet], [sdt], [ngayDang], [moTa], [hinhAnh], [luotBinhLuan], [luotThich], [maCheDo], [trangThai]) VALUES (1129, N'0767161102', CAST(N'2023-06-16T22:34:45.637' AS DateTime), N'12A2 Trung học phổ thông Tân Lược, thanh xuân và tuổi trẻ
', N'duyQuyBia.jpg-20230616_223445.jpg', 0, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[BaiViet] OFF
GO
SET IDENTITY_INSERT [dbo].[banBe] ON 

INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (30, N'0111111113', N'0111111112', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (31, N'0767161102', N'0111111119', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (32, N'0767161102', N'0111111118', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (33, N'0111111114', N'0111111117', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (34, N'0111111118', N'0111111114', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (35, N'0111111118', N'0111111117', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (37, N'0111111112', N'0767161102', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (38, N'0111111115', N'0111111112', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (39, N'0111111112', N'0111111114', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (40, N'0111111112', N'0111111117', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (41, N'0767161102', N'0111111115', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[banBe] ([maBanBe], [sdt], [sdtBb], [ngayKb]) VALUES (42, N'0767161102', N'0111111114', CAST(N'2023-06-16' AS Date))
SET IDENTITY_INSERT [dbo].[banBe] OFF
GO
SET IDENTITY_INSERT [dbo].[CheDo] ON 

INSERT [dbo].[CheDo] ([maCheDo], [tenCheDo]) VALUES (1, N'Công khai')
INSERT [dbo].[CheDo] ([maCheDo], [tenCheDo]) VALUES (2, N'Bạn bè')
INSERT [dbo].[CheDo] ([maCheDo], [tenCheDo]) VALUES (3, N'Chỉ mình tôi')
SET IDENTITY_INSERT [dbo].[CheDo] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhSachBinhLuan] ON 

INSERT [dbo].[DanhSachBinhLuan] ([maBinhLuan], [sdt], [chiTiet], [maBaiViet], [ngayBinhLuan]) VALUES (13, N'0111111112', N'Không đẹp trai', 1125, CAST(N'2023-06-16T14:19:20.253' AS DateTime))
INSERT [dbo].[DanhSachBinhLuan] ([maBinhLuan], [sdt], [chiTiet], [maBaiViet], [ngayBinhLuan]) VALUES (14, N'0111111112', N'hong đẹp thiệt ', 1125, CAST(N'2023-06-16T15:41:41.317' AS DateTime))
INSERT [dbo].[DanhSachBinhLuan] ([maBinhLuan], [sdt], [chiTiet], [maBaiViet], [ngayBinhLuan]) VALUES (15, N'0767161102', N'tôi không bình thường', 1126, CAST(N'2023-06-16T17:35:06.737' AS DateTime))
INSERT [dbo].[DanhSachBinhLuan] ([maBinhLuan], [sdt], [chiTiet], [maBaiViet], [ngayBinhLuan]) VALUES (19, N'0767161102', N'`12', 96, CAST(N'2023-06-16T18:00:55.710' AS DateTime))
INSERT [dbo].[DanhSachBinhLuan] ([maBinhLuan], [sdt], [chiTiet], [maBaiViet], [ngayBinhLuan]) VALUES (23, N'0767161102', N'tôi không bình thường', 1126, CAST(N'2023-06-16T18:41:55.470' AS DateTime))
INSERT [dbo].[DanhSachBinhLuan] ([maBinhLuan], [sdt], [chiTiet], [maBaiViet], [ngayBinhLuan]) VALUES (31, N'0767161102', N'cảnh đẹp dữ dị te', 96, CAST(N'2023-06-16T21:20:43.507' AS DateTime))
INSERT [dbo].[DanhSachBinhLuan] ([maBinhLuan], [sdt], [chiTiet], [maBaiViet], [ngayBinhLuan]) VALUES (32, N'0111111117', N'Dữ dị sao', 1109, CAST(N'2023-06-16T22:00:39.187' AS DateTime))
INSERT [dbo].[DanhSachBinhLuan] ([maBinhLuan], [sdt], [chiTiet], [maBaiViet], [ngayBinhLuan]) VALUES (33, N'0111111117', N'quá xênh xắn ', 1109, CAST(N'2023-06-16T22:01:39.480' AS DateTime))
INSERT [dbo].[DanhSachBinhLuan] ([maBinhLuan], [sdt], [chiTiet], [maBaiViet], [ngayBinhLuan]) VALUES (39, N'0111111118', N'dù ngày mai bão giông ngập trời ', 1126, CAST(N'2023-06-16T22:22:22.070' AS DateTime))
INSERT [dbo].[DanhSachBinhLuan] ([maBinhLuan], [sdt], [chiTiet], [maBaiViet], [ngayBinhLuan]) VALUES (40, N'0767161102', N'nếu em là bông hoa, những nhánh hoa kia sẽ là cỏ dại ', 1109, CAST(N'2023-06-16T22:32:35.667' AS DateTime))
INSERT [dbo].[DanhSachBinhLuan] ([maBinhLuan], [sdt], [chiTiet], [maBaiViet], [ngayBinhLuan]) VALUES (41, N'0767161102', N'cho anh xin in4 điii', 1109, CAST(N'2023-06-16T23:03:15.400' AS DateTime))
SET IDENTITY_INSERT [dbo].[DanhSachBinhLuan] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhSachKetBan] ON 

INSERT [dbo].[DanhSachKetBan] ([maLoiMoi], [sdt], [sdtNguoiLa], [ngayGui]) VALUES (28, N'0767161102', N'0111111123', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachKetBan] ([maLoiMoi], [sdt], [sdtNguoiLa], [ngayGui]) VALUES (30, N'0111111113', N'0767161102', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachKetBan] ([maLoiMoi], [sdt], [sdtNguoiLa], [ngayGui]) VALUES (43, N'0111111113', N'0111111118', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachKetBan] ([maLoiMoi], [sdt], [sdtNguoiLa], [ngayGui]) VALUES (50, N'0111111118', N'0111111112', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachKetBan] ([maLoiMoi], [sdt], [sdtNguoiLa], [ngayGui]) VALUES (51, N'0111111122', N'0111111112', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachKetBan] ([maLoiMoi], [sdt], [sdtNguoiLa], [ngayGui]) VALUES (52, N'0111111120', N'0111111112', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachKetBan] ([maLoiMoi], [sdt], [sdtNguoiLa], [ngayGui]) VALUES (53, N'0111111120', N'0767161102', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachKetBan] ([maLoiMoi], [sdt], [sdtNguoiLa], [ngayGui]) VALUES (56, N'0111111117', N'0767161102', CAST(N'2023-06-16' AS Date))
SET IDENTITY_INSERT [dbo].[DanhSachKetBan] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhSachYeuThich] ON 

INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (12, N'0767161102', 1126, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (13, N'0767161102', 1128, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (15, N'0767161102', 96, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (16, N'0767161102', 1109, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (17, N'0767161102', 1108, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (18, N'0111111117', 1109, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (19, N'0111111117', 1108, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (20, N'0111111118', 1126, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (21, N'0111111118', 1107, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (22, N'0111111118', 1103, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (23, N'0111111118', 97, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (24, N'0111111123', 1109, CAST(N'2023-06-16' AS Date))
INSERT [dbo].[DanhSachYeuThich] ([maYeuThich], [sdt], [maBaiViet], [ngayYeuThich]) VALUES (25, N'0111111118', 1129, CAST(N'2023-06-16' AS Date))
SET IDENTITY_INSERT [dbo].[DanhSachYeuThich] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiViPham] ON 

INSERT [dbo].[LoaiViPham] ([maLoai], [chiTiet]) VALUES (1, N'Ngôn từ gây thù ghét')
INSERT [dbo].[LoaiViPham] ([maLoai], [chiTiet]) VALUES (2, N'Nội dung bạo lực và phản cảm')
INSERT [dbo].[LoaiViPham] ([maLoai], [chiTiet]) VALUES (3, N'Ảnh khỏa thân người lớn và hoạt động tình dục')
INSERT [dbo].[LoaiViPham] ([maLoai], [chiTiet]) VALUES (4, N'Gạ gẫm tình dục')
INSERT [dbo].[LoaiViPham] ([maLoai], [chiTiet]) VALUES (5, N'Bạo lực và khích nộ')
INSERT [dbo].[LoaiViPham] ([maLoai], [chiTiet]) VALUES (6, N'Cá nhân và tổ chức nguy hiểm')
INSERT [dbo].[LoaiViPham] ([maLoai], [chiTiet]) VALUES (7, N'Cấu kết gây hại và cổ xúy tội ác')
INSERT [dbo].[LoaiViPham] ([maLoai], [chiTiet]) VALUES (8, N'Hàng hóa và dịch vụ bị hạn chế')
INSERT [dbo].[LoaiViPham] ([maLoai], [chiTiet]) VALUES (9, N'Gian lận và lừa đảo')
INSERT [dbo].[LoaiViPham] ([maLoai], [chiTiet]) VALUES (10, N'Cờ bạc rượu chè')
SET IDENTITY_INSERT [dbo].[LoaiViPham] OFF
GO
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111112', N'Lê Tuấn Vỹ', N'letuanvy123@gmail.com', N'123456', N'Sa Đéc', N'Đang hẹn hò', N'Ngọc Vy mãi iuu', 1, N'leVyAvt.jpg', N'leVyBia.jpg', CAST(N'2023-06-13' AS Date), CAST(N'2023-06-13' AS Date), 1, 0, 1, CAST(N'2023-06-16T22:58:49.827' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111113', N'Minh Trung', N'trantrung@gmail.com', N'123456', N'16 Lấp Vò', N'Độc thân', N'Tắt chế độ coder, bật chế độ gamer', 1, N'tranTrung.jpg', N'tranTrungAvt.jpg', CAST(N'2003-01-18' AS Date), CAST(N'2022-09-11' AS Date), 1, 0, 1, CAST(N'2023-06-16T22:27:09.890' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111114', N'Minh Hiếu', N'minhhieu@gmail.com', N'123456', N'Ô Môn', N'Độc thân', N'Chào mừng quý dj đến với bình nguyên vô vọng', 1, N'minhHieuAvt.jpg', N'minhHieuBia.jpg', CAST(N'2009-01-20' AS Date), CAST(N'2021-05-01' AS Date), 1, 0, 1, CAST(N'2023-06-16T23:02:17.953' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111115', N'Quốc Tường', N'quoctuong@gmail.com', N'123456', N'Kiên Giang', N'Đã kết hôn', N'Diện Diện mãi iuu', 1, N'z4435435124439_d263bb081cd1e12facbd3d05d1e97a09.jpg', N'anhBia.jpg', CAST(N'2004-11-22' AS Date), CAST(N'2023-05-11' AS Date), 1, 0, 1, CAST(N'2023-06-16T23:01:21.813' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111116', N'Chí Cường', N'chicuong@gmail.com', N'123456', N'Cà Mau ', N'Đang hẹn hò', N'Siuuu', 1, N'chiCuong.jpg', N'anhBia.jpg', CAST(N'2001-10-12' AS Date), CAST(N'2022-11-21' AS Date), 1, 0, 1, CAST(N'2023-06-16T13:14:55.153' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111117', N'Gấm Trần', N'gamtran@gmail.com', N'123456', N'12 Bình Thủy', N'Đang hẹn hò', N'Cô gái Vị Thanh', 0, N'gamTranAvt.jpg', N'gamTranBia.jpg', CAST(N'2003-05-13' AS Date), CAST(N'2023-08-01' AS Date), 1, 0, 1, CAST(N'2023-06-16T23:02:50.787' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111118', N'Lý Hòa', N'lyhoa@gmail.com', N'123456', N'Vị Thanh', N'Độc thân', N'Em độc thân không có nghĩa là anh có cửa', 0, N'lyHoaAvt.jpg', N'lyHoaBia.jpg', CAST(N'1997-01-12' AS Date), CAST(N'2021-01-01' AS Date), 1, 0, 1, CAST(N'2023-06-16T22:56:39.997' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111119', N'Yến Nhi', N'yennhi@gmail.com', N'123456', N'Tân Lược', N'Đang hẹn hò', N'Nếu biết trăm năm là hữu hạn', 0, N'yenNhiAvt.jpg', N'yenNhiBia.jpg', CAST(N'2001-08-01' AS Date), CAST(N'2022-12-31' AS Date), 3, 0, 1, CAST(N'2023-06-15T20:45:21.927' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111120', N'Sơn Tùng', N'suntung@gmail.com', N'123456', N'Thái Binh', N'Đã kết hôn', N'Making my way', 1, N'sonTungAvt.jpg', N'sonTungBia.jpg', CAST(N'1995-01-04' AS Date), CAST(N'2022-12-31' AS Date), 1, 0, 1, CAST(N'2023-06-16T23:00:48.660' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111121', N'Bùi Minh Tường', N'buituong@gmail.com', N'123456', N'78 Cờ Đỏ', N'Độc thân', N'Tôi là Tường', 1, N'avatar1.jpg', N'anhBia.jpg', CAST(N'1999-01-01' AS Date), CAST(N'2023-01-18' AS Date), 2, 0, 1, CAST(N'2023-06-13T15:09:48.963' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111122', N'Minh Tuyến', N'minhtuyen@gmail.com', N'123456', N'69 Sa Đéc', N'Đang hẹn hò', N'Aloo anh iuu', 0, N'minhTuyenAvt.jpg', N'minhTuyenBia.jpg', CAST(N'2010-12-09' AS Date), CAST(N'2022-01-11' AS Date), 2, 0, 1, CAST(N'2023-06-16T22:58:07.013' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111123', N'Lê Tuấn Vỹ', N'trantai@gmail.com', N'123456', N'72 Trung Kiên', N'Độc thân', N'Tôi là Vỹ Sa Đéc', 1, N'avatar1.jpg', N'anhBia.jpg', CAST(N'2002-09-11' AS Date), CAST(N'2022-06-01' AS Date), 1, 0, 1, CAST(N'2023-06-16T22:30:40.967' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111124', N'Trần Văn Minh Trung', N'duongbi@gmail.com', N'123456', N'91 Ô Môn', N'Đang hẹn hò', N'Tôi là Bỉ', 1, N'avatar1.jpg', N'anhBia.jpg', CAST(N'2000-12-12' AS Date), CAST(N'2023-01-01' AS Date), 1, 0, 1, CAST(N'2023-06-12T22:37:54.963' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111125', N'Quan Anh Vũ', N'quanvu@gmail.com', N'123456', N'21 Lai Vung', N'Độc thân', N'Tôi là Trường', 1, N'avatar1.jpg', N'anhBia.jpg', CAST(N'2003-12-23' AS Date), CAST(N'2022-11-17' AS Date), 1, 0, 1, CAST(N'2023-06-12T22:08:11.540' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111126', N'Trương Hoàng Phi', N'truongphi@gmail.com', N'123456', N'31 Cờ Đỏ', N'Độc thân', N'Tôi là Phi', 1, N'avatar1.jpg', N'anhBia.jpg', CAST(N'2002-12-18' AS Date), CAST(N'2022-12-18' AS Date), 1, 0, 1, CAST(N'1975-04-30T09:45:00.000' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111127', N'Triệu Ngọc Vân', N'trieuvan@gmail.com', N'123456', N'21 Vàm Cống', N'Đang hẹn hò', N'Tôi là Vân', 0, N'avatar2.jpg', N'anhBia.jpg', CAST(N'2003-03-20' AS Date), CAST(N'2023-01-19' AS Date), 1, 0, 1, CAST(N'1975-04-30T09:45:00.000' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111128', N'Lữ Linh Khởi', N'lukhoi@gmail.com', N'123456', N'81 Phong Điền', N'Đang hẹn hò', N'Tôi là Khởi', 0, N'avatar2.jpg', N'anhBia.jpg', CAST(N'2001-05-22' AS Date), CAST(N'2023-02-11' AS Date), 1, 0, 1, CAST(N'1975-04-30T09:45:00.000' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111129', N'Tào Mạnh Đức', N'taoduc@gmail.com', N'123456', N'18 Trung An', N'Độc thân', N'Tôi là Đức', 1, N'avatar1.jpg', N'anhBia.jpg', CAST(N'2000-06-06' AS Date), CAST(N'2023-03-20' AS Date), 1, 0, 1, CAST(N'1975-04-30T09:45:00.000' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111130', N'Võ Chí Thiện', N'lubo@gmail.com', N'123456', N'10 Thốt Nốt', N'Đã kết hôn', N'Tôi là Bố', 1, N'avatar1.jpg', N'anhBia.jpg', CAST(N'2007-01-11' AS Date), CAST(N'2022-11-11' AS Date), 1, 0, 1, CAST(N'1975-04-30T09:45:00.000' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111131', N'Điển Vi Vi', N'dienvi@gmail.com', N'123456', N'73 Thuận Hưng', N'Độc thân', N'Tôi là Vi', 0, N'avatar2.jpg', N'anhBia.jpg', CAST(N'2001-08-01' AS Date), CAST(N'2023-02-11' AS Date), 1, 0, 1, CAST(N'1975-04-30T09:45:00.000' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111132', N'Trương Oanh Oanh', N'oanhoanh@gmail.com', N'123456', N'82 Vĩnh Thạnh', N'Độc thân', N'Tôi là Oanh', 0, N'avatar2.jpg', N'anhBia.jpg', CAST(N'2000-05-22' AS Date), CAST(N'2022-11-11' AS Date), 1, 0, 1, CAST(N'2023-06-13T14:51:57.073' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111133', N'Nguyễn Chí Cường', N'quachhuy@gmail.com', N'123456', N'28 Vĩnh Thạnh', N'Độc thân', N'Tôi là Huy', 1, N'avatar1.jpg', N'anhBia.jpg', CAST(N'2012-06-06' AS Date), CAST(N'2023-05-22' AS Date), 1, 0, 1, CAST(N'1975-04-30T09:45:00.000' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111134', N'Gia Cát Lượng', N'gialuong@gmail.com', N'123456', N'98 Lũng Cú', N'Đang hẹn hò', N'Tôi là Lượng', 1, N'avatar1.jpg', N'anhBia.jpg', CAST(N'2002-06-16' AS Date), CAST(N'2022-06-06' AS Date), 1, 0, 1, CAST(N'1975-04-30T09:45:00.000' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0111111135', N'Trần Trung', N'ttmt1801@gmail.com', N'123456', N'69 LV', N'Độc thân', N'Tôi là Trung', 1, N'avatar1.jpg', N'nenDangNhap2.jpeg', CAST(N'2023-06-13' AS Date), CAST(N'2023-06-13' AS Date), 1, 0, 1, CAST(N'2023-06-15T16:10:26.113' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0767161102', N'Huỳnh Duy Quý', N'huynhduyquy2001@gmail.com', N'123456', N'Đồng Tháp', N'Độc Thân', N'Chúng ta xứng đáng có một cuộc sống tốt hơn', 1, N'duyQuy.jpg', N'duyQuyBia.jpg', CAST(N'2023-06-13' AS Date), CAST(N'2023-06-13' AS Date), 3, 0, 1, CAST(N'2023-06-16T23:03:19.180' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0793960634', N'Mẹ Mày Trung', N'lyhoa@gmail.com', N'123', NULL, NULL, NULL, 1, N'avatar1.jpg', N'anhBia.jpg', CAST(N'2023-06-16' AS Date), CAST(N'2023-06-16' AS Date), 1, 0, 1, CAST(N'2023-06-16T19:52:06.460' AS DateTime), NULL)
INSERT [dbo].[nguoiDung] ([sdt], [hoTen], [email], [matKhau], [diaChi], [moiQuanHe], [gioiThieu], [gioiTinh], [anhDaiDien], [anhBia], [ngaySinh], [ngayTao], [maVaiTro], [luotViPham], [trangThai], [thoiGianTruyCap], [soLuongBanBe]) VALUES (N'0939790001', N'quý', N'duyquy@gmail.com', N'123', NULL, NULL, NULL, 1, N'avatar1.jpg', N'anhBia.jpg', CAST(N'2023-06-16' AS Date), CAST(N'2023-06-16' AS Date), 1, 0, 1, CAST(N'2023-06-16T19:55:04.360' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[ThongBao] ON 

INSERT [dbo].[ThongBao] ([maThongBao], [noiDung], [ngayThongBao], [sdt], [trangThai], [maBaiViet]) VALUES (21, N'Huỳnh Duy Quý đã đăng bài viết mới.', CAST(N'2023-06-16T22:34:45.637' AS DateTime), N'0111111119', 0, 1129)
INSERT [dbo].[ThongBao] ([maThongBao], [noiDung], [ngayThongBao], [sdt], [trangThai], [maBaiViet]) VALUES (22, N'Huỳnh Duy Quý đã đăng bài viết mới.', CAST(N'2023-06-16T22:34:45.637' AS DateTime), N'0111111118', 1, 1129)
SET IDENTITY_INSERT [dbo].[ThongBao] OFF
GO
SET IDENTITY_INSERT [dbo].[VaiTro] ON 

INSERT [dbo].[VaiTro] ([maVaiTro], [tenVaiTro]) VALUES (1, N'Người dùng')
INSERT [dbo].[VaiTro] ([maVaiTro], [tenVaiTro]) VALUES (2, N'Nhân viên')
INSERT [dbo].[VaiTro] ([maVaiTro], [tenVaiTro]) VALUES (3, N'Quản lí')
SET IDENTITY_INSERT [dbo].[VaiTro] OFF
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [fk_cheDo_baiViet] FOREIGN KEY([maCheDo])
REFERENCES [dbo].[CheDo] ([maCheDo])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [fk_cheDo_baiViet]
GO
ALTER TABLE [dbo].[BaiViet]  WITH CHECK ADD  CONSTRAINT [fk_nguoiDung_baiViet] FOREIGN KEY([sdt])
REFERENCES [dbo].[nguoiDung] ([sdt])
GO
ALTER TABLE [dbo].[BaiViet] CHECK CONSTRAINT [fk_nguoiDung_baiViet]
GO
ALTER TABLE [dbo].[BaiVietViPham]  WITH CHECK ADD  CONSTRAINT [fk_baiViet_Bvvp] FOREIGN KEY([maBaiViet])
REFERENCES [dbo].[BaiViet] ([maBaiViet])
GO
ALTER TABLE [dbo].[BaiVietViPham] CHECK CONSTRAINT [fk_baiViet_Bvvp]
GO
ALTER TABLE [dbo].[BaiVietViPham]  WITH CHECK ADD  CONSTRAINT [fk_baiViet_loaiViPham] FOREIGN KEY([maLoai])
REFERENCES [dbo].[LoaiViPham] ([maLoai])
GO
ALTER TABLE [dbo].[BaiVietViPham] CHECK CONSTRAINT [fk_baiViet_loaiViPham]
GO
ALTER TABLE [dbo].[BaiVietViPham]  WITH CHECK ADD  CONSTRAINT [fk_nguoiDung_Bvvp] FOREIGN KEY([sdt])
REFERENCES [dbo].[nguoiDung] ([sdt])
GO
ALTER TABLE [dbo].[BaiVietViPham] CHECK CONSTRAINT [fk_nguoiDung_Bvvp]
GO
ALTER TABLE [dbo].[banBe]  WITH CHECK ADD  CONSTRAINT [fk_nguoiDung_banBe] FOREIGN KEY([sdt])
REFERENCES [dbo].[nguoiDung] ([sdt])
GO
ALTER TABLE [dbo].[banBe] CHECK CONSTRAINT [fk_nguoiDung_banBe]
GO
ALTER TABLE [dbo].[banBe]  WITH CHECK ADD  CONSTRAINT [fk_nguoiDung_banBe2] FOREIGN KEY([sdtBb])
REFERENCES [dbo].[nguoiDung] ([sdt])
GO
ALTER TABLE [dbo].[banBe] CHECK CONSTRAINT [fk_nguoiDung_banBe2]
GO
ALTER TABLE [dbo].[DanhSachBinhLuan]  WITH CHECK ADD  CONSTRAINT [fk_baiViet_Dsbl] FOREIGN KEY([maBaiViet])
REFERENCES [dbo].[BaiViet] ([maBaiViet])
GO
ALTER TABLE [dbo].[DanhSachBinhLuan] CHECK CONSTRAINT [fk_baiViet_Dsbl]
GO
ALTER TABLE [dbo].[DanhSachBinhLuan]  WITH CHECK ADD  CONSTRAINT [fk_nguoiDung_Dsbl] FOREIGN KEY([sdt])
REFERENCES [dbo].[nguoiDung] ([sdt])
GO
ALTER TABLE [dbo].[DanhSachBinhLuan] CHECK CONSTRAINT [fk_nguoiDung_Dsbl]
GO
ALTER TABLE [dbo].[DanhSachKetBan]  WITH CHECK ADD  CONSTRAINT [fk_nguoiDung_DsKb] FOREIGN KEY([sdt])
REFERENCES [dbo].[nguoiDung] ([sdt])
GO
ALTER TABLE [dbo].[DanhSachKetBan] CHECK CONSTRAINT [fk_nguoiDung_DsKb]
GO
ALTER TABLE [dbo].[DanhSachKetBan]  WITH CHECK ADD  CONSTRAINT [fk_nguoiDung_DsKb2] FOREIGN KEY([sdtNguoiLa])
REFERENCES [dbo].[nguoiDung] ([sdt])
GO
ALTER TABLE [dbo].[DanhSachKetBan] CHECK CONSTRAINT [fk_nguoiDung_DsKb2]
GO
ALTER TABLE [dbo].[DanhSachYeuThich]  WITH CHECK ADD  CONSTRAINT [fk_danhSachYeuThich_baiViet] FOREIGN KEY([maBaiViet])
REFERENCES [dbo].[BaiViet] ([maBaiViet])
GO
ALTER TABLE [dbo].[DanhSachYeuThich] CHECK CONSTRAINT [fk_danhSachYeuThich_baiViet]
GO
ALTER TABLE [dbo].[DanhSachYeuThich]  WITH CHECK ADD  CONSTRAINT [fk_nguoiDung_Dsyt] FOREIGN KEY([sdt])
REFERENCES [dbo].[nguoiDung] ([sdt])
GO
ALTER TABLE [dbo].[DanhSachYeuThich] CHECK CONSTRAINT [fk_nguoiDung_Dsyt]
GO
ALTER TABLE [dbo].[nguoiDung]  WITH CHECK ADD  CONSTRAINT [fk_vaiTronguoiDung_] FOREIGN KEY([maVaiTro])
REFERENCES [dbo].[VaiTro] ([maVaiTro])
GO
ALTER TABLE [dbo].[nguoiDung] CHECK CONSTRAINT [fk_vaiTronguoiDung_]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [fk_thongBao_baiViet] FOREIGN KEY([maBaiViet])
REFERENCES [dbo].[BaiViet] ([maBaiViet])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [fk_thongBao_baiViet]
GO
ALTER TABLE [dbo].[ThongBao]  WITH CHECK ADD  CONSTRAINT [fk_thongBao_nguoiDung] FOREIGN KEY([sdt])
REFERENCES [dbo].[nguoiDung] ([sdt])
GO
ALTER TABLE [dbo].[ThongBao] CHECK CONSTRAINT [fk_thongBao_nguoiDung]
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeBaiVietViPhamTheoThang]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThongKeBaiVietViPhamTheoThang] (
    @Nam INT
)
AS
BEGIN
    -- Tạo bảng tạm chứa 12 tháng
    WITH Thang(Thang) AS (
        SELECT 1
        UNION ALL
        SELECT Thang + 1 FROM Thang WHERE Thang < 12
    ), 
    -- Lấy thông tin số lượng bài viết vi phạm theo từng tháng trong năm
    ThongKe(Thang, SoBaiVietViPham) AS (
        SELECT MONTH(ngayToCao), COUNT(DISTINCT maBaiViet)
        FROM BaiVietViPham
        WHERE YEAR(ngayToCao) = @Nam  and trangThai = 0
        GROUP BY MONTH(ngayToCao)
    )
    -- Kết hợp thông tin với bảng tạm chứa 12 tháng
    SELECT Thang.Thang, ISNULL(SoBaiVietViPham, 0) AS SoBaiVietViPham
    FROM Thang
    LEFT JOIN ThongKe ON Thang.Thang = ThongKe.Thang

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeSoLuongDangKyTheoThang]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThongKeSoLuongDangKyTheoThang] (
    @Nam INT
)
AS
BEGIN

    -- Tạo bảng tạm chứa 12 tháng
    WITH Thang(Thang) AS (
        SELECT 1
        UNION ALL
        SELECT Thang + 1 FROM Thang WHERE Thang < 12
    ), 
    -- Lấy thông tin số lượng bài viết vi phạm theo từng tháng trong năm
    ThongKe(Thang, SoLuongDangKy) AS (
        SELECT MONTH(ngayTao), COUNT(DISTINCT sdt)
        FROM nguoiDung
        WHERE YEAR(ngayTao) = @Nam
        GROUP BY MONTH(ngayTao)
    )
    -- Kết hợp thông tin với bảng tạm chứa 12 tháng
    SELECT Thang.Thang, ISNULL(SoLuongDangKy, 0) AS SoLuongDangKy
    FROM Thang
    LEFT JOIN ThongKe ON Thang.Thang = ThongKe.Thang

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeSoLuotBaoCaoTheoThang]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThongKeSoLuotBaoCaoTheoThang] (
    @Nam INT
)
AS
BEGIN

    -- Tạo bảng tạm chứa 12 tháng
    WITH Thang(Thang) AS (
        SELECT 1
        UNION ALL
        SELECT Thang + 1 FROM Thang WHERE Thang < 12
    ), 
    -- Lấy thông tin số lượng bài viết vi phạm theo từng tháng trong năm
    ThongKe(Thang, SoLuotBaoCao) AS (
        SELECT MONTH(ngayToCao), COUNT(DISTINCT maToCao)
        FROM BaiVietViPham
        WHERE YEAR(ngayToCao) = @Nam and trangThai = 1
        GROUP BY MONTH(ngayToCao)
    )
    -- Kết hợp thông tin với bảng tạm chứa 12 tháng
    SELECT Thang.Thang, ISNULL(SoLuotBaoCao, 0) AS SoLuotBaoCao
    FROM Thang
    LEFT JOIN ThongKe ON Thang.Thang = ThongKe.Thang

END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeSoLuotThichCaoNhat]    Script Date: 6/16/2023 11:04:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ThongKeSoLuotThichCaoNhat](@month date)
as begin
select top 10 BaiViet.hinhAnh HinhAnh,
       BaiViet.maBaiViet MaBaiViet,
	   nguoiDung.hoTen NguoiDang,
	   BaiViet.moTa MoTa,
	   COUNT(DanhSachYeuThich.maBaiViet) LuotThich
from DanhSachYeuThich, BaiViet, nguoiDung
where DanhSachYeuThich.maBaiViet=BaiViet.maBaiViet and BaiViet.sdt = nguoiDung.sdt
and DanhSachYeuThich.ngayYeuThich = @month --> Điều kiện
group by BaiViet.hinhAnh, BaiViet.maBaiViet, nguoiDung.hoTen, BaiViet.moTa
order by LuotThich DESC
end
GO
USE [master]
GO
ALTER DATABASE [Viesonet] SET  READ_WRITE 
GO
