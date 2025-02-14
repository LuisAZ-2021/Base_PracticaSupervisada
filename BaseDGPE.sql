USE [master]
GO
/****** Object:  Database [BaseActualizada]    Script Date: 26/9/2024 08:58:24 ******/
CREATE DATABASE [BaseActualizada]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BaseActualizada', FILENAME = N'D:\DataSQL\BaseActualizada.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BaseActualizada_log', FILENAME = N'D:\DataSQL\BaseActualizada_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BaseActualizada] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BaseActualizada].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BaseActualizada] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BaseActualizada] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BaseActualizada] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BaseActualizada] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BaseActualizada] SET ARITHABORT OFF 
GO
ALTER DATABASE [BaseActualizada] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BaseActualizada] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BaseActualizada] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BaseActualizada] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BaseActualizada] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BaseActualizada] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BaseActualizada] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BaseActualizada] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BaseActualizada] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BaseActualizada] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BaseActualizada] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BaseActualizada] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BaseActualizada] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BaseActualizada] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BaseActualizada] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BaseActualizada] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BaseActualizada] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BaseActualizada] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BaseActualizada] SET  MULTI_USER 
GO
ALTER DATABASE [BaseActualizada] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BaseActualizada] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BaseActualizada] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BaseActualizada] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BaseActualizada] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BaseActualizada] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BaseActualizada] SET QUERY_STORE = ON
GO
ALTER DATABASE [BaseActualizada] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BaseActualizada]
GO
/****** Object:  Table [dbo].[Cambios]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cambios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[idCell] [int] NULL,
	[Columna] [int] NULL,
	[ValorCelda] [varchar](100) NULL,
	[Usuario] [int] NULL,
	[Fecha] [datetime] NULL,
	[Comentario] [varchar](50) NULL,
	[Id_Tabla] [int] NULL,
 CONSTRAINT [PK_Cambios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosDeLocalidades]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosDeLocalidades](
	[ID] [int] NOT NULL,
	[LOCALIDADES POR ZONA] [varchar](50) NULL,
	[ZONA] [varchar](50) NULL,
	[CÓDIGO] [int] NULL,
	[DEPARTAMENTOS] [varchar](50) NULL,
	[MUNICIPIOS] [varchar](50) NULL,
	[LOCALIDADES] [varchar](50) NULL,
	[POBLACION] [int] NULL,
 CONSTRAINT [PK_DatosDeLocalidades] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosFinancieros]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosFinancieros](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLOACA (CON CONEXION - SERVICIO NO MEDIDO)] [varchar](30) NULL,
	[AGUA (CON CONEXION - SERVICIO NO MEDIDO)] [varchar](30) NULL,
	[AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)] [varchar](50) NULL,
	[CLOACA (SIN CONEXION - SERVICIO NO MEDIDO)] [varchar](50) NULL,
	[AGUA (SIN CONEXION - SERVICIO NO MEDIDO)] [varchar](50) NULL,
	[AG Y CL (SIN CONEXION - SERVICIO NO MEDIDO)] [varchar](50) NULL,
	[TOTAL TASA BASICA] [varchar](50) NULL,
	[AGUA (SERVICIO MEDIDO)] [varchar](50) NULL,
	[AGUA Y CLOACA (SERVICIO MEDIDO)] [varchar](50) NULL,
	[TOTAL SERVICIO MEDIDO] [varchar](50) NULL,
	[TOTAL GENERAL FACTURADOS] [varchar](50) NULL,
	[TOTAL NO FACTURADOS] [varchar](50) NULL,
	[ID_LOCALIDAD] [int] NULL,
 CONSTRAINT [PK_DatosFinancieros] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosFuente]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosFuente](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TIPO DE FUENTE] [varchar](50) NULL,
	[NOMBRE DE LA FUENTE] [varchar](50) NULL,
	[NOMBRE DE ACUEDUCTO] [varchar](50) NULL,
	[ID_LOCALIDAD] [int] NULL,
 CONSTRAINT [PK_DatosFuente] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosIndirectos]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosIndirectos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USUARIOS AGUA] [int] NULL,
	[USUARIOS CLOACA] [int] NULL,
	[USUARIOS AG Y CL] [int] NULL,
	[TOTAL USUARIOS] [varchar](50) NULL,
	[% COBERTURA POR CONEXION (AGUA)] [varchar](50) NULL,
	[% COBERTURA POR CONEXION (CLOACA)] [varchar](50) NULL,
	[% COBERTURA POR CONEXION (AyC)] [varchar](50) NULL,
	[% COBERTURA POR USUARIO (AGUA)] [varchar](50) NULL,
	[% COBERTURA POR USUARIO (CLOACA)] [varchar](50) NULL,
	[% COBERTURA POR USUARIO (AyC)] [varchar](50) NULL,
	[% MICROMEDICION] [varchar](50) NULL,
	[% RECAUDACION] [varchar](50) NULL,
	[% de empleados x 1000conex] [varchar](50) NULL,
	[ID_LOCALIDAD] [int] NULL,
 CONSTRAINT [PK_DatosIndirectos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosServicio]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosServicio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TIPO DE SERVICIO] [varchar](50) NULL,
	[VOLUMEN DISTRIBUIDOS m3/D] [float] NULL,
	[HS DE SERV] [int] NULL,
	[FACTURA SI/NO] [varchar](10) NULL,
	[DOTACION ACTIVA] [int] NULL,
	[AGUA (CON CONEXION - SERVICIO NO MEDIDO)] [int] NULL,
	[CLOACA (CON CONEXION - SERVICIO NO MEDIDO)] [int] NULL,
	[AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)] [int] NULL,
	[AGUA (SIN CONEXION - radio servido)] [int] NULL,
	[CLOACA (SIN CONEXION - radio servido)] [int] NULL,
	[AG Y CL (SIN CONEXION - radio servido)] [int] NULL,
	[TOTAL TASA BASICA] [int] NULL,
	[AGUA (SERVICIO MEDIDO - medidores)] [int] NULL,
	[AGUA Y CLOACA (SERVICIO MEDIDO - medidores)] [int] NULL,
	[TOTAL SERVICIO MEDIDO] [int] NULL,
	[TOTAL CLIENTES FACTURADOS] [int] NULL,
	[TOTAL CLIENTES NO FACTURADOS] [int] NULL,
	[ID_LOCALIDAD] [int] NULL,
 CONSTRAINT [PK_DatosServicio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lista_Localidad]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lista_Localidad](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Lista_Localidad] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Rol] [varchar](50) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Se_efectuan_en]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Se_efectuan_en](
	[ID_DatosDeLocalidades] [int] NOT NULL,
	[ID_Cambios] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DatosDeLocalidades] ASC,
	[ID_Cambios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabla]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabla](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Tabla] [varchar](50) NULL,
 CONSTRAINT [PK_Tabla] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NULL,
	[Password] [varchar](30) NULL,
	[ID_Rol] [int] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zona]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zona](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Zona] [varchar](50) NULL,
 CONSTRAINT [PK_Zona] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cambios] ON 

INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (1, 1, 3, N'12', 1, CAST(N'2024-06-07T21:17:50.613' AS DateTime), N'PLANILLA EXCEL', 1)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (2, 3, 4, N'RIO TEUCO', 1, CAST(N'2024-06-07T21:48:10.143' AS DateTime), N'PLANILLA EXCEL', 2)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (3, 2, 3, N'RIO ANTEQUERA', 1, CAST(N'2024-06-07T21:54:18.620' AS DateTime), N'PLANILLA EXCEL', 2)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (4, 4, 1, N'4', 1, CAST(N'2024-06-07T21:54:53.277' AS DateTime), N'PLANILLA EXCEL', 1)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (5, 4, 2, N'ZONA V', 1, CAST(N'2024-06-07T21:55:07.113' AS DateTime), N'PLANILLA EXCEL', 1)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (6, 4, 3, N'20', 1, CAST(N'2024-06-07T21:55:18.247' AS DateTime), N'PLANILLA EXCEL', 1)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (7, 4, 6, N'PUERTO VILELAS', 1, CAST(N'2024-06-07T21:57:25.577' AS DateTime), N'PLANILLA EXCEL', 1)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (8, 4, 7, N'900', 1, CAST(N'2024-06-07T21:57:37.927' AS DateTime), N'PLANILLA EXCEL', 1)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (9, 2, 3, N'20', 1, CAST(N'2024-06-08T00:02:56.913' AS DateTime), N'PLANILLA EXCEL', 3)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (10, 4, 4, N'$ 1.254.256,00', 1, CAST(N'2024-06-08T00:35:33.763' AS DateTime), N'PLANILLA EXCEL', 4)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (11, 1, 2, N'10', 1, CAST(N'2024-06-08T01:21:58.893' AS DateTime), N'P', 5)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (12, 1, 3, N'20', 1, CAST(N'2024-06-08T01:22:06.687' AS DateTime), N'P', 5)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (13, 1, 4, N'30', 1, CAST(N'2024-06-08T01:22:12.880' AS DateTime), N'P', 5)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (14, 4, 5, N'PUERTO VILELAS', 1, CAST(N'2024-06-10T14:06:04.410' AS DateTime), N'PLANILLAS EXCEL', 1)
INSERT [dbo].[Cambios] ([ID], [idCell], [Columna], [ValorCelda], [Usuario], [Fecha], [Comentario], [Id_Tabla]) VALUES (15, 4, 5, N'PUERTO VILELAS', 1, CAST(N'2024-06-10T14:10:32.627' AS DateTime), N'PLANILLAS EXCEL', 1)
SET IDENTITY_INSERT [dbo].[Cambios] OFF
GO
INSERT [dbo].[DatosDeLocalidades] ([ID], [LOCALIDADES POR ZONA], [ZONA], [CÓDIGO], [DEPARTAMENTOS], [MUNICIPIOS], [LOCALIDADES], [POBLACION]) VALUES (1, N'1', N'ZONA I', 12, N'SAN FERNARDO', N'RESISTENCIA', N'RESISTENCIA', 10000)
INSERT [dbo].[DatosDeLocalidades] ([ID], [LOCALIDADES POR ZONA], [ZONA], [CÓDIGO], [DEPARTAMENTOS], [MUNICIPIOS], [LOCALIDADES], [POBLACION]) VALUES (2, N'2', N'ZONA I', 5242, N'SAN FERNARDO', N'RESISTENCIA', N'BARRANQUERAS', 800)
INSERT [dbo].[DatosDeLocalidades] ([ID], [LOCALIDADES POR ZONA], [ZONA], [CÓDIGO], [DEPARTAMENTOS], [MUNICIPIOS], [LOCALIDADES], [POBLACION]) VALUES (3, N'3', N'ZONA I', 54, N'SAN FERNARDO', N'RESISTENCIA', N'FONTANA', 600)
INSERT [dbo].[DatosDeLocalidades] ([ID], [LOCALIDADES POR ZONA], [ZONA], [CÓDIGO], [DEPARTAMENTOS], [MUNICIPIOS], [LOCALIDADES], [POBLACION]) VALUES (4, N'4', N'ZONA V', 20, NULL, N'PUERTO VILELAS', N'PUERTO VILELAS', 900)
GO
SET IDENTITY_INSERT [dbo].[DatosFinancieros] ON 

INSERT [dbo].[DatosFinancieros] ([ID], [CLOACA (CON CONEXION - SERVICIO NO MEDIDO)], [AGUA (CON CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)], [CLOACA (SIN CONEXION - SERVICIO NO MEDIDO)], [AGUA (SIN CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (SIN CONEXION - SERVICIO NO MEDIDO)], [TOTAL TASA BASICA], [AGUA (SERVICIO MEDIDO)], [AGUA Y CLOACA (SERVICIO MEDIDO)], [TOTAL SERVICIO MEDIDO], [TOTAL GENERAL FACTURADOS], [TOTAL NO FACTURADOS], [ID_LOCALIDAD]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[DatosFinancieros] ([ID], [CLOACA (CON CONEXION - SERVICIO NO MEDIDO)], [AGUA (CON CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)], [CLOACA (SIN CONEXION - SERVICIO NO MEDIDO)], [AGUA (SIN CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (SIN CONEXION - SERVICIO NO MEDIDO)], [TOTAL TASA BASICA], [AGUA (SERVICIO MEDIDO)], [AGUA Y CLOACA (SERVICIO MEDIDO)], [TOTAL SERVICIO MEDIDO], [TOTAL GENERAL FACTURADOS], [TOTAL NO FACTURADOS], [ID_LOCALIDAD]) VALUES (2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[DatosFinancieros] ([ID], [CLOACA (CON CONEXION - SERVICIO NO MEDIDO)], [AGUA (CON CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)], [CLOACA (SIN CONEXION - SERVICIO NO MEDIDO)], [AGUA (SIN CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (SIN CONEXION - SERVICIO NO MEDIDO)], [TOTAL TASA BASICA], [AGUA (SERVICIO MEDIDO)], [AGUA Y CLOACA (SERVICIO MEDIDO)], [TOTAL SERVICIO MEDIDO], [TOTAL GENERAL FACTURADOS], [TOTAL NO FACTURADOS], [ID_LOCALIDAD]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[DatosFinancieros] ([ID], [CLOACA (CON CONEXION - SERVICIO NO MEDIDO)], [AGUA (CON CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)], [CLOACA (SIN CONEXION - SERVICIO NO MEDIDO)], [AGUA (SIN CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (SIN CONEXION - SERVICIO NO MEDIDO)], [TOTAL TASA BASICA], [AGUA (SERVICIO MEDIDO)], [AGUA Y CLOACA (SERVICIO MEDIDO)], [TOTAL SERVICIO MEDIDO], [TOTAL GENERAL FACTURADOS], [TOTAL NO FACTURADOS], [ID_LOCALIDAD]) VALUES (4, NULL, NULL, N'$ 1.254.256,00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
SET IDENTITY_INSERT [dbo].[DatosFinancieros] OFF
GO
SET IDENTITY_INSERT [dbo].[DatosFuente] ON 

INSERT [dbo].[DatosFuente] ([ID], [TIPO DE FUENTE], [NOMBRE DE LA FUENTE], [NOMBRE DE ACUEDUCTO], [ID_LOCALIDAD]) VALUES (1, NULL, NULL, NULL, 1)
INSERT [dbo].[DatosFuente] ([ID], [TIPO DE FUENTE], [NOMBRE DE LA FUENTE], [NOMBRE DE ACUEDUCTO], [ID_LOCALIDAD]) VALUES (2, NULL, N'RIO ANTEQUERA', NULL, 2)
INSERT [dbo].[DatosFuente] ([ID], [TIPO DE FUENTE], [NOMBRE DE LA FUENTE], [NOMBRE DE ACUEDUCTO], [ID_LOCALIDAD]) VALUES (3, NULL, NULL, N'RIO TEUCO', 3)
INSERT [dbo].[DatosFuente] ([ID], [TIPO DE FUENTE], [NOMBRE DE LA FUENTE], [NOMBRE DE ACUEDUCTO], [ID_LOCALIDAD]) VALUES (4, NULL, NULL, NULL, 4)
SET IDENTITY_INSERT [dbo].[DatosFuente] OFF
GO
SET IDENTITY_INSERT [dbo].[DatosIndirectos] ON 

INSERT [dbo].[DatosIndirectos] ([ID], [USUARIOS AGUA], [USUARIOS CLOACA], [USUARIOS AG Y CL], [TOTAL USUARIOS], [% COBERTURA POR CONEXION (AGUA)], [% COBERTURA POR CONEXION (CLOACA)], [% COBERTURA POR CONEXION (AyC)], [% COBERTURA POR USUARIO (AGUA)], [% COBERTURA POR USUARIO (CLOACA)], [% COBERTURA POR USUARIO (AyC)], [% MICROMEDICION], [% RECAUDACION], [% de empleados x 1000conex], [ID_LOCALIDAD]) VALUES (1, 10, 20, 30, N'60', NULL, NULL, NULL, N'0%', N'1%', N'1%', NULL, NULL, NULL, 1)
INSERT [dbo].[DatosIndirectos] ([ID], [USUARIOS AGUA], [USUARIOS CLOACA], [USUARIOS AG Y CL], [TOTAL USUARIOS], [% COBERTURA POR CONEXION (AGUA)], [% COBERTURA POR CONEXION (CLOACA)], [% COBERTURA POR CONEXION (AyC)], [% COBERTURA POR USUARIO (AGUA)], [% COBERTURA POR USUARIO (CLOACA)], [% COBERTURA POR USUARIO (AyC)], [% MICROMEDICION], [% RECAUDACION], [% de empleados x 1000conex], [ID_LOCALIDAD]) VALUES (2, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[DatosIndirectos] ([ID], [USUARIOS AGUA], [USUARIOS CLOACA], [USUARIOS AG Y CL], [TOTAL USUARIOS], [% COBERTURA POR CONEXION (AGUA)], [% COBERTURA POR CONEXION (CLOACA)], [% COBERTURA POR CONEXION (AyC)], [% COBERTURA POR USUARIO (AGUA)], [% COBERTURA POR USUARIO (CLOACA)], [% COBERTURA POR USUARIO (AyC)], [% MICROMEDICION], [% RECAUDACION], [% de empleados x 1000conex], [ID_LOCALIDAD]) VALUES (3, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[DatosIndirectos] ([ID], [USUARIOS AGUA], [USUARIOS CLOACA], [USUARIOS AG Y CL], [TOTAL USUARIOS], [% COBERTURA POR CONEXION (AGUA)], [% COBERTURA POR CONEXION (CLOACA)], [% COBERTURA POR CONEXION (AyC)], [% COBERTURA POR USUARIO (AGUA)], [% COBERTURA POR USUARIO (CLOACA)], [% COBERTURA POR USUARIO (AyC)], [% MICROMEDICION], [% RECAUDACION], [% de empleados x 1000conex], [ID_LOCALIDAD]) VALUES (4, NULL, NULL, NULL, N'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4)
SET IDENTITY_INSERT [dbo].[DatosIndirectos] OFF
GO
SET IDENTITY_INSERT [dbo].[DatosServicio] ON 

INSERT [dbo].[DatosServicio] ([ID], [TIPO DE SERVICIO], [VOLUMEN DISTRIBUIDOS m3/D], [HS DE SERV], [FACTURA SI/NO], [DOTACION ACTIVA], [AGUA (CON CONEXION - SERVICIO NO MEDIDO)], [CLOACA (CON CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)], [AGUA (SIN CONEXION - radio servido)], [CLOACA (SIN CONEXION - radio servido)], [AG Y CL (SIN CONEXION - radio servido)], [TOTAL TASA BASICA], [AGUA (SERVICIO MEDIDO - medidores)], [AGUA Y CLOACA (SERVICIO MEDIDO - medidores)], [TOTAL SERVICIO MEDIDO], [TOTAL CLIENTES FACTURADOS], [TOTAL CLIENTES NO FACTURADOS], [ID_LOCALIDAD]) VALUES (1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, 1)
INSERT [dbo].[DatosServicio] ([ID], [TIPO DE SERVICIO], [VOLUMEN DISTRIBUIDOS m3/D], [HS DE SERV], [FACTURA SI/NO], [DOTACION ACTIVA], [AGUA (CON CONEXION - SERVICIO NO MEDIDO)], [CLOACA (CON CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)], [AGUA (SIN CONEXION - radio servido)], [CLOACA (SIN CONEXION - radio servido)], [AG Y CL (SIN CONEXION - radio servido)], [TOTAL TASA BASICA], [AGUA (SERVICIO MEDIDO - medidores)], [AGUA Y CLOACA (SERVICIO MEDIDO - medidores)], [TOTAL SERVICIO MEDIDO], [TOTAL CLIENTES FACTURADOS], [TOTAL CLIENTES NO FACTURADOS], [ID_LOCALIDAD]) VALUES (2, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, 2)
INSERT [dbo].[DatosServicio] ([ID], [TIPO DE SERVICIO], [VOLUMEN DISTRIBUIDOS m3/D], [HS DE SERV], [FACTURA SI/NO], [DOTACION ACTIVA], [AGUA (CON CONEXION - SERVICIO NO MEDIDO)], [CLOACA (CON CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)], [AGUA (SIN CONEXION - radio servido)], [CLOACA (SIN CONEXION - radio servido)], [AG Y CL (SIN CONEXION - radio servido)], [TOTAL TASA BASICA], [AGUA (SERVICIO MEDIDO - medidores)], [AGUA Y CLOACA (SERVICIO MEDIDO - medidores)], [TOTAL SERVICIO MEDIDO], [TOTAL CLIENTES FACTURADOS], [TOTAL CLIENTES NO FACTURADOS], [ID_LOCALIDAD]) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, 3)
INSERT [dbo].[DatosServicio] ([ID], [TIPO DE SERVICIO], [VOLUMEN DISTRIBUIDOS m3/D], [HS DE SERV], [FACTURA SI/NO], [DOTACION ACTIVA], [AGUA (CON CONEXION - SERVICIO NO MEDIDO)], [CLOACA (CON CONEXION - SERVICIO NO MEDIDO)], [AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)], [AGUA (SIN CONEXION - radio servido)], [CLOACA (SIN CONEXION - radio servido)], [AG Y CL (SIN CONEXION - radio servido)], [TOTAL TASA BASICA], [AGUA (SERVICIO MEDIDO - medidores)], [AGUA Y CLOACA (SERVICIO MEDIDO - medidores)], [TOTAL SERVICIO MEDIDO], [TOTAL CLIENTES FACTURADOS], [TOTAL CLIENTES NO FACTURADOS], [ID_LOCALIDAD]) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, 4)
SET IDENTITY_INSERT [dbo].[DatosServicio] OFF
GO
SET IDENTITY_INSERT [dbo].[Lista_Localidad] ON 

INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (1, N'Resistencia')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (2, N'Barranqueras')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (3, N'Puerto Vilelas')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (4, N'Fontana')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (5, N'Puerto Antequeras')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (6, N'Barrio de los Pescadores')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (7, N'Colonia Benitez')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (8, N'Margarita Belen')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (9, N'Isla del Cerrito')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (10, N'La Leonesa')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (11, N'Las Palmas')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (12, N'General Vedia')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (13, N'Puerto Bermejo')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (14, N'La Escondida')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (15, N'Colonia Elisa')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (16, N'Colonia Baranda')
INSERT [dbo].[Lista_Localidad] ([ID], [Nombre]) VALUES (17, N'Cote Lai')
SET IDENTITY_INSERT [dbo].[Lista_Localidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([ID], [Rol]) VALUES (1, N'SuperUsuario')
INSERT [dbo].[Rol] ([ID], [Rol]) VALUES (2, N'Administrador')
INSERT [dbo].[Rol] ([ID], [Rol]) VALUES (3, N'Usuario')
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Tabla] ON 

INSERT [dbo].[Tabla] ([ID], [Nombre_Tabla]) VALUES (1, N'DatosDeLocalidades')
INSERT [dbo].[Tabla] ([ID], [Nombre_Tabla]) VALUES (2, N'DatosFuente')
INSERT [dbo].[Tabla] ([ID], [Nombre_Tabla]) VALUES (3, N'DatosServicio')
INSERT [dbo].[Tabla] ([ID], [Nombre_Tabla]) VALUES (4, N'DatosFinancieros')
INSERT [dbo].[Tabla] ([ID], [Nombre_Tabla]) VALUES (5, N'DatosIndirectos')
SET IDENTITY_INSERT [dbo].[Tabla] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([ID], [Nombre], [Password], [ID_Rol]) VALUES (1, N'Luis', N'1234', 1)
INSERT [dbo].[Usuario] ([ID], [Nombre], [Password], [ID_Rol]) VALUES (3, N'Mariel', N'1234', 3)
INSERT [dbo].[Usuario] ([ID], [Nombre], [Password], [ID_Rol]) VALUES (4, N'Pablo', N'1234', 2)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[Zona] ON 

INSERT [dbo].[Zona] ([Id], [Zona]) VALUES (1, N'AMGR')
INSERT [dbo].[Zona] ([Id], [Zona]) VALUES (2, N'ZONA I')
INSERT [dbo].[Zona] ([Id], [Zona]) VALUES (3, N'ZONA II')
INSERT [dbo].[Zona] ([Id], [Zona]) VALUES (4, N'ZONA III')
INSERT [dbo].[Zona] ([Id], [Zona]) VALUES (5, N'ZONA IV')
INSERT [dbo].[Zona] ([Id], [Zona]) VALUES (6, N'ZONA V')
SET IDENTITY_INSERT [dbo].[Zona] OFF
GO
ALTER TABLE [dbo].[Cambios]  WITH CHECK ADD  CONSTRAINT [FK_Cambios_Tabla] FOREIGN KEY([Id_Tabla])
REFERENCES [dbo].[Tabla] ([ID])
GO
ALTER TABLE [dbo].[Cambios] CHECK CONSTRAINT [FK_Cambios_Tabla]
GO
ALTER TABLE [dbo].[Cambios]  WITH CHECK ADD  CONSTRAINT [FK_Cambios_Usuario] FOREIGN KEY([Usuario])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[Cambios] CHECK CONSTRAINT [FK_Cambios_Usuario]
GO
ALTER TABLE [dbo].[DatosFinancieros]  WITH CHECK ADD  CONSTRAINT [FK_DatosFinancieros_DatosDeLocalidades] FOREIGN KEY([ID_LOCALIDAD])
REFERENCES [dbo].[DatosDeLocalidades] ([ID])
GO
ALTER TABLE [dbo].[DatosFinancieros] CHECK CONSTRAINT [FK_DatosFinancieros_DatosDeLocalidades]
GO
ALTER TABLE [dbo].[DatosFuente]  WITH CHECK ADD  CONSTRAINT [FK_DatosFuente_DatosDeLocalidades] FOREIGN KEY([ID_LOCALIDAD])
REFERENCES [dbo].[DatosDeLocalidades] ([ID])
GO
ALTER TABLE [dbo].[DatosFuente] CHECK CONSTRAINT [FK_DatosFuente_DatosDeLocalidades]
GO
ALTER TABLE [dbo].[DatosIndirectos]  WITH CHECK ADD  CONSTRAINT [FK_DatosIndirectos_DatosDeLocalidades] FOREIGN KEY([ID_LOCALIDAD])
REFERENCES [dbo].[DatosDeLocalidades] ([ID])
GO
ALTER TABLE [dbo].[DatosIndirectos] CHECK CONSTRAINT [FK_DatosIndirectos_DatosDeLocalidades]
GO
ALTER TABLE [dbo].[DatosServicio]  WITH CHECK ADD  CONSTRAINT [FK_DatosServicio_DatosServicio] FOREIGN KEY([ID_LOCALIDAD])
REFERENCES [dbo].[DatosDeLocalidades] ([ID])
GO
ALTER TABLE [dbo].[DatosServicio] CHECK CONSTRAINT [FK_DatosServicio_DatosServicio]
GO
ALTER TABLE [dbo].[Se_efectuan_en]  WITH CHECK ADD FOREIGN KEY([ID_Cambios])
REFERENCES [dbo].[Cambios] ([ID])
GO
ALTER TABLE [dbo].[Se_efectuan_en]  WITH CHECK ADD  CONSTRAINT [FK__Se_efectu__ID_Da__5CD6CB2B] FOREIGN KEY([ID_DatosDeLocalidades])
REFERENCES [dbo].[DatosDeLocalidades] ([ID])
GO
ALTER TABLE [dbo].[Se_efectuan_en] CHECK CONSTRAINT [FK__Se_efectu__ID_Da__5CD6CB2B]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([ID_Rol])
REFERENCES [dbo].[Rol] ([ID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO
/****** Object:  StoredProcedure [dbo].[InsertarDatosIterativo_DatosFinancieros]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarDatosIterativo_DatosFinancieros]
AS
BEGIN
    DECLARE @LocalidadID INT;

    DECLARE cur CURSOR FOR
    SELECT ID
    FROM DatosDeLocalidades;

    OPEN cur;
    FETCH NEXT FROM cur INTO @LocalidadID;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Verificar si ya existe un registro en DatosFinanciero para la localidad actual
        IF NOT EXISTS (
            SELECT 1
            FROM DatosFinancieros
            WHERE ID_LOCALIDAD = @LocalidadID
        )
        BEGIN
            -- Si no existe, insertar valores predeterminados en DatosFinancieros para esa localidad
            INSERT INTO DatosFinancieros(ID_LOCALIDAD, [CLOACA (CON CONEXION - SERVICIO NO MEDIDO)], [AGUA (CON CONEXION - SERVICIO NO MEDIDO)],
			[AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)], [CLOACA (SIN CONEXION - SERVICIO NO MEDIDO)], [AGUA (SIN CONEXION - SERVICIO NO MEDIDO)], 
			[AG Y CL (SIN CONEXION - SERVICIO NO MEDIDO)], [TOTAL TASA BASICA], [AGUA (SERVICIO MEDIDO)], [AGUA Y CLOACA (SERVICIO MEDIDO)], 
			[TOTAL SERVICIO MEDIDO], [TOTAL GENERAL FACTURADOS],[TOTAL NO FACTURADOS])
            VALUES (@LocalidadID, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

        END;

        FETCH NEXT FROM cur INTO @LocalidadID;
    END;

    CLOSE cur;
    DEALLOCATE cur;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarDatosIterativo_DatosFuente]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarDatosIterativo_DatosFuente]
AS
BEGIN
    DECLARE @LocalidadID INT;

    DECLARE cur CURSOR FOR
    SELECT ID
    FROM DatosDeLocalidades;

    OPEN cur;
    FETCH NEXT FROM cur INTO @LocalidadID;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Verificar si ya existe un registro en DatosFuente para la localidad actual
        IF NOT EXISTS (
            SELECT 1
            FROM DatosFuente
            WHERE ID_LOCALIDAD = @LocalidadID
        )
        BEGIN
            -- Si no existe, insertar valores predeterminados en DatosFuente para esa localidad
            INSERT INTO DatosFuente (ID_LOCALIDAD, [TIPO DE FUENTE], [NOMBRE DE LA FUENTE], [NOMBRE DE ACUEDUCTO])
            VALUES (@LocalidadID, NULL, NULL, NULL);
        END;

        FETCH NEXT FROM cur INTO @LocalidadID;
    END;

    CLOSE cur;
    DEALLOCATE cur;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarDatosIterativo_DatosIndirectos]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertarDatosIterativo_DatosIndirectos]
AS
BEGIN
    DECLARE @LocalidadID INT;

    DECLARE cur CURSOR FOR
    SELECT ID
    FROM DatosDeLocalidades;

    OPEN cur;
    FETCH NEXT FROM cur INTO @LocalidadID;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Verificar si ya existe un registro en DatosFinanciero para la localidad actual
        IF NOT EXISTS (
            SELECT 1
            FROM DatosIndirectos
            WHERE ID_LOCALIDAD = @LocalidadID
        )
        BEGIN
            -- Si no existe, insertar valores predeterminados en DatosFinancieros para esa localidad
            INSERT INTO DatosIndirectos(ID_LOCALIDAD, [USUARIOS AGUA], [USUARIOS CLOACA], [USUARIOS AG Y CL],
[TOTAL USUARIOS], [% COBERTURA POR CONEXION (AGUA)], [% COBERTURA POR CONEXION (CLOACA)], [% COBERTURA POR CONEXION (AyC)], 
			[% COBERTURA POR USUARIO (AGUA)], [% COBERTURA POR USUARIO (CLOACA)], [% COBERTURA POR USUARIO (AyC)], [% MICROMEDICION], 
			[% RECAUDACION], [% de empleados x 1000conex])
            VALUES (@LocalidadID, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

        END;

        FETCH NEXT FROM cur INTO @LocalidadID;
    END;

    CLOSE cur;
    DEALLOCATE cur;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsertarDatosIterativo_DatosServicios]    Script Date: 26/9/2024 08:58:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE PROCEDURE [dbo].[InsertarDatosIterativo_DatosServicios]
AS
BEGIN
    DECLARE @LocalidadID INT;

    DECLARE cur CURSOR FOR
    SELECT ID
    FROM DatosDeLocalidades;

    OPEN cur;
    FETCH NEXT FROM cur INTO @LocalidadID;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Verificar si ya existe un registro en DatosServicio para la localidad actual
        IF NOT EXISTS (
            SELECT 1
            FROM DatosServicio
            WHERE ID_LOCALIDAD = @LocalidadID
        )
        BEGIN
            -- Si no existe, insertar valores predeterminados en DatosServicio para esa localidad
            INSERT INTO DatosServicio (ID_LOCALIDAD, [TIPO DE SERVICIO], 
			[VOLUMEN DISTRIBUIDOS m3/D], [HS DE SERV],
			[FACTURA SI/NO], [DOTACION ACTIVA], [AGUA (CON CONEXION - SERVICIO NO MEDIDO)], [CLOACA (CON CONEXION - SERVICIO NO MEDIDO)],
			[AG Y CL (CON CONEXION - SERVICIO NO MEDIDO)], [AGUA (SIN CONEXION - radio servido)], [CLOACA (SIN CONEXION - radio servido)],
			[AG Y CL (SIN CONEXION - radio servido)], [TOTAL TASA BASICA], [AGUA (SERVICIO MEDIDO - medidores)], [AGUA Y CLOACA (SERVICIO MEDIDO - medidores)],
			[TOTAL SERVICIO MEDIDO], [TOTAL CLIENTES NO FACTURADOS], 
[TOTAL CLIENTES FACTURADOS])
            VALUES (@LocalidadID, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

        END;

        FETCH NEXT FROM cur INTO @LocalidadID;
    END;

    CLOSE cur;
    DEALLOCATE cur;
END;
GO
USE [master]
GO
ALTER DATABASE [BaseActualizada] SET  READ_WRITE 
GO
