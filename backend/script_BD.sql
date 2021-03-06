USE [paradacerta]
GO
/****** Object:  Table [dbo].[Avaliacaos]    Script Date: 14/06/2020 21:10:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Avaliacaos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Parceiro] [int] NOT NULL,
	[Banheiro_Nota] [int] NOT NULL,
	[Alimentacao_Nota] [int] NOT NULL,
	[Seguranca_Nota] [int] NOT NULL,
	[Banheiro_Avaliacao] [nvarchar](max) NULL,
	[Alimentacao_Avaliacao] [nvarchar](max) NULL,
	[Seguranca_Avaliacao] [nvarchar](max) NULL,
	[Id_Motorista] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Avaliacaos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credencials]    Script Date: 14/06/2020 21:10:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credencials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](max) NULL,
	[Senha] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Credencials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parceiros]    Script Date: 14/06/2020 21:10:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parceiros](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Pessoa] [int] NOT NULL,
	[Id_Credencial] [int] NOT NULL,
	[Latitude] [nvarchar](max) NULL,
	[Longitude] [nvarchar](max) NULL,
	[SERV_Abast] [int] NOT NULL,
	[SERV_Med] [int] NOT NULL,
	[SERV_Psico] [int] NOT NULL,
	[SERV_Odonto] [int] NOT NULL,
	[SERV_Borracharia] [int] NOT NULL,
	[SERV_Funilaria] [int] NOT NULL,
	[SERV_Refeicoes] [int] NOT NULL,
	[SERV_Mecan] [int] NOT NULL,
	[FL_ALoj] [int] NOT NULL,
	[FL_Desc] [int] NOT NULL,
	[FL_Conv] [int] NOT NULL,
	[FL_Ducha] [int] NOT NULL,
	[FL_Estac] [int] NOT NULL,
	[FL_Vest] [int] NOT NULL,
	[FL_Wifi] [int] NOT NULL,
	[BRD_Bone] [int] NOT NULL,
	[BRD_Luva] [int] NOT NULL,
	[BRD_Bota] [int] NOT NULL,
	[BRD_Cuia] [int] NOT NULL,
	[BRD_Frigideira] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Parceiros] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pessoas]    Script Date: 14/06/2020 21:10:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pessoas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NULL,
	[Telefone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Id_Credencial] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Pessoas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 14/06/2020 21:10:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produtos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Parceiro] [int] NOT NULL,
	[Descricao] [nvarchar](max) NULL,
	[Vlr_Reais] [decimal](18, 2) NOT NULL,
	[Vlr_Pontos] [decimal](18, 2) NOT NULL,
	[Foto] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Produtos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegistroLogins]    Script Date: 14/06/2020 21:10:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroLogins](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](max) NULL,
	[Senha] [nvarchar](max) NULL,
	[Session] [nvarchar](max) NULL,
	[DataLogin] [datetime] NOT NULL,
	[Successful] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.RegistroLogins] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Avaliacaos] ADD  DEFAULT ((0)) FOR [Id_Motorista]
GO
