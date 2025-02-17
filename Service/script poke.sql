USE [master]
GO
/****** Object:  Database [POKEDEX_DB]    Script Date: 26/03/2023 11:04:30 AM ******/
CREATE DATABASE [POKEDEX_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'POKEDEX_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\POKEDEX_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'POKEDEX_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\POKEDEX_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [POKEDEX_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [POKEDEX_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [POKEDEX_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [POKEDEX_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [POKEDEX_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [POKEDEX_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [POKEDEX_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [POKEDEX_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [POKEDEX_DB] SET  MULTI_USER 
GO
ALTER DATABASE [POKEDEX_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [POKEDEX_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [POKEDEX_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [POKEDEX_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [POKEDEX_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [POKEDEX_DB] SET QUERY_STORE = OFF
GO
USE [POKEDEX_DB]
GO
/****** Object:  Table [dbo].[ELEMENTOS]    Script Date: 26/03/2023 11:04:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELEMENTOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_ELEMENTOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POKEMONS]    Script Date: 26/03/2023 11:04:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POKEMONS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Numero] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[UrlImagen] [varchar](300) NULL,
	[IdTipo] [int] NULL,
	[IdDebilidad] [int] NULL,
	[IdEvolucion] [int] NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_POKEMONS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 26/03/2023 11:04:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido] [nvarchar](50) NULL,
	[fechaNacimiento] [smalldatetime] NULL,
	[admin] [bit] NULL,
	[imagenPerfil] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ELEMENTOS] ON 

INSERT [dbo].[ELEMENTOS] ([Id], [Descripcion]) VALUES (1, N'Planta')
INSERT [dbo].[ELEMENTOS] ([Id], [Descripcion]) VALUES (2, N'Fuego')
INSERT [dbo].[ELEMENTOS] ([Id], [Descripcion]) VALUES (3, N'Agua')
SET IDENTITY_INSERT [dbo].[ELEMENTOS] OFF
GO
SET IDENTITY_INSERT [dbo].[POKEMONS] ON 

INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (2, 4, N'Charmander', N'Little Dragon
', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png', 2, 3, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (3, 11, N'Butterfly', N'Poisonous butterfly', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/012.png', 1, 2, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (9, 6, N'Charizard', N'Big fire dragon', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png', 2, 3, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (14, 130, N'Gyarados', N'Angry water dragon', N'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/130.png', 3, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (15, 25, N'Pikachu', N'Electric rat', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png', 1, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (16, 7, N'Squirtle', N'Little tortle', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png', 3, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (23, 1, N'Bulbasaur', N'Cute plant pokemon', N'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/001.png', 1, 2, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (24, 123, N'Scyther', N'Dangerous Mantis', N'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/123.png', 1, 2, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (28, 43, N'Oddish', N'If exposed to moonlight, it starts to move.', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/043.png', 1, 2, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (29, 126, N'Magmar', N'Magmar dispatches its prey with fire.', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/126.png', 2, 3, NULL, 1)
SET IDENTITY_INSERT [dbo].[POKEMONS] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (1, N'algo', N'123', N'algoa', N'saaaaaaa', CAST(N'2000-01-07T00:00:00' AS SmallDateTime), 0, N'perfil-1.jpg')
INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (4, N'borja_1089@hotmail.com', N'123456', N'Borja', N'Gesteira', CAST(N'1989-06-21T00:00:00' AS SmallDateTime), 1, N'perfil-4.jpg')
INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (69, N'cachi@gmail.com', N'123', N'b', N'b', CAST(N'2000-01-03T00:00:00' AS SmallDateTime), 0, N'perfil-69.jpg')
INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (75, N'Diana@gmail.com', N'123', N'Diana', N'Orozco Tapia', CAST(N'1990-04-15T00:00:00' AS SmallDateTime), 0, N'perfil-75.jpg')
INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (76, N'alga', N'123', N'alga', NULL, NULL, 0, NULL)
INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (77, N'alga', N'123', N'alga', NULL, NULL, 0, NULL)
INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (78, N'alga@hotmail.com', N'123', N'alga', N'st', CAST(N'2002-04-03T00:00:00' AS SmallDateTime), 0, N'perfil-78.jpg')
INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (79, N'Diana@gmail.com', N'1234', N'Diana', N'Orozco Tapia', CAST(N'1990-05-15T00:00:00' AS SmallDateTime), 0, N'perfil-79.jpg')
INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (80, N'di@gmail.com', N'12', N'diana', NULL, NULL, 0, NULL)
INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (81, N'as@gmail.com', N'12', N'ash', N'ketchun', CAST(N'2000-12-21T00:00:00' AS SmallDateTime), 0, N'perfil-81.jpg')
INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (82, N'as@gmail.com', N'123', N'Ash', N'Kchu', CAST(N'1989-06-21T00:00:00' AS SmallDateTime), 0, N'perfil-82.jpg')
INSERT [dbo].[Users] ([Id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (83, N'AshKetchum@gmail.com', N'1234', N'Ash', N'Ketchum', CAST(N'2000-01-01T00:00:00' AS SmallDateTime), 0, N'perfil-83.jpg')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[POKEMONS]  WITH CHECK ADD  CONSTRAINT [FK_POKEMONS_ELEMENTOS] FOREIGN KEY([IdTipo])
REFERENCES [dbo].[ELEMENTOS] ([Id])
GO
ALTER TABLE [dbo].[POKEMONS] CHECK CONSTRAINT [FK_POKEMONS_ELEMENTOS]
GO
ALTER TABLE [dbo].[POKEMONS]  WITH CHECK ADD  CONSTRAINT [FK_POKEMONS_ELEMENTOS1] FOREIGN KEY([IdDebilidad])
REFERENCES [dbo].[ELEMENTOS] ([Id])
GO
ALTER TABLE [dbo].[POKEMONS] CHECK CONSTRAINT [FK_POKEMONS_ELEMENTOS1]
GO
ALTER TABLE [dbo].[POKEMONS]  WITH CHECK ADD  CONSTRAINT [FK_POKEMONS_POKEMONS] FOREIGN KEY([IdEvolucion])
REFERENCES [dbo].[POKEMONS] ([Id])
GO
ALTER TABLE [dbo].[POKEMONS] CHECK CONSTRAINT [FK_POKEMONS_POKEMONS]
GO
/****** Object:  StoredProcedure [dbo].[insertarNuevo]    Script Date: 26/03/2023 11:04:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertarNuevo]
@Nombre varchar(50),
@Email varchar(50),
@Pass varchar(50)
as
insert into Users (nombre, email, pass, admin) output inserted.Id values (@Nombre, @Email, @Pass, 0)
GO
/****** Object:  StoredProcedure [dbo].[storedAltaPokemon]    Script Date: 26/03/2023 11:04:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedAltaPokemon]
@number int,
@name varchar(50),
@desc varchar(50),
@img varchar(300),
@idTipo int,
@idDebilidad int
as
insert into Pokemons values(@number, @name, @desc, @img, @idTipo, @idDebilidad, null, 1)
GO
/****** Object:  StoredProcedure [dbo].[storedListar]    Script Date: 26/03/2023 11:04:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[storedListar] as 
select numero, nombre, p.descripcion, Urlimagen, e.descripcion tipo, d. Descripcion Debilidad, P. IdTipo, P.IdDebilidad, P.Id, P.Activo  
from pokemons p, elementos e, elementos d 
where e.id = P.idtipo AND d.id = p.IdDebilidad 
GO
/****** Object:  StoredProcedure [dbo].[storedModify]    Script Date: 26/03/2023 11:04:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedModify]

@numero int,
@nombre varchar(50),
@desc varchar(50),
@img varchar(300),
@idTipo int,
@idDebilidad int,
@ID int
as
update POKEMONS set Numero = @numero, Nombre = @nombre, Descripcion = @desc, UrlImagen = @img, IdTipo = @idTipo, IdDebilidad = @idDebilidad
where Id = @ID

GO
USE [master]
GO
ALTER DATABASE [POKEDEX_DB] SET  READ_WRITE 
GO
