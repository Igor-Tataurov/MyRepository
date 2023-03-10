USE [master]
GO
/****** Object:  Database [Абоненты_Татауров]    Script Date: 20.12.2022 12:01:08 ******/
CREATE DATABASE [Абоненты_Татауров]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Абоненты_Татауров', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Абоненты_Татауров.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Абоненты_Татауров_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Абоненты_Татауров_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Абоненты_Татауров] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Абоненты_Татауров].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Абоненты_Татауров] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET ARITHABORT OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Абоненты_Татауров] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Абоненты_Татауров] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Абоненты_Татауров] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Абоненты_Татауров] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET RECOVERY FULL 
GO
ALTER DATABASE [Абоненты_Татауров] SET  MULTI_USER 
GO
ALTER DATABASE [Абоненты_Татауров] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Абоненты_Татауров] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Абоненты_Татауров] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Абоненты_Татауров] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Абоненты_Татауров] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Абоненты_Татауров', N'ON'
GO
ALTER DATABASE [Абоненты_Татауров] SET QUERY_STORE = OFF
GO
USE [Абоненты_Татауров]
GO
/****** Object:  Table [dbo].[Абоненты]    Script Date: 20.12.2022 12:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абоненты](
	[Номер_телефона] [nvarchar](50) NOT NULL,
	[ФИО_абонента] [nvarchar](100) NOT NULL,
	[Количество_разговоров] [int] NOT NULL,
	[Номер_абонента] [int] NULL,
	[Адрес] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер_телефона] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Абоненты_1]    Script Date: 20.12.2022 12:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абоненты_1](
	[IDАбонента] [int] NOT NULL,
	[Номер_Абонента] [int] NULL,
	[ФИО_абонента] [nvarchar](255) NULL,
	[Адрес] [nvarchar](255) NULL,
 CONSTRAINT [PK_Абоненты_1] PRIMARY KEY CLUSTERED 
(
	[IDАбонента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Города]    Script Date: 20.12.2022 12:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Города](
	[Код_города] [int] NOT NULL,
	[Название_города] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Код_города] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Договоры]    Script Date: 20.12.2022 12:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Договоры](
	[Номер_договора] [int] NOT NULL,
	[Дата_установки_телефона] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер_договора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разговоры]    Script Date: 20.12.2022 12:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разговоры](
	[Номер_разговора] [int] NOT NULL,
	[Дата_разговора] [date] NOT NULL,
	[Время_продолжительности] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер_разговора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разговоры_1]    Script Date: 20.12.2022 12:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разговоры_1](
	[idРазговора] [int] NOT NULL,
	[Номер_Разговора] [int] NULL,
	[Дата_Разговора] [date] NULL,
	[Продолжительность] [int] NULL,
	[idТарифа] [int] NULL,
	[idТелефона] [int] NULL,
 CONSTRAINT [PK_Разговоры_1] PRIMARY KEY CLUSTERED 
(
	[idРазговора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тарифы]    Script Date: 20.12.2022 12:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тарифы](
	[Стоимость_тарифа] [int] NOT NULL,
	[Оплаты] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тарифы_1]    Script Date: 20.12.2022 12:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тарифы_1](
	[IdТарифа] [int] NOT NULL,
	[Код_Города] [int] NULL,
	[Название_Города] [nvarchar](50) NULL,
	[Тариф_Стоимость_1_мин] [int] NULL,
	[Признак_оплаты] [nvarchar](50) NULL,
 CONSTRAINT [PK_Тарифы_1] PRIMARY KEY CLUSTERED 
(
	[IdТарифа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Абоненты] ([Номер_телефона], [ФИО_абонента], [Количество_разговоров], [Номер_абонента], [Адрес]) VALUES (N'(3812)326789      ', N'Орлов 
Сергей Борисович
', 2, 1, N'г.Омск, ул. Мира, 54,4



')
INSERT [dbo].[Абоненты] ([Номер_телефона], [ФИО_абонента], [Количество_разговоров], [Номер_абонента], [Адрес]) VALUES (N'(3812)333490   ', N'Титова Александра Иввановна', 2, 4, N'г. Омск, ул. Ленина, 5,24



')
INSERT [dbo].[Абоненты] ([Номер_телефона], [ФИО_абонента], [Количество_разговоров], [Номер_абонента], [Адрес]) VALUES (N'(3812)531178', N'Орлов 
Сергей Борисович
', 3, 1, N'г.Омск, ул. Мира, 54,4



')
INSERT [dbo].[Абоненты] ([Номер_телефона], [ФИО_абонента], [Количество_разговоров], [Номер_абонента], [Адрес]) VALUES (N'(3812)951211   ', N'Титова Александра Иввановна', 3, 4, N'г. Омск, ул. Ленина, 5,24



')
INSERT [dbo].[Абоненты] ([Номер_телефона], [ФИО_абонента], [Количество_разговоров], [Номер_абонента], [Адрес]) VALUES (N'(3812)953412   ', N'Вавилов
Сергей Борисович
', 1, 3, N'Г. Омск, пр.Маркса, 34,23')
GO
INSERT [dbo].[Разговоры] ([Номер_разговора], [Дата_разговора], [Время_продолжительности]) VALUES (1, CAST(N'2021-03-02' AS Date), 12)
INSERT [dbo].[Разговоры] ([Номер_разговора], [Дата_разговора], [Время_продолжительности]) VALUES (2, CAST(N'2021-03-02' AS Date), 2)
INSERT [dbo].[Разговоры] ([Номер_разговора], [Дата_разговора], [Время_продолжительности]) VALUES (3, CAST(N'2021-03-08' AS Date), 15)
INSERT [dbo].[Разговоры] ([Номер_разговора], [Дата_разговора], [Время_продолжительности]) VALUES (7, CAST(N'2021-03-15' AS Date), 10)
INSERT [dbo].[Разговоры] ([Номер_разговора], [Дата_разговора], [Время_продолжительности]) VALUES (8, CAST(N'2021-03-15' AS Date), 1)
INSERT [dbo].[Разговоры] ([Номер_разговора], [Дата_разговора], [Время_продолжительности]) VALUES (10, CAST(N'2021-04-01' AS Date), 3)
INSERT [dbo].[Разговоры] ([Номер_разговора], [Дата_разговора], [Время_продолжительности]) VALUES (11, CAST(N'2021-04-01' AS Date), 3)
GO
INSERT [dbo].[Тарифы] ([Стоимость_тарифа], [Оплаты]) VALUES (10, N'не оплачено')
INSERT [dbo].[Тарифы] ([Стоимость_тарифа], [Оплаты]) VALUES (30, N'оплачено')
INSERT [dbo].[Тарифы] ([Стоимость_тарифа], [Оплаты]) VALUES (20, N'оплачено')
GO
/****** Object:  StoredProcedure [dbo].[Добавление_абонента]    Script Date: 20.12.2022 12:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Добавление_абонента]
as
select *
from [dbo].[Абоненты]
GO
USE [master]
GO
ALTER DATABASE [Абоненты_Татауров] SET  READ_WRITE 
GO
