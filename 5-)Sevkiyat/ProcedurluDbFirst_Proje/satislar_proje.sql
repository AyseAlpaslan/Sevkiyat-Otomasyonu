USE [master]
GO
/****** Object:  Database [Satıslar]    Script Date: 11.11.2022 18:50:22 ******/
CREATE DATABASE [Satıslar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Satıslar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Satıslar.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Satıslar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Satıslar_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Satıslar] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Satıslar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Satıslar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Satıslar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Satıslar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Satıslar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Satıslar] SET ARITHABORT OFF 
GO
ALTER DATABASE [Satıslar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Satıslar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Satıslar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Satıslar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Satıslar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Satıslar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Satıslar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Satıslar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Satıslar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Satıslar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Satıslar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Satıslar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Satıslar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Satıslar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Satıslar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Satıslar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Satıslar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Satıslar] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Satıslar] SET  MULTI_USER 
GO
ALTER DATABASE [Satıslar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Satıslar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Satıslar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Satıslar] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Satıslar] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Satıslar] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Satıslar] SET QUERY_STORE = OFF
GO
USE [Satıslar]
GO
/****** Object:  Table [dbo].[Araclar]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Araclar](
	[AracNo] [int] IDENTITY(1,1) NOT NULL,
	[AracTur] [varchar](50) NULL,
	[AracKapasite] [int] NULL,
	[AracSofor] [varchar](50) NULL,
 CONSTRAINT [PK_Araclars] PRIMARY KEY CLUSTERED 
(
	[AracNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriNo] [int] IDENTITY(1,1) NOT NULL,
	[SevkiyatId] [varchar](50) NULL,
	[MusteriAdSoyad] [varchar](50) NULL,
	[Adres] [varchar](50) NULL,
	[Telefon] [varchar](50) NULL,
	[Mail] [varchar](50) NULL,
	[OdemeDurumu] [varchar](50) NULL,
	[PersonelNo] [int] NULL,
 CONSTRAINT [PK_Musterilers] PRIMARY KEY CLUSTERED 
(
	[MusteriNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[PersonelNo] [int] IDENTITY(1,1) NOT NULL,
	[PersonelAdSoyad] [varchar](50) NULL,
	[Adres] [varchar](50) NULL,
	[Telefon] [varchar](50) NULL,
	[Mail] [varchar](50) NULL,
 CONSTRAINT [PK_Personellers] PRIMARY KEY CLUSTERED 
(
	[PersonelNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sevkiyatlar]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sevkiyatlar](
	[SevkiyatNo] [int] IDENTITY(1,1) NOT NULL,
	[SevkiyatAdi] [varchar](50) NULL,
	[SevkiyatAlimNoktasi] [varchar](50) NULL,
	[SevkiyatUlasimNoktasi] [varchar](50) NULL,
	[Mesafe] [varchar](50) NULL,
	[MesafeTutar] [decimal](19, 4) NULL,
	[AracNo] [int] NULL,
	[MusteriNo] [int] NULL,
 CONSTRAINT [PK_Sevkiyatlars] PRIMARY KEY CLUSTERED 
(
	[SevkiyatNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Araclar] ON 

INSERT [dbo].[Araclar] ([AracNo], [AracTur], [AracKapasite], [AracSofor]) VALUES (1, N'oıpoı', 89, N'ıuouo')
INSERT [dbo].[Araclar] ([AracNo], [AracTur], [AracKapasite], [AracSofor]) VALUES (2, N'ıuouı', 89, N'ıoıu')
INSERT [dbo].[Araclar] ([AracNo], [AracTur], [AracKapasite], [AracSofor]) VALUES (3, N'fyfgyjfty', 5646, N'uy89uy9')
SET IDENTITY_INSERT [dbo].[Araclar] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteriler] ON 

INSERT [dbo].[Musteriler] ([MusteriNo], [SevkiyatId], [MusteriAdSoyad], [Adres], [Telefon], [Mail], [OdemeDurumu], [PersonelNo]) VALUES (1, N'', N'lkjl', N'jkl', N'jkl', N'jkl', N'jkl', 1)
INSERT [dbo].[Musteriler] ([MusteriNo], [SevkiyatId], [MusteriAdSoyad], [Adres], [Telefon], [Mail], [OdemeDurumu], [PersonelNo]) VALUES (2, N'', N'lkjl', N'90980980', N'jkl', N'jkl', N'jkl', 1)
INSERT [dbo].[Musteriler] ([MusteriNo], [SevkiyatId], [MusteriAdSoyad], [Adres], [Telefon], [Mail], [OdemeDurumu], [PersonelNo]) VALUES (3, N'', N'lkjl', N'jkl', N'jkl', N'jkl', N'jkl', 1)
INSERT [dbo].[Musteriler] ([MusteriNo], [SevkiyatId], [MusteriAdSoyad], [Adres], [Telefon], [Mail], [OdemeDurumu], [PersonelNo]) VALUES (4, N'djnknjı', N'jıjıjıh', N't7fct7ygu', N'51645', N'fdfd', N'fsfs', 1)
SET IDENTITY_INSERT [dbo].[Musteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Personeller] ON 

INSERT [dbo].[Personeller] ([PersonelNo], [PersonelAdSoyad], [Adres], [Telefon], [Mail]) VALUES (1, N'ıo', N'uıoıuo', N'uıouıo', N'uıouı')
INSERT [dbo].[Personeller] ([PersonelNo], [PersonelAdSoyad], [Adres], [Telefon], [Mail]) VALUES (2, N'fatma', N'skkds', N'25520', N'dsds')
SET IDENTITY_INSERT [dbo].[Personeller] OFF
GO
SET IDENTITY_INSERT [dbo].[Sevkiyatlar] ON 

INSERT [dbo].[Sevkiyatlar] ([SevkiyatNo], [SevkiyatAdi], [SevkiyatAlimNoktasi], [SevkiyatUlasimNoktasi], [Mesafe], [MesafeTutar], [AracNo], [MusteriNo]) VALUES (1, N'ıopı', N'ıopoı', N'metrobüs', N'jlj', CAST(89.0000 AS Decimal(19, 4)), 1, 1)
INSERT [dbo].[Sevkiyatlar] ([SevkiyatNo], [SevkiyatAdi], [SevkiyatAlimNoktasi], [SevkiyatUlasimNoktasi], [Mesafe], [MesafeTutar], [AracNo], [MusteriNo]) VALUES (2, N'aaaaa', N'ıopoı', N'metrobüs', N'jlj', CAST(89.0000 AS Decimal(19, 4)), 1, 1)
INSERT [dbo].[Sevkiyatlar] ([SevkiyatNo], [SevkiyatAdi], [SevkiyatAlimNoktasi], [SevkiyatUlasimNoktasi], [Mesafe], [MesafeTutar], [AracNo], [MusteriNo]) VALUES (3, N'ıopı', N'uytuytuy', N'metrobüs', N'jlj', CAST(89.0000 AS Decimal(19, 4)), 1, 1)
INSERT [dbo].[Sevkiyatlar] ([SevkiyatNo], [SevkiyatAdi], [SevkiyatAlimNoktasi], [SevkiyatUlasimNoktasi], [Mesafe], [MesafeTutar], [AracNo], [MusteriNo]) VALUES (4, N'bbbcc', N'uytuytuy', N'metrobüs', N'jlj', CAST(89.0000 AS Decimal(19, 4)), 1, 1)
SET IDENTITY_INSERT [dbo].[Sevkiyatlar] OFF
GO
/****** Object:  Index [IX_FK_Musteriler_Personeller]    Script Date: 11.11.2022 18:50:23 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Musteriler_Personeller] ON [dbo].[Musteriler]
(
	[PersonelNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Sevkiyatlar_Araclar]    Script Date: 11.11.2022 18:50:23 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Sevkiyatlar_Araclar] ON [dbo].[Sevkiyatlar]
(
	[AracNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Sevkiyatlar_Musteriler]    Script Date: 11.11.2022 18:50:23 ******/
