USE [POINTEX]
GO
/****** Object:  Table [dbo].[Entidad]    Script Date: 24/05/2019 15:47:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](300) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[RazonSocial] [varchar](300) NULL,
	[Representante] [varchar](350) NULL,
	[IdPais] [int] NOT NULL,
	[Direccion] [varchar](300) NULL,
	[Telefono] [varchar](50) NULL,
	[Correo] [varchar](150) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NULL,
	[Relacion] [varchar](1) NULL,
	[Fabricante] [varchar](1) NULL,
 CONSTRAINT [PK_Entidad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_ArteProdPresentacion]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_ArteProdPresentacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPresentacion] [int] NOT NULL,
	[IdArte] [int] NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_ArteProdPresentacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_Artes]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_Artes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[URLArte] [varchar](300) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[IdProducto] [int] NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[IdTipoArte] [int] NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_Artes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_CodigoProducto]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_CodigoProducto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPresentacion] [int] NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[Codigo] [varchar](200) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_CodigoProducto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_ComposicionProducto]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_ComposicionProducto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMolPrincipio] [int] NOT NULL,
	[IdDisProdReg] [int] NOT NULL,
	[Cantidad] [int] NULL,
	[IdUnidad] [int] NULL,
	[CantidadSobre] [int] NULL,
	[IdUnidadSobre] [int] NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_ComposicionProducto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_DistProdRegulatorio]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_DistProdRegulatorio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdForma] [int] NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdRegistro] [int] NOT NULL,
	[IdEstadoDist] [int] NOT NULL,
	[IdFabricante] [int] NOT NULL,
	[IdLineaProm] [int] NOT NULL,
	[IdFiguraLegal] [int] NOT NULL,
	[FechaProduccion] [date] NULL,
	[FecharCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_DistProdRegulatorio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_DistribuidorProducto]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_DistribuidorProducto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdDisProdReg] [int] NOT NULL,
	[IdDistribuidor] [int] NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_DistribuidorProducto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GP_EstadoDistReg]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_EstadoDistReg](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_EstadoDistReg] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_FaseMarca]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_FaseMarca](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](150) NULL,
	[Descripcion] [varchar](300) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_FaseMarca] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_FormaFarmaceutica]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_FormaFarmaceutica](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_FormaFarmaceutica] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_FormaTipoPresentacion]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_FormaTipoPresentacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdForma] [int] NOT NULL,
	[IdTipoPresentacion] [int] NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_FormaTipoPresentacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GP_LineaPromocion]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_LineaPromocion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_LineaPromocion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_Marca]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_Marca](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[URLRegistro] [varchar](200) NULL,
	[NoRegistro] [varchar](200) NULL,
	[Folio] [varchar](150) NULL,
	[Libro] [varchar](150) NULL,
	[IdOrigen] [int] NOT NULL,
	[IdFase] [int] NOT NULL,
	[FechaCreacion] [date] NULL,
	[Comentarios] [varchar](300) NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_GP_Marca] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_MarcaProducto]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_MarcaProducto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdMarca] [int] NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_MarcaProducto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_Molecula]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_Molecula](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_Molecula] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_MoleculaPrincipio]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_MoleculaPrincipio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMolecula] [int] NOT NULL,
	[IdPrincipio] [int] NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_MoleculaPrincipio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_PresentacionProducto]    Script Date: 24/05/2019 15:47:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_PresentacionProducto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](300) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[Cantidad] [int] NULL,
	[IdTipoPresentacion] [int] NULL,
	[IdDistProdReg] [int] NULL,
	[VidaUtil] [varchar](200) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_PresentacionProducto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_PrincipioActivo]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_PrincipioActivo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_PrincipioActivo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_Producto]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_Producto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[FechaCreacion] [date] NULL,
	[FechaMod] [date] NULL,
	[FechaDesarrollo] [date] NULL,
	[Comentarios] [varchar](300) NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_GP_Producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_ProductoSAP]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_ProductoSAP](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdDistProdReg] [int] NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_ProductoSAP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_RegistroSanitario]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_RegistroSanitario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoRegistro] [varchar](200) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[FechaVencimiento] [date] NULL,
	[EstimadoObtencion] [varchar](200) NULL,
	[URLRegistro] [varchar](300) NULL,
	[EstadoRegistro] [varchar](200) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_RegistroSanitario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_TipoArte]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_TipoArte](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_TipoArte] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_TipoPresentacion]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_TipoPresentacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_TipoPresentacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PX_GP_UnidadMedida]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GP_UnidadMedida](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](200) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NOT NULL,
 CONSTRAINT [PK_GP_UnidadMedida] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdModulo] [int] NOT NULL,
	[URL] [varchar](300) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[Icono] [varchar](150) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modulo]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modulo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdSistema] [int] NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[Icono] [varchar](150) NULL,
	[Imagen] [varchar](150) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Modulo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Codigo] [varchar](10) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Pais_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[IdModulo] [int] NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Perfil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfil_Usuario]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil_Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdPerfil] [int] NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Perfil_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdEntidad] [int] NOT NULL,
	[Nombres] [varchar](250) NOT NULL,
	[Apellidos] [varchar](300) NOT NULL,
	[Genero] [char](1) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [nchar](10) NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona_Contacto]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona_Contacto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdPais] [int] NOT NULL,
	[Direccion] [varchar](300) NULL,
	[Correo] [varchar](200) NULL,
	[Telefono] [varchar](100) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Persona_Contacto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona_Identidad]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona_Identidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CUI] [decimal](13, 0) NULL,
	[NIT] [decimal](10, 0) NULL,
	[IGSS] [decimal](13, 0) NULL,
	[Pasaporte] [varchar](200) NULL,
	[IdPersona] [int] NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Persona_Identidad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles_Usuario]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles_Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdMenu] [int] NOT NULL,
	[IdSubMenu] [int] NULL,
	[FechaCreacion] [date] NOT NULL,
	[FechaMod] [date] NULL,
	[FechaBaja] [date] NULL,
	[Observaciones] [varchar](300) NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Roles_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sistema]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sistema](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[Icono] [varchar](200) NULL,
	[Imagen] [varchar](200) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Sistema] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sub_Menu]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sub_Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMenu] [int] NOT NULL,
	[URL] [varchar](300) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Descripcion] [varchar](300) NULL,
	[Icono] [varchar](150) NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Sub_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Usuario]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Tipo_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 24/05/2019 15:47:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[Usuario] [varchar](300) NOT NULL,
	[Clave] [varchar](500) NOT NULL,
	[FechaCreacion] [date] NOT NULL,
	[IdTipoUsuario] [int] NOT NULL,
	[FechaBaja] [date] NULL,
	[Estado] [char](1) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF_Entidad_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Entidad] ADD  CONSTRAINT [DF_Entidad_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_ArteProdPresentacion] ADD  CONSTRAINT [DF_GP_ArteProdPresentacion_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_ArteProdPresentacion] ADD  CONSTRAINT [DF_GP_ArteProdPresentacion_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_Artes] ADD  CONSTRAINT [DF_GP_Artes_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_Artes] ADD  CONSTRAINT [DF_GP_Artes_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_CodigoProducto] ADD  CONSTRAINT [DF_GP_CodigoProducto_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_CodigoProducto] ADD  CONSTRAINT [DF_GP_CodigoProducto_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_ComposicionProducto] ADD  CONSTRAINT [DF_GP_ComposicionProducto_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_ComposicionProducto] ADD  CONSTRAINT [DF_GP_ComposicionProducto_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio] ADD  CONSTRAINT [DF_GP_DistProdRegulatorio_FecharCreacion]  DEFAULT (getdate()) FOR [FecharCreacion]
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio] ADD  CONSTRAINT [DF_GP_DistProdRegulatorio_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_DistribuidorProducto] ADD  CONSTRAINT [DF_GP_DistribuidorProducto_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_DistribuidorProducto] ADD  CONSTRAINT [DF_GP_DistribuidorProducto_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_EstadoDistReg] ADD  CONSTRAINT [DF_GP_EstadoDistReg_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_FaseMarca] ADD  CONSTRAINT [DF_GP_FaseMarca_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_FaseMarca] ADD  CONSTRAINT [DF_GP_FaseMarca_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_FormaFarmaceutica] ADD  CONSTRAINT [DF_GP_FormaFarmaceutica_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_FormaFarmaceutica] ADD  CONSTRAINT [DF_GP_FormaFarmaceutica_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_FormaTipoPresentacion] ADD  CONSTRAINT [DF_GP_FormaTipoPresentacion_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_FormaTipoPresentacion] ADD  CONSTRAINT [DF_GP_FormaTipoPresentacion_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_LineaPromocion] ADD  CONSTRAINT [DF_GP_LineaPromocion_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_LineaPromocion] ADD  CONSTRAINT [DF_GP_LineaPromocion_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_Marca] ADD  CONSTRAINT [DF_GP_Marca_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_Marca] ADD  CONSTRAINT [DF_GP_Marca_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_MarcaProducto] ADD  CONSTRAINT [DF_GP_MarcaProducto_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_MarcaProducto] ADD  CONSTRAINT [DF_GP_MarcaProducto_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_Molecula] ADD  CONSTRAINT [DF_GP_Molecula_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_Molecula] ADD  CONSTRAINT [DF_GP_Molecula_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_MoleculaPrincipio] ADD  CONSTRAINT [DF_GP_MoleculaPrincipio_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_MoleculaPrincipio] ADD  CONSTRAINT [DF_GP_MoleculaPrincipio_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_PresentacionProducto] ADD  CONSTRAINT [DF_GP_PresentacionProducto_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_PresentacionProducto] ADD  CONSTRAINT [DF_GP_PresentacionProducto_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_PrincipioActivo] ADD  CONSTRAINT [DF_GP_PrincipioActivo_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_PrincipioActivo] ADD  CONSTRAINT [DF_GP_PrincipioActivo_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_Producto] ADD  CONSTRAINT [DF_GP_Producto_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_Producto] ADD  CONSTRAINT [DF_GP_Producto_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_ProductoSAP] ADD  CONSTRAINT [DF_GP_ProductoSAP_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_ProductoSAP] ADD  CONSTRAINT [DF_GP_ProductoSAP_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_RegistroSanitario] ADD  CONSTRAINT [DF_GP_RegistroSanitario_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_RegistroSanitario] ADD  CONSTRAINT [DF_GP_RegistroSanitario_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_TipoArte] ADD  CONSTRAINT [DF_GP_TipoArte_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_TipoArte] ADD  CONSTRAINT [DF_GP_TipoArte_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_TipoPresentacion] ADD  CONSTRAINT [DF_GP_TipoPresentacion_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_TipoPresentacion] ADD  CONSTRAINT [DF_GP_TipoPresentacion_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[GP_UnidadMedida] ADD  CONSTRAINT [DF_GP_UnidadMedida_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[GP_UnidadMedida] ADD  CONSTRAINT [DF_GP_UnidadMedida_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Pais] ADD  CONSTRAINT [DF_Pais_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Pais] ADD  CONSTRAINT [DF_Pais_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Perfil] ADD  CONSTRAINT [DF_Perfil_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Perfil] ADD  CONSTRAINT [DF_Perfil_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Persona] ADD  CONSTRAINT [DF_Persona_Genero]  DEFAULT ('N') FOR [Genero]
GO
ALTER TABLE [dbo].[Persona] ADD  CONSTRAINT [DF_Persona_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Persona] ADD  CONSTRAINT [DF_Persona_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Persona_Contacto] ADD  CONSTRAINT [DF_Persona_Contacto_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Persona_Identidad] ADD  CONSTRAINT [DF_Persona_Identidad_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Roles_Usuario] ADD  CONSTRAINT [DF_Roles_Usuario_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Sistema] ADD  CONSTRAINT [DF_Sistema_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Sub_Menu] ADD  CONSTRAINT [DF_Sub_Menu_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Sub_Menu] ADD  CONSTRAINT [DF_Sub_Menu_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Tipo_Usuario] ADD  CONSTRAINT [DF_Tipo_Usuario_FechaCreacion]  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[Tipo_Usuario] ADD  CONSTRAINT [DF_Tipo_Usuario_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF_Usuario_Estado]  DEFAULT ('A') FOR [Estado]
GO
ALTER TABLE [dbo].[Entidad]  WITH CHECK ADD  CONSTRAINT [FK_Entidad_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Entidad] CHECK CONSTRAINT [FK_Entidad_Pais]
GO
ALTER TABLE [dbo].[GP_ArteProdPresentacion]  WITH CHECK ADD  CONSTRAINT [FK_GP_ArteProdPresentacion_GP_Artes] FOREIGN KEY([IdArte])
REFERENCES [dbo].[GP_Artes] ([Id])
GO
ALTER TABLE [dbo].[GP_ArteProdPresentacion] CHECK CONSTRAINT [FK_GP_ArteProdPresentacion_GP_Artes]
GO
ALTER TABLE [dbo].[GP_ArteProdPresentacion]  WITH CHECK ADD  CONSTRAINT [FK_GP_ArteProdPresentacion_GP_PresentacionProducto] FOREIGN KEY([IdPresentacion])
REFERENCES [dbo].[GP_PresentacionProducto] ([Id])
GO
ALTER TABLE [dbo].[GP_ArteProdPresentacion] CHECK CONSTRAINT [FK_GP_ArteProdPresentacion_GP_PresentacionProducto]
GO
ALTER TABLE [dbo].[GP_Artes]  WITH CHECK ADD  CONSTRAINT [FK_GP_Artes_GP_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[GP_Producto] ([Id])
GO
ALTER TABLE [dbo].[GP_Artes] CHECK CONSTRAINT [FK_GP_Artes_GP_Producto]
GO
ALTER TABLE [dbo].[GP_Artes]  WITH CHECK ADD  CONSTRAINT [FK_GP_Artes_GP_TipoArte] FOREIGN KEY([IdTipoArte])
REFERENCES [dbo].[GP_TipoArte] ([Id])
GO
ALTER TABLE [dbo].[GP_Artes] CHECK CONSTRAINT [FK_GP_Artes_GP_TipoArte]
GO
ALTER TABLE [dbo].[GP_CodigoProducto]  WITH CHECK ADD  CONSTRAINT [FK_GP_CodigoProducto_GP_PresentacionProducto] FOREIGN KEY([IdPresentacion])
REFERENCES [dbo].[GP_PresentacionProducto] ([Id])
GO
ALTER TABLE [dbo].[GP_CodigoProducto] CHECK CONSTRAINT [FK_GP_CodigoProducto_GP_PresentacionProducto]
GO
ALTER TABLE [dbo].[GP_ComposicionProducto]  WITH CHECK ADD  CONSTRAINT [FK_GP_ComposicionProducto_GP_DistProdRegulatorio] FOREIGN KEY([IdDisProdReg])
REFERENCES [dbo].[GP_DistProdRegulatorio] ([Id])
GO
ALTER TABLE [dbo].[GP_ComposicionProducto] CHECK CONSTRAINT [FK_GP_ComposicionProducto_GP_DistProdRegulatorio]
GO
ALTER TABLE [dbo].[GP_ComposicionProducto]  WITH CHECK ADD  CONSTRAINT [FK_GP_ComposicionProducto_GP_MoleculaPrincipio] FOREIGN KEY([IdMolPrincipio])
REFERENCES [dbo].[GP_MoleculaPrincipio] ([Id])
GO
ALTER TABLE [dbo].[GP_ComposicionProducto] CHECK CONSTRAINT [FK_GP_ComposicionProducto_GP_MoleculaPrincipio]
GO
ALTER TABLE [dbo].[GP_ComposicionProducto]  WITH CHECK ADD  CONSTRAINT [FK_GP_ComposicionProducto_GP_UnidadMedida] FOREIGN KEY([IdUnidad])
REFERENCES [dbo].[GP_UnidadMedida] ([Id])
GO
ALTER TABLE [dbo].[GP_ComposicionProducto] CHECK CONSTRAINT [FK_GP_ComposicionProducto_GP_UnidadMedida]
GO
ALTER TABLE [dbo].[GP_ComposicionProducto]  WITH CHECK ADD  CONSTRAINT [FK_GP_ComposicionProducto_GP_UnidadMedidaSec] FOREIGN KEY([IdUnidadSobre])
REFERENCES [dbo].[GP_UnidadMedida] ([Id])
GO
ALTER TABLE [dbo].[GP_ComposicionProducto] CHECK CONSTRAINT [FK_GP_ComposicionProducto_GP_UnidadMedidaSec]
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio]  WITH CHECK ADD  CONSTRAINT [FK_GP_DistProdRegulatorio_Entidad] FOREIGN KEY([IdFabricante])
REFERENCES [dbo].[Entidad] ([Id])
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio] CHECK CONSTRAINT [FK_GP_DistProdRegulatorio_Entidad]
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio]  WITH CHECK ADD  CONSTRAINT [FK_GP_DistProdRegulatorio_Entidad1] FOREIGN KEY([IdFiguraLegal])
REFERENCES [dbo].[Entidad] ([Id])
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio] CHECK CONSTRAINT [FK_GP_DistProdRegulatorio_Entidad1]
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio]  WITH CHECK ADD  CONSTRAINT [FK_GP_DistProdRegulatorio_GP_EstadoDistReg] FOREIGN KEY([IdEstadoDist])
REFERENCES [dbo].[GP_EstadoDistReg] ([Id])
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio] CHECK CONSTRAINT [FK_GP_DistProdRegulatorio_GP_EstadoDistReg]
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio]  WITH CHECK ADD  CONSTRAINT [FK_GP_DistProdRegulatorio_GP_FormaFarmaceutica] FOREIGN KEY([IdForma])
REFERENCES [dbo].[GP_FormaFarmaceutica] ([Id])
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio] CHECK CONSTRAINT [FK_GP_DistProdRegulatorio_GP_FormaFarmaceutica]
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio]  WITH CHECK ADD  CONSTRAINT [FK_GP_DistProdRegulatorio_GP_LineaPromocion] FOREIGN KEY([IdLineaProm])
REFERENCES [dbo].[GP_LineaPromocion] ([Id])
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio] CHECK CONSTRAINT [FK_GP_DistProdRegulatorio_GP_LineaPromocion]
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio]  WITH CHECK ADD  CONSTRAINT [FK_GP_DistProdRegulatorio_GP_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[GP_Producto] ([Id])
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio] CHECK CONSTRAINT [FK_GP_DistProdRegulatorio_GP_Producto]
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio]  WITH CHECK ADD  CONSTRAINT [FK_GP_DistProdRegulatorio_GP_RegistroSanitario] FOREIGN KEY([IdRegistro])
REFERENCES [dbo].[GP_RegistroSanitario] ([Id])
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio] CHECK CONSTRAINT [FK_GP_DistProdRegulatorio_GP_RegistroSanitario]
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio]  WITH CHECK ADD  CONSTRAINT [FK_GP_DistProdRegulatorio_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([Id])
GO
ALTER TABLE [dbo].[GP_DistProdRegulatorio] CHECK CONSTRAINT [FK_GP_DistProdRegulatorio_Pais]
GO
ALTER TABLE [dbo].[GP_DistribuidorProducto]  WITH CHECK ADD  CONSTRAINT [FK_GP_DistribuidorProducto_Entidad] FOREIGN KEY([IdDistribuidor])
REFERENCES [dbo].[Entidad] ([Id])
GO
ALTER TABLE [dbo].[GP_DistribuidorProducto] CHECK CONSTRAINT [FK_GP_DistribuidorProducto_Entidad]
GO
ALTER TABLE [dbo].[GP_DistribuidorProducto]  WITH CHECK ADD  CONSTRAINT [FK_GP_DistribuidorProducto_GP_DistProdRegulatorio] FOREIGN KEY([IdDisProdReg])
REFERENCES [dbo].[GP_DistProdRegulatorio] ([Id])
GO
ALTER TABLE [dbo].[GP_DistribuidorProducto] CHECK CONSTRAINT [FK_GP_DistribuidorProducto_GP_DistProdRegulatorio]
GO
ALTER TABLE [dbo].[GP_FormaTipoPresentacion]  WITH CHECK ADD  CONSTRAINT [FK_GP_FormaTipoPresentacion_GP_FormaFarmaceutica] FOREIGN KEY([IdForma])
REFERENCES [dbo].[GP_FormaFarmaceutica] ([Id])
GO
ALTER TABLE [dbo].[GP_FormaTipoPresentacion] CHECK CONSTRAINT [FK_GP_FormaTipoPresentacion_GP_FormaFarmaceutica]
GO
ALTER TABLE [dbo].[GP_FormaTipoPresentacion]  WITH CHECK ADD  CONSTRAINT [FK_GP_FormaTipoPresentacion_GP_TipoPresentacion] FOREIGN KEY([IdTipoPresentacion])
REFERENCES [dbo].[GP_TipoPresentacion] ([Id])
GO
ALTER TABLE [dbo].[GP_FormaTipoPresentacion] CHECK CONSTRAINT [FK_GP_FormaTipoPresentacion_GP_TipoPresentacion]
GO
ALTER TABLE [dbo].[GP_Marca]  WITH CHECK ADD  CONSTRAINT [FK_GP_Marca_GP_FaseMarca] FOREIGN KEY([IdFase])
REFERENCES [dbo].[GP_FaseMarca] ([Id])
GO
ALTER TABLE [dbo].[GP_Marca] CHECK CONSTRAINT [FK_GP_Marca_GP_FaseMarca]
GO
ALTER TABLE [dbo].[GP_Marca]  WITH CHECK ADD  CONSTRAINT [FK_GP_Marca_Pais] FOREIGN KEY([IdOrigen])
REFERENCES [dbo].[Pais] ([Id])
GO
ALTER TABLE [dbo].[GP_Marca] CHECK CONSTRAINT [FK_GP_Marca_Pais]
GO
ALTER TABLE [dbo].[GP_MarcaProducto]  WITH CHECK ADD  CONSTRAINT [FK_GP_MarcaProducto_GP_Marca] FOREIGN KEY([IdMarca])
REFERENCES [dbo].[GP_Marca] ([Id])
GO
ALTER TABLE [dbo].[GP_MarcaProducto] CHECK CONSTRAINT [FK_GP_MarcaProducto_GP_Marca]
GO
ALTER TABLE [dbo].[GP_MarcaProducto]  WITH CHECK ADD  CONSTRAINT [FK_GP_MarcaProducto_GP_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[GP_Producto] ([Id])
GO
ALTER TABLE [dbo].[GP_MarcaProducto] CHECK CONSTRAINT [FK_GP_MarcaProducto_GP_Producto]
GO
ALTER TABLE [dbo].[GP_MoleculaPrincipio]  WITH CHECK ADD  CONSTRAINT [FK_GP_MoleculaPrincipio_GP_Molecula] FOREIGN KEY([IdMolecula])
REFERENCES [dbo].[GP_Molecula] ([Id])
GO
ALTER TABLE [dbo].[GP_MoleculaPrincipio] CHECK CONSTRAINT [FK_GP_MoleculaPrincipio_GP_Molecula]
GO
ALTER TABLE [dbo].[GP_MoleculaPrincipio]  WITH CHECK ADD  CONSTRAINT [FK_GP_MoleculaPrincipio_GP_PrincipioActivo] FOREIGN KEY([IdPrincipio])
REFERENCES [dbo].[GP_PrincipioActivo] ([Id])
GO
ALTER TABLE [dbo].[GP_MoleculaPrincipio] CHECK CONSTRAINT [FK_GP_MoleculaPrincipio_GP_PrincipioActivo]
GO
ALTER TABLE [dbo].[GP_PresentacionProducto]  WITH CHECK ADD  CONSTRAINT [FK_GP_PresentacionProducto_GP_DistProdRegulatorio] FOREIGN KEY([IdDistProdReg])
REFERENCES [dbo].[GP_DistProdRegulatorio] ([Id])
GO
ALTER TABLE [dbo].[GP_PresentacionProducto] CHECK CONSTRAINT [FK_GP_PresentacionProducto_GP_DistProdRegulatorio]
GO
ALTER TABLE [dbo].[GP_PresentacionProducto]  WITH CHECK ADD  CONSTRAINT [FK_GP_PresentacionProducto_GP_TipoPresentacion] FOREIGN KEY([IdTipoPresentacion])
REFERENCES [dbo].[GP_TipoPresentacion] ([Id])
GO
ALTER TABLE [dbo].[GP_PresentacionProducto] CHECK CONSTRAINT [FK_GP_PresentacionProducto_GP_TipoPresentacion]
GO
ALTER TABLE [dbo].[GP_ProductoSAP]  WITH CHECK ADD  CONSTRAINT [FK_GP_ProductoSAP_GP_DistProdRegulatorio] FOREIGN KEY([IdDistProdReg])
REFERENCES [dbo].[GP_DistProdRegulatorio] ([Id])
GO
ALTER TABLE [dbo].[GP_ProductoSAP] CHECK CONSTRAINT [FK_GP_ProductoSAP_GP_DistProdRegulatorio]
GO
ALTER TABLE [dbo].[GP_RegistroSanitario]  WITH CHECK ADD  CONSTRAINT [FK_GP_RegistroSanitario_GP_Producto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[GP_Producto] ([Id])
GO
ALTER TABLE [dbo].[GP_RegistroSanitario] CHECK CONSTRAINT [FK_GP_RegistroSanitario_GP_Producto]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Modulo] FOREIGN KEY([IdModulo])
REFERENCES [dbo].[Modulo] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Modulo]
GO
ALTER TABLE [dbo].[Modulo]  WITH CHECK ADD  CONSTRAINT [FK_Modulo_Sistema] FOREIGN KEY([IdSistema])
REFERENCES [dbo].[Sistema] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Modulo] CHECK CONSTRAINT [FK_Modulo_Sistema]
GO
ALTER TABLE [dbo].[Perfil]  WITH CHECK ADD  CONSTRAINT [FK_Perfiles_Modulo] FOREIGN KEY([IdModulo])
REFERENCES [dbo].[Modulo] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Perfil] CHECK CONSTRAINT [FK_Perfiles_Modulo]
GO
ALTER TABLE [dbo].[Perfil_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Perfil_Usuario_Perfil] FOREIGN KEY([IdPerfil])
REFERENCES [dbo].[Perfil] ([Id])
GO
ALTER TABLE [dbo].[Perfil_Usuario] CHECK CONSTRAINT [FK_Perfil_Usuario_Perfil]
GO
ALTER TABLE [dbo].[Perfil_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Perfil_Usuario_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Perfil_Usuario] CHECK CONSTRAINT [FK_Perfil_Usuario_Usuario]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Entidad] FOREIGN KEY([IdEntidad])
REFERENCES [dbo].[Entidad] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Entidad]
GO
ALTER TABLE [dbo].[Persona_Contacto]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Contacto_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Persona_Contacto] CHECK CONSTRAINT [FK_Persona_Contacto_Pais]
GO
ALTER TABLE [dbo].[Persona_Contacto]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Contacto_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([Id])
GO
ALTER TABLE [dbo].[Persona_Contacto] CHECK CONSTRAINT [FK_Persona_Contacto_Persona]
GO
ALTER TABLE [dbo].[Persona_Identidad]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Identidad_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([Id])
GO
ALTER TABLE [dbo].[Persona_Identidad] CHECK CONSTRAINT [FK_Persona_Identidad_Persona]
GO
ALTER TABLE [dbo].[Roles_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Usuario_Menu] FOREIGN KEY([IdMenu])
REFERENCES [dbo].[Menu] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Roles_Usuario] CHECK CONSTRAINT [FK_Roles_Usuario_Menu]
GO
ALTER TABLE [dbo].[Roles_Usuario]  WITH NOCHECK ADD  CONSTRAINT [FK_Roles_Usuario_SubMenus] FOREIGN KEY([IdSubMenu])
REFERENCES [dbo].[Sub_Menu] ([Id])
GO
ALTER TABLE [dbo].[Roles_Usuario] NOCHECK CONSTRAINT [FK_Roles_Usuario_SubMenus]
GO
ALTER TABLE [dbo].[Roles_Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Usuario_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Roles_Usuario] CHECK CONSTRAINT [FK_Roles_Usuario_Usuario]
GO
ALTER TABLE [dbo].[Sub_Menu]  WITH CHECK ADD  CONSTRAINT [FK_Sub_Menu_Menu] FOREIGN KEY([IdMenu])
REFERENCES [dbo].[Menu] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Sub_Menu] CHECK CONSTRAINT [FK_Sub_Menu_Menu]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Persona]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Tipo_Usuario] FOREIGN KEY([IdTipoUsuario])
REFERENCES [dbo].[Tipo_Usuario] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Tipo_Usuario]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripcion de la entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'razón social de la entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'RazonSocial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'representante legal de la entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Representante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador a la tabla de pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'IdPais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'dirección de la entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'teléfono de la entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Telefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'correo de la entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Correo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fecha de creación de la entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'estado de la entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'el campo relacion guarda registros I/E donde  determinan si la empresa es externa o interna ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Relacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'el campo fabricante guarda registros S/N donde  determinan si la empresa es fabricante o no ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'COLUMN',@level2name=N'Fabricante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la información de las Entidades' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Entidad', @level2type=N'CONSTRAINT',@level2name=N'FK_Entidad_Pais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ArteProdPresentacion', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ArteProdPresentacion', @level2type=N'COLUMN',@level2name=N'IdPresentacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de artes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ArteProdPresentacion', @level2type=N'COLUMN',@level2name=N'IdArte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ArteProdPresentacion', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ArteProdPresentacion', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la información del arte seleccionado para un producto en particular por presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ArteProdPresentacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de artes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ArteProdPresentacion', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_ArteProdPresentacion_GP_Artes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ArteProdPresentacion', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_ArteProdPresentacion_GP_PresentacionProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Artes', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'dirección url hacia la imagen de arte' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Artes', @level2type=N'COLUMN',@level2name=N'URLArte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la imagen de arte' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Artes', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'descripción de la imagen de arte' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Artes', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Artes', @level2type=N'COLUMN',@level2name=N'IdProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Artes', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla TipoArte' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Artes', @level2type=N'COLUMN',@level2name=N'IdTipoArte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Artes', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contien todos los artes para los productos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Artes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Artes', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_Artes_GP_Producto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a tipo arte' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Artes', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_Artes_GP_TipoArte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_CodigoProducto', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de presentacionproducto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_CodigoProducto', @level2type=N'COLUMN',@level2name=N'IdPresentacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del código de barras' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_CodigoProducto', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código para generar la imagen de código de barras' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_CodigoProducto', @level2type=N'COLUMN',@level2name=N'Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_CodigoProducto', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_CodigoProducto', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la información del código del producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_CodigoProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de presentación del producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_CodigoProducto', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_CodigoProducto_GP_PresentacionProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla MoleculaPrincipio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'COLUMN',@level2name=N'IdMolPrincipio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla DisProdRegulatorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'COLUMN',@level2name=N'IdDisProdReg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad de medicamento principal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'COLUMN',@level2name=N'Cantidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'unidad de medida del medicamento principal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'COLUMN',@level2name=N'IdUnidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad sobre la que se distribuye el medicamento principal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'COLUMN',@level2name=N'CantidadSobre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'unidad de medida sobre la que se hace la distribución del medicamento principal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'COLUMN',@level2name=N'IdUnidadSobre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contien la información de la composición del producto medico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a distribucion de producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_ComposicionProducto_GP_DistProdRegulatorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la molecula y principio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_ComposicionProducto_GP_MoleculaPrincipio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla unidad para medida principal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_ComposicionProducto_GP_UnidadMedida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de unidad de medida secundaria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ComposicionProducto', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_ComposicionProducto_GP_UnidadMedidaSec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla Producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'IdProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla Forma Farmaceútica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'IdForma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla País' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'IdPais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla Registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'IdRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla EstadoDist' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'IdEstadoDist'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'IdFabricante'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla LineaPromocion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'IdLineaProm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'IdFiguraLegal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de puesta en produccion del producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'FechaProduccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'FecharCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la información de la distribución del producto regulatorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de entidad como fabricante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_DistProdRegulatorio_Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de entidad como figura legal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_DistProdRegulatorio_Entidad1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de estado de dist' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_DistProdRegulatorio_GP_EstadoDistReg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de forma farmaceútica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_DistProdRegulatorio_GP_FormaFarmaceutica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de linea de promocion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_DistProdRegulatorio_GP_LineaPromocion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_DistProdRegulatorio_GP_Producto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de registro sanitario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_DistProdRegulatorio_GP_RegistroSanitario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de país' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistProdRegulatorio', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_DistProdRegulatorio_Pais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistribuidorProducto', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador a la tabla de DistProdRegulatorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistribuidorProducto', @level2type=N'COLUMN',@level2name=N'IdDisProdReg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de Entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistribuidorProducto', @level2type=N'COLUMN',@level2name=N'IdDistribuidor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistribuidorProducto', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistribuidorProducto', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la información de relación entre entidades distribuidoras y el producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistribuidorProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de entidad como distribuidor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistribuidorProducto', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_DistribuidorProducto_Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de DistProdReg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_DistribuidorProducto', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_DistribuidorProducto_GP_DistProdRegulatorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_EstadoDistReg', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del estado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_EstadoDistReg', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del estado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_EstadoDistReg', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creacion del estado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_EstadoDistReg', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado en el sistema A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_EstadoDistReg', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene los estados del producto en el regulatorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_EstadoDistReg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FaseMarca', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la fase de la marca' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FaseMarca', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de la fase de la fase de la marca' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FaseMarca', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fecha de creación de la fase' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FaseMarca', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'estado de la fase A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FaseMarca', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la información de la fase de la marca' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FaseMarca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaFarmaceutica', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la forma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaFarmaceutica', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de la forma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaFarmaceutica', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaFarmaceutica', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaFarmaceutica', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la información de las formas farmaceúticas que existen' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaFarmaceutica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaTipoPresentacion', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de formas farmaceúticas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaTipoPresentacion', @level2type=N'COLUMN',@level2name=N'IdForma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de tipos de presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaTipoPresentacion', @level2type=N'COLUMN',@level2name=N'IdTipoPresentacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaTipoPresentacion', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaTipoPresentacion', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la relación entre las formas farmaceúticas y los tipos de presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaTipoPresentacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de forma ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaTipoPresentacion', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_FormaTipoPresentacion_GP_FormaFarmaceutica'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de tipo presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_FormaTipoPresentacion', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_FormaTipoPresentacion_GP_TipoPresentacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_LineaPromocion', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la línea de promoción' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_LineaPromocion', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de la línea de promoción' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_LineaPromocion', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Creación de la línea de promoción' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_LineaPromocion', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado de la línea de Promoción A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_LineaPromocion', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla para el catálogo de línea de promoción' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GP_LineaPromocion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la marca para el producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción para la marca del producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL para el documento del producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'URLRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número de registro de la marca del producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'NoRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Folio del registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'Folio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Libro de la marca' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'Libro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'IdOrigen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de fase de la marca' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'IdFase'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fecha de creación de la marca' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'comentarios para la marca del procto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'Comentarios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'estado de la marca del producto A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que cotiene la información de las marcas de productos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla fase marca' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_Marca_GP_FaseMarca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de país' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Marca', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_Marca_Pais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MarcaProducto', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de Producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MarcaProducto', @level2type=N'COLUMN',@level2name=N'IdProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de Marca' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MarcaProducto', @level2type=N'COLUMN',@level2name=N'IdMarca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación de la tupla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MarcaProducto', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado de la tupla A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MarcaProducto', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla pibote para unir la marca con el producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MarcaProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de marca' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MarcaProducto', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_MarcaProducto_GP_Marca'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MarcaProducto', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_MarcaProducto_GP_Producto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Molecula', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la molécula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Molecula', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de la molécula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Molecula', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Molecula', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Molecula', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene el nombre de las moléculas de la empresa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Molecula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MoleculaPrincipio', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla Molecula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MoleculaPrincipio', @level2type=N'COLUMN',@level2name=N'IdMolecula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla Principio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MoleculaPrincipio', @level2type=N'COLUMN',@level2name=N'IdPrincipio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MoleculaPrincipio', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MoleculaPrincipio', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que une a las moleculas con los principios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MoleculaPrincipio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de molecula' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MoleculaPrincipio', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_MoleculaPrincipio_GP_Molecula'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de principio activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_MoleculaPrincipio', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_MoleculaPrincipio_GP_PrincipioActivo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre descriptivo de la presentacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción a detalle de la presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad contenida en la presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto', @level2type=N'COLUMN',@level2name=N'Cantidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de tipo de presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto', @level2type=N'COLUMN',@level2name=N'IdTipoPresentacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de DistProdRegulatorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto', @level2type=N'COLUMN',@level2name=N'IdDistProdReg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Vida útil del producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto', @level2type=N'COLUMN',@level2name=N'VidaUtil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la información de la presentación del producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de DistProdReg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_PresentacionProducto_GP_DistProdRegulatorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de tipo de presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PresentacionProducto', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_PresentacionProducto_GP_TipoPresentacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PrincipioActivo', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del principio activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PrincipioActivo', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del principio Activo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PrincipioActivo', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PrincipioActivo', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PrincipioActivo', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la información de los principios activos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_PrincipioActivo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Producto', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del producto base' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Producto', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del producto base' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Producto', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación de producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Producto', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fecha de modificación del producto base' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Producto', @level2type=N'COLUMN',@level2name=N'FechaMod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fecha de desarrollo del producto base' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Producto', @level2type=N'COLUMN',@level2name=N'FechaDesarrollo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'comentarios del producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Producto', @level2type=N'COLUMN',@level2name=N'Comentarios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del produco A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Producto', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la información del producto base' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_Producto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ProductoSAP', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador la tabla DistribucionProductoRegulatorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ProductoSAP', @level2type=N'COLUMN',@level2name=N'IdDistProdReg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación de codigo sap' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ProductoSAP', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del código SAP A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ProductoSAP', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'tabla que contiene los códigos sap' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ProductoSAP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foranea a la tabla de distprodreg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_ProductoSAP', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_ProductoSAP_GP_DistProdRegulatorio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_RegistroSanitario', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código del registro sanitario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_RegistroSanitario', @level2type=N'COLUMN',@level2name=N'CodigoRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla de Producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_RegistroSanitario', @level2type=N'COLUMN',@level2name=N'IdProducto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de vencimiento del registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_RegistroSanitario', @level2type=N'COLUMN',@level2name=N'FechaVencimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estimado de la obtención del registro sanitario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_RegistroSanitario', @level2type=N'COLUMN',@level2name=N'EstimadoObtencion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'dirección del archivo pdf que respalde el registro sanitario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_RegistroSanitario', @level2type=N'COLUMN',@level2name=N'URLRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del registro sanitario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_RegistroSanitario', @level2type=N'COLUMN',@level2name=N'EstadoRegistro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación del registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_RegistroSanitario', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del registro en el sistema A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_RegistroSanitario', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene la información del registro sanitario del producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_RegistroSanitario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de producto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_RegistroSanitario', @level2type=N'CONSTRAINT',@level2name=N'FK_GP_RegistroSanitario_GP_Producto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoArte', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del tipo de arte' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoArte', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del tipo de Arte' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoArte', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoArte', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoArte', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene los tipos de artes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoArte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoPresentacion', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del tipo de presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoPresentacion', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del tipo de presentación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoPresentacion', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoPresentacion', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoPresentacion', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que tiene el listado de tipos de presentación disponibles' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_TipoPresentacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_UnidadMedida', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la unidad de medida' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_UnidadMedida', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de la unidad de medida' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_UnidadMedida', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_UnidadMedida', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_UnidadMedida', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla que contiene las unidades de medida' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PX_GP_UnidadMedida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Menu', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla módulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Menu', @level2type=N'COLUMN',@level2name=N'IdModulo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL hacia el menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Menu', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del menú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Menu', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del menú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Menu', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Icono del  menú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Menu', @level2type=N'COLUMN',@level2name=N'Icono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la creación del menú' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Menu', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del menu A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Menu', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foránea a la tabla modulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Menu', @level2type=N'CONSTRAINT',@level2name=N'FK_Menu_Modulo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo', @level2type=N'COLUMN',@level2name=N'IdSistema'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del módulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del módulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Icono del módulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo', @level2type=N'COLUMN',@level2name=N'Icono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Imagen del módulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo', @level2type=N'COLUMN',@level2name=N'Imagen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de la creación del módulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del módulo A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Modulo', @level2type=N'CONSTRAINT',@level2name=N'FK_Modulo_Sistema'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'nombre del pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'código del pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'Codigo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fecha de creación del pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'estado del país A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Catálogo de Paises' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del perfil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de modulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'IdModulo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación del perfil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del perfil A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de modulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil', @level2type=N'CONSTRAINT',@level2name=N'FK_Perfiles_Modulo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil_Usuario', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil_Usuario', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla perfil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil_Usuario', @level2type=N'COLUMN',@level2name=N'IdPerfil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil_Usuario', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del perfil A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil_Usuario', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de perfil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil_Usuario', @level2type=N'CONSTRAINT',@level2name=N'FK_Perfil_Usuario_Perfil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foranea a la tabla de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Perfil_Usuario', @level2type=N'CONSTRAINT',@level2name=N'FK_Perfil_Usuario_Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador a la tabla de entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona', @level2type=N'COLUMN',@level2name=N'IdEntidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona', @level2type=N'COLUMN',@level2name=N'Nombres'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Apellidos de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona', @level2type=N'COLUMN',@level2name=N'Apellidos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Género M=Masculino, F=Femenino,N=No definido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona', @level2type=N'COLUMN',@level2name=N'Genero'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación de la persona dentro del sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado de la persona dentro del sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de entidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona', @level2type=N'CONSTRAINT',@level2name=N'FK_Persona_Entidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Contacto', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Contacto', @level2type=N'COLUMN',@level2name=N'IdPersona'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Contacto', @level2type=N'COLUMN',@level2name=N'IdPais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dirección de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Contacto', @level2type=N'COLUMN',@level2name=N'Direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'correo electrónico de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Contacto', @level2type=N'COLUMN',@level2name=N'Correo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Teléfono de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Contacto', @level2type=N'COLUMN',@level2name=N'Telefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación del campo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Contacto', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del campo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Contacto', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de pais' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Contacto', @level2type=N'CONSTRAINT',@level2name=N'FK_Persona_Contacto_Pais'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Contacto', @level2type=N'CONSTRAINT',@level2name=N'FK_Persona_Contacto_Persona'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Identidad', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código único de identidad de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Identidad', @level2type=N'COLUMN',@level2name=N'CUI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número de identificación tributaria de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Identidad', @level2type=N'COLUMN',@level2name=N'NIT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número de seguro social de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Identidad', @level2type=N'COLUMN',@level2name=N'IGSS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Número de cédula de la persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Identidad', @level2type=N'COLUMN',@level2name=N'Pasaporte'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Identidad', @level2type=N'COLUMN',@level2name=N'IdPersona'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'fecha de creación del campo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Identidad', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'estado del campo A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Identidad', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Persona_Identidad', @level2type=N'CONSTRAINT',@level2name=N'FK_Persona_Identidad_Persona'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'COLUMN',@level2name=N'IdUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'COLUMN',@level2name=N'IdMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de sub menus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'COLUMN',@level2name=N'IdSubMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación del rol' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de modificación del rol' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'COLUMN',@level2name=N'FechaMod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de baja del rol de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'COLUMN',@level2name=N'FechaBaja'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observaciones sobre el rol del usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'COLUMN',@level2name=N'Observaciones'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del rol de usuario A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de menus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'CONSTRAINT',@level2name=N'FK_Roles_Usuario_Menu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de submenus' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'CONSTRAINT',@level2name=N'FK_Roles_Usuario_SubMenus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles_Usuario', @level2type=N'CONSTRAINT',@level2name=N'FK_Roles_Usuario_Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sistema', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sistema', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del sitema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sistema', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Icono del sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sistema', @level2type=N'COLUMN',@level2name=N'Icono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Imagen del sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sistema', @level2type=N'COLUMN',@level2name=N'Imagen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación del sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sistema', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado de la tabla A=Activo I=Inactivo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sistema', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sub_Menu', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la tabla menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sub_Menu', @level2type=N'COLUMN',@level2name=N'IdMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'URL hacia el submenu del sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sub_Menu', @level2type=N'COLUMN',@level2name=N'URL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del sub sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sub_Menu', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del submenu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sub_Menu', @level2type=N'COLUMN',@level2name=N'Descripcion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Icono del sub menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sub_Menu', @level2type=N'COLUMN',@level2name=N'Icono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación del sub menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sub_Menu', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del sub menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sub_Menu', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foránea a la tabla Menu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sub_Menu', @level2type=N'CONSTRAINT',@level2name=N'FK_Sub_Menu_Menu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tipo_Usuario', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del tipo de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tipo_Usuario', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación del tipo de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tipo_Usuario', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del tipo de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tipo_Usuario', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'llave primaria de la tabla' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'IdPersona'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del usuario de acceso al sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clave de acceso al sistema encriptada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Clave'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creación del usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'FechaCreacion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador a la tabla de tipo de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'IdTipoUsuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de baja del usuario en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'FechaBaja'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del usuario en el sistema' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'COLUMN',@level2name=N'Estado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de persona' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'CONSTRAINT',@level2name=N'FK_Usuario_Persona'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'foránea a la tabla de tipo de usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Usuario', @level2type=N'CONSTRAINT',@level2name=N'FK_Usuario_Tipo_Usuario'
GO
