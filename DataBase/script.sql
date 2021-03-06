USE [master]
GO
/****** Object:  Database [HotelMania]    Script Date: 11/11/2017 10:56:51 AM ******/
CREATE DATABASE [HotelMania]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelMania', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\HotelMania.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HotelMania_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\HotelMania_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HotelMania] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelMania].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelMania] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelMania] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelMania] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelMania] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelMania] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelMania] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelMania] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HotelMania] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelMania] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelMania] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelMania] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelMania] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelMania] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelMania] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelMania] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelMania] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HotelMania] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelMania] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelMania] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelMania] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelMania] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelMania] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelMania] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelMania] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HotelMania] SET  MULTI_USER 
GO
ALTER DATABASE [HotelMania] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelMania] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelMania] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelMania] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [HotelMania]
GO
/****** Object:  Table [dbo].[tblBooking]    Script Date: 11/11/2017 10:56:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBooking](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NULL,
	[HotelBookingID] [bigint] NULL,
	[FoodBookingID] [bigint] NULL,
	[TotalPrice] [money] NULL,
	[Date] [datetime] NULL,
	[startTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblBooking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFood]    Script Date: 11/11/2017 10:56:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFood](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[PerPersonCharge] [money] NULL,
	[Type] [nvarchar](100) NULL,
	[IsAvailible] [bit] NULL,
 CONSTRAINT [PK_tblFood] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFoodBooking]    Script Date: 11/11/2017 10:56:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFoodBooking](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderPrice] [money] NULL,
	[orderDate] [datetime] NULL,
 CONSTRAINT [PK_tblFoodBooking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblFoodBookingDetails]    Script Date: 11/11/2017 10:56:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFoodBookingDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FoodBookingID] [bigint] NULL,
	[FoodID] [bigint] NULL,
	[OrderQuantity] [int] NULL,
	[OrderTotalPrice] [money] NULL,
 CONSTRAINT [PK_tblFoodBookingDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHotel]    Script Date: 11/11/2017 10:56:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHotel](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[PerHourPPC] [nchar](10) NULL,
	[TotalPersonCapacity] [bigint] NULL,
	[Rating] [int] NULL,
	[Location] [nvarchar](200) NULL,
	[ParkingCapacity] [bigint] NULL,
	[IsAvailible] [bit] NULL,
 CONSTRAINT [PK_tblHotel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHotelBooking]    Script Date: 11/11/2017 10:56:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHotelBooking](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HotelID] [bigint] NULL,
	[BookedCapacity] [bigint] NULL,
	[BookedCapacityPrice] [money] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_tblHotelBooking] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblImages]    Script Date: 11/11/2017 10:56:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImages](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HotelID] [bigint] NULL,
	[FoodID] [bigint] NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblImages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblRole]    Script Date: 11/11/2017 10:56:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRole](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Discription] [nchar](100) NULL,
 CONSTRAINT [PK_tblRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 11/11/2017 10:56:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[ContactNo] [varchar](50) NULL,
	[Address] [nvarchar](200) NULL,
	[Image] [nvarchar](max) NULL,
	[RoleID] [bigint] NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tblBooking]  WITH CHECK ADD  CONSTRAINT [FK_tblBooking_tblFoodBooking] FOREIGN KEY([FoodBookingID])
REFERENCES [dbo].[tblFoodBooking] ([ID])
GO
ALTER TABLE [dbo].[tblBooking] CHECK CONSTRAINT [FK_tblBooking_tblFoodBooking]
GO
ALTER TABLE [dbo].[tblBooking]  WITH CHECK ADD  CONSTRAINT [FK_tblBooking_tblHotelBooking] FOREIGN KEY([HotelBookingID])
REFERENCES [dbo].[tblHotelBooking] ([ID])
GO
ALTER TABLE [dbo].[tblBooking] CHECK CONSTRAINT [FK_tblBooking_tblHotelBooking]
GO
ALTER TABLE [dbo].[tblBooking]  WITH CHECK ADD  CONSTRAINT [FK_tblBooking_tblUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([ID])
GO
ALTER TABLE [dbo].[tblBooking] CHECK CONSTRAINT [FK_tblBooking_tblUser]
GO
ALTER TABLE [dbo].[tblFoodBookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblFoodBookingDetails_tblFood] FOREIGN KEY([FoodID])
REFERENCES [dbo].[tblFood] ([ID])
GO
ALTER TABLE [dbo].[tblFoodBookingDetails] CHECK CONSTRAINT [FK_tblFoodBookingDetails_tblFood]
GO
ALTER TABLE [dbo].[tblFoodBookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_tblFoodBookingDetails_tblFoodBooking] FOREIGN KEY([FoodBookingID])
REFERENCES [dbo].[tblFoodBooking] ([ID])
GO
ALTER TABLE [dbo].[tblFoodBookingDetails] CHECK CONSTRAINT [FK_tblFoodBookingDetails_tblFoodBooking]
GO
ALTER TABLE [dbo].[tblHotelBooking]  WITH CHECK ADD  CONSTRAINT [FK_tblHotelBooking_tblHotel] FOREIGN KEY([HotelID])
REFERENCES [dbo].[tblHotel] ([ID])
GO
ALTER TABLE [dbo].[tblHotelBooking] CHECK CONSTRAINT [FK_tblHotelBooking_tblHotel]
GO
ALTER TABLE [dbo].[tblImages]  WITH CHECK ADD  CONSTRAINT [FK_tblImages_tblFood] FOREIGN KEY([FoodID])
REFERENCES [dbo].[tblFood] ([ID])
GO
ALTER TABLE [dbo].[tblImages] CHECK CONSTRAINT [FK_tblImages_tblFood]
GO
ALTER TABLE [dbo].[tblImages]  WITH CHECK ADD  CONSTRAINT [FK_tblImages_tblHotel] FOREIGN KEY([HotelID])
REFERENCES [dbo].[tblHotel] ([ID])
GO
ALTER TABLE [dbo].[tblImages] CHECK CONSTRAINT [FK_tblImages_tblHotel]
GO
ALTER TABLE [dbo].[tblUser]  WITH CHECK ADD  CONSTRAINT [FK_tblUser_tblRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tblRole] ([ID])
GO
ALTER TABLE [dbo].[tblUser] CHECK CONSTRAINT [FK_tblUser_tblRole]
GO
USE [master]
GO
ALTER DATABASE [HotelMania] SET  READ_WRITE 
GO