CREATE NONCLUSTERED INDEX [IX_FK_Sevkiyatlar_Musteriler] ON [dbo].[Sevkiyatlar]
(
	[MusteriNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [FK_Musteriler_Personeller] FOREIGN KEY([PersonelNo])
REFERENCES [dbo].[Personeller] ([PersonelNo])
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [FK_Musteriler_Personeller]
GO
ALTER TABLE [dbo].[Sevkiyatlar]  WITH CHECK ADD  CONSTRAINT [FK_Sevkiyatlar_Araclar] FOREIGN KEY([AracNo])
REFERENCES [dbo].[Araclar] ([AracNo])
GO
ALTER TABLE [dbo].[Sevkiyatlar] CHECK CONSTRAINT [FK_Sevkiyatlar_Araclar]
GO
ALTER TABLE [dbo].[Sevkiyatlar]  WITH CHECK ADD  CONSTRAINT [FK_Sevkiyatlar_Musteriler] FOREIGN KEY([MusteriNo])
REFERENCES [dbo].[Musteriler] ([MusteriNo])
GO
ALTER TABLE [dbo].[Sevkiyatlar] CHECK CONSTRAINT [FK_Sevkiyatlar_Musteriler]
GO
/****** Object:  StoredProcedure [dbo].[AEkle]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AEkle]
@Aractur varchar(50),
@AracKapasite int,
@AracSofor varchar(50)
as begin
insert into Araclar(AracTur,AracKapasite,AracSofor)values(@Aractur,@AracKapasite,@AracSofor)
end
GO
/****** Object:  StoredProcedure [dbo].[AListele]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AListele]
as begin
select * from Araclar
end
GO
/****** Object:  StoredProcedure [dbo].[ASil]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ASil]
@AracNo int
as begin
delete from Araclar where AracNo=@AracNo
end
GO
/****** Object:  StoredProcedure [dbo].[AYenile]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[AYenile]
@AracNo int,
@Aractur varchar(50),
@AracKapasite int,
@AracSofor varchar(50)
as begin 
update Araclar set AracTur=@Aractur,AracKapasite=@AracKapasite,AracSofor=@AracSofor where AracNo=@AracNo
end
GO
/****** Object:  StoredProcedure [dbo].[MEkle]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MEkle]
@SevkiyatId varchar(50),
@MusteriAdSoyad varchar(50),
@Adres varchar(50),
@Telefon varchar(50),
@Mail varchar(50),
@OdemeDurumu varchar(50),
@PersonelNo int
as begin
insert into Musteriler(SevkiyatId,MusteriAdSoyad,Adres,Telefon,Mail,OdemeDurumu,PersonelNo)values(@SevkiyatId,@MusteriAdSoyad,@Adres,@Telefon,@Mail,@OdemeDurumu,@PersonelNo)
end
GO
/****** Object:  StoredProcedure [dbo].[MListele]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MListele]
as begin
select * from Musteriler
end
GO
/****** Object:  StoredProcedure [dbo].[MSil]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MSil]
@MusteriNo int
as begin
delete from Musteriler where MusteriNo=@MusteriNo
end
GO
/****** Object:  StoredProcedure [dbo].[MYenile]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MYenile]
@MusteriNo int,
@SevkiyatId varchar(50),
@MusteriAdSoyad varchar(50),
@Adres varchar(50),
@Telefon varchar(50),
@Mail varchar(50),
@OdemeDurumu varchar(50),
@PersonelNo int
as begin 
update Musteriler set SevkiyatId=@SevkiyatId,MusteriAdSoyad=@MusteriAdSoyad,Adres=@Adres,Telefon=@Telefon,Mail=@Mail,OdemeDurumu=@OdemeDurumu,PersonelNo=@PersonelNo where MusteriNo=@MusteriNo
end
GO
/****** Object:  StoredProcedure [dbo].[PEkle]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PEkle]
@PersonelAdSoyad varchar(50),
@Adres varchar(50),
@Telefon varchar(50),
@Mail varchar(50)
as begin
insert into Personeller(PersonelAdSoyad,Adres,Telefon,Mail)values(@PersonelAdSoyad,@Adres,@Telefon,@Mail)
end
GO
/****** Object:  StoredProcedure [dbo].[PListele]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PListele]
as begin
select * from Personeller
end
GO
/****** Object:  StoredProcedure [dbo].[PSil]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PSil]
@PersonelNo int
as begin
delete from Personeller where PersonelNo=@PersonelNo
end
GO
/****** Object:  StoredProcedure [dbo].[PYenile]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PYenile]
@PersonelNo int,
@PersonelAdSoyad varchar(50),
@Adres varchar(50),
@Telefon varchar(50),
@Mail varchar(50)
as begin 
update Personeller set PersonelAdSoyad=@PersonelAdSoyad,Adres=@Adres,Telefon=@Telefon,Mail=@Mail where PersonelNo=@PersonelNo 
end
GO
/****** Object:  StoredProcedure [dbo].[SEkle]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SEkle]
@SevkiyatAdi varchar(50),
@SevkiyatAlimNoktasi varchar(50),
@SevkiyatUlasimNoktasi varchar(50),
@Mesafe varchar(50),
@MesafeTutar money,
@AracNo int,
@MusteriNo int
as begin
insert into Sevkiyatlar(SevkiyatAdi,SevkiyatAlimNoktasi,SevkiyatUlasimNoktasi,Mesafe,MesafeTutar,AracNo,MusteriNo)
values(@SevkiyatAdi,@SevkiyatAlimNoktasi,@SevkiyatUlasimNoktasi,@Mesafe,@MesafeTutar,@AracNo,@MusteriNo)
end
GO
/****** Object:  StoredProcedure [dbo].[SListele]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SListele]
as begin
select * from Sevkiyatlar
end
GO
/****** Object:  StoredProcedure [dbo].[SSil]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SSil]
@SevkiyatNo int
as begin
delete from Sevkiyatlar where SevkiyatNo=@SevkiyatNo
end 
GO
/****** Object:  StoredProcedure [dbo].[SYenile]    Script Date: 11.11.2022 18:50:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SYenile]
@SevkiyatNo int,
@SevkiyatAdi varchar(50),
@SevkiyatAlimNoktasi varchar(50),
@SevkiyatUlasimNoktasi varchar(50),
@Mesafe varchar(50),
@MesafeTutar money,
@AracNo int,
@MusteriNo int
as begin 
update Sevkiyatlar set SevkiyatAdi=@SevkiyatAdi,SevkiyatAlimNoktasi=@SevkiyatAlimNoktasi,SevkiyatUlasimNoktasi=@SevkiyatUlasimNoktasi,
Mesafe=@Mesafe,MesafeTutar=@MesafeTutar,AracNo=@AracNo,MusteriNo=@MusteriNo where SevkiyatNo=@SevkiyatNo
end
GO
USE [master]
GO
ALTER DATABASE [Satıslar] SET  READ_WRITE 
GO
