USE [master]
GO
/****** Object:  Database [AsesorIA]    Script Date: 27/06/2025 09:33:55 ******/
CREATE DATABASE [AsesorIA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AsesorIA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AsesorIA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AsesorIA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AsesorIA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AsesorIA] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AsesorIA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AsesorIA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AsesorIA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AsesorIA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AsesorIA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AsesorIA] SET ARITHABORT OFF 
GO
ALTER DATABASE [AsesorIA] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AsesorIA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AsesorIA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AsesorIA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AsesorIA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AsesorIA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AsesorIA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AsesorIA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AsesorIA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AsesorIA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AsesorIA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AsesorIA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AsesorIA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AsesorIA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AsesorIA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AsesorIA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AsesorIA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AsesorIA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AsesorIA] SET  MULTI_USER 
GO
ALTER DATABASE [AsesorIA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AsesorIA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AsesorIA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AsesorIA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AsesorIA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AsesorIA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AsesorIA] SET QUERY_STORE = ON
GO
ALTER DATABASE [AsesorIA] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AsesorIA]
GO
/****** Object:  Table [dbo].[acciones]    Script Date: 27/06/2025 09:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acciones](
	[id] [varchar](255) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[simbolo] [varchar](10) NOT NULL,
	[sector] [varchar](50) NOT NULL,
	[id_noticia] [varchar](255) NOT NULL,
 CONSTRAINT [PK_acciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 27/06/2025 09:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[id] [varchar](255) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Contraseña] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carteras]    Script Date: 27/06/2025 09:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carteras](
	[id] [varchar](255) NOT NULL,
	[id_usuarios] [varchar](255) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[tipo] [varchar](20) NOT NULL,
 CONSTRAINT [PK_carteras] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comentarios]    Script Date: 27/06/2025 09:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comentarios](
	[id] [varchar](255) NOT NULL,
	[id_acciones] [varchar](255) NULL,
	[id_usuario] [varchar](255) NOT NULL,
	[contenido] [text] NOT NULL,
	[fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_comentarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inversiones]    Script Date: 27/06/2025 09:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inversiones](
	[id] [varchar](255) NOT NULL,
	[id_cartera] [varchar](255) NOT NULL,
	[id_accion] [varchar](255) NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[fecha] [date] NOT NULL,
 CONSTRAINT [PK_inversiones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[noticias]    Script Date: 27/06/2025 09:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[noticias](
	[id] [varchar](255) NOT NULL,
	[fuentes] [varchar](100) NOT NULL,
	[enlace] [text] NOT NULL,
	[resumen] [text] NOT NULL,
	[id_admins] [varchar](255) NULL,
	[fecha] [date] NOT NULL,
 CONSTRAINT [PK_noticias_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notificaciones]    Script Date: 27/06/2025 09:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notificaciones](
	[id] [varchar](255) NOT NULL,
	[id_recomendacion] [varchar](255) NOT NULL,
	[mensaje] [varchar](max) NOT NULL,
	[fecha_envio] [datetime] NOT NULL,
	[leido] [bit] NOT NULL,
 CONSTRAINT [PK_notificaciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[recomendaciones]    Script Date: 27/06/2025 09:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recomendaciones](
	[id] [varchar](255) NOT NULL,
	[id_noticias] [varchar](255) NOT NULL,
	[tipo] [varchar](20) NOT NULL,
	[motivo] [text] NOT NULL,
	[fecha] [date] NOT NULL,
 CONSTRAINT [PK_recomendaciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 27/06/2025 09:33:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id] [varchar](255) NOT NULL,
	[nombres] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[contrasenia] [varchar](255) NOT NULL,
	[rol] [binary](50) NOT NULL,
	[id_notificaciones] [varchar](255) NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [PK_noticias]    Script Date: 27/06/2025 09:33:55 ******/
CREATE NONCLUSTERED INDEX [PK_noticias] ON [dbo].[noticias]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[acciones]  WITH CHECK ADD  CONSTRAINT [FK_acciones_noticias] FOREIGN KEY([id_noticia])
REFERENCES [dbo].[noticias] ([id])
GO
ALTER TABLE [dbo].[acciones] CHECK CONSTRAINT [FK_acciones_noticias]
GO
ALTER TABLE [dbo].[carteras]  WITH CHECK ADD  CONSTRAINT [FK_carteras_usuarios1] FOREIGN KEY([id_usuarios])
REFERENCES [dbo].[usuarios] ([id])
GO
ALTER TABLE [dbo].[carteras] CHECK CONSTRAINT [FK_carteras_usuarios1]
GO
ALTER TABLE [dbo].[comentarios]  WITH CHECK ADD  CONSTRAINT [FK_comentarios_acciones] FOREIGN KEY([id_acciones])
REFERENCES [dbo].[acciones] ([id])
GO
ALTER TABLE [dbo].[comentarios] CHECK CONSTRAINT [FK_comentarios_acciones]
GO
ALTER TABLE [dbo].[comentarios]  WITH CHECK ADD  CONSTRAINT [FK_comentarios_usuarios1] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuarios] ([id])
GO
ALTER TABLE [dbo].[comentarios] CHECK CONSTRAINT [FK_comentarios_usuarios1]
GO
ALTER TABLE [dbo].[inversiones]  WITH CHECK ADD  CONSTRAINT [FK_inversiones_acciones1] FOREIGN KEY([id_accion])
REFERENCES [dbo].[acciones] ([id])
GO
ALTER TABLE [dbo].[inversiones] CHECK CONSTRAINT [FK_inversiones_acciones1]
GO
ALTER TABLE [dbo].[inversiones]  WITH CHECK ADD  CONSTRAINT [FK_inversiones_carteras1] FOREIGN KEY([id_cartera])
REFERENCES [dbo].[carteras] ([id])
GO
ALTER TABLE [dbo].[inversiones] CHECK CONSTRAINT [FK_inversiones_carteras1]
GO
ALTER TABLE [dbo].[noticias]  WITH CHECK ADD  CONSTRAINT [FK_noticias_Admins] FOREIGN KEY([id_admins])
REFERENCES [dbo].[Admins] ([id])
GO
ALTER TABLE [dbo].[noticias] CHECK CONSTRAINT [FK_noticias_Admins]
GO
ALTER TABLE [dbo].[notificaciones]  WITH CHECK ADD  CONSTRAINT [FK_notificaciones_recomendaciones] FOREIGN KEY([id_recomendacion])
REFERENCES [dbo].[recomendaciones] ([id])
GO
ALTER TABLE [dbo].[notificaciones] CHECK CONSTRAINT [FK_notificaciones_recomendaciones]
GO
ALTER TABLE [dbo].[recomendaciones]  WITH CHECK ADD  CONSTRAINT [FK_recomendaciones_noticias] FOREIGN KEY([id_noticias])
REFERENCES [dbo].[noticias] ([id])
GO
ALTER TABLE [dbo].[recomendaciones] CHECK CONSTRAINT [FK_recomendaciones_noticias]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_notificaciones] FOREIGN KEY([id_notificaciones])
REFERENCES [dbo].[notificaciones] ([id])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_notificaciones]
GO
USE [master]
GO
ALTER DATABASE [AsesorIA] SET  READ_WRITE 
GO
