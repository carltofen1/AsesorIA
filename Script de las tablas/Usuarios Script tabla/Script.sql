USE [AsesorIA]
GO

/****** Object:  Table [dbo].[usuarios]    Script Date: 27/06/2025 14:35:20 ******/
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

ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_notificaciones] FOREIGN KEY([id_notificaciones])
REFERENCES [dbo].[notificaciones] ([id])
GO

ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_notificaciones]
GO

