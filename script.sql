USE [mydatabase]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 1/29/2022 8:33:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KULLANICI] [varchar](50) NULL,
	[SIFRE] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOKREZ]    Script Date: 1/29/2022 8:33:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKREZ](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BOOK] [varchar](50) NULL,
	[TARIH] [varchar](50) NULL,
	[REZNO] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOKS]    Script Date: 1/29/2022 8:33:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKS](
	[ID] [int] NOT NULL,
	[BOOK] [varchar](50) NULL,
	[AUTHOR] [varchar](50) NULL,
	[PAGE] [int] NULL,
	[ADET] [int] NULL,
 CONSTRAINT [PK_BOOKS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBLLOGINS]    Script Date: 1/29/2022 8:33:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLLOGINS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KULLANICI] [varchar](50) NOT NULL,
	[SIFRE] [varchar](50) NOT NULL,
	[AD] [varchar](50) NOT NULL,
	[SOYAD] [varchar](50) NOT NULL,
	[MAIL] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TBLLOGINS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([ID], [KULLANICI], [SIFRE]) VALUES (1, N'admin', N'1234')
INSERT [dbo].[ADMIN] ([ID], [KULLANICI], [SIFRE]) VALUES (2, N'rossvenadmin', N'adminsifre')
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
GO
SET IDENTITY_INSERT [dbo].[BOOKREZ] ON 

INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (1, N'Tehlikeli Oyunlar', N'25/01/2022', 101)
INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (2, N'Tehlikeli Oyunlar', N'28/01/2022', 102)
INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (3, N'Simyaci', N'30/01/2022', 501)
INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (4, N'1984', N'26/01/2022', 601)
INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (5, N'1984', N'22/01/2022', 602)
INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (6, N'Fareler ve Insanlar', N'1/25/2022', 401)
INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (7, N'Simyaci', N'1/24/2022', 501)
INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (8, N'Simyaci', N'1/24/2022', 501)
INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (11, N'Santranç', N'1/18/2022', 301)
INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (12, N'Fareler ve Insanlar', N'2/4/2022', 402)
INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (9, N'Tutunamayanlar', N'2/1/2022', 201)
INSERT [dbo].[BOOKREZ] ([ID], [BOOK], [TARIH], [REZNO]) VALUES (10, N'Tutunamayanlar', N'1/25/2022', 202)
SET IDENTITY_INSERT [dbo].[BOOKREZ] OFF
GO
INSERT [dbo].[BOOKS] ([ID], [BOOK], [AUTHOR], [PAGE], [ADET]) VALUES (1, N'Tehlikeli Oyunlar', N'Oguz Atay', 400, 8)
INSERT [dbo].[BOOKS] ([ID], [BOOK], [AUTHOR], [PAGE], [ADET]) VALUES (2, N'Tutunamayanlar', N'Oguz Atay', 450, 8)
INSERT [dbo].[BOOKS] ([ID], [BOOK], [AUTHOR], [PAGE], [ADET]) VALUES (3, N'Santranç', N'Stefan Zweig', 250, 9)
INSERT [dbo].[BOOKS] ([ID], [BOOK], [AUTHOR], [PAGE], [ADET]) VALUES (4, N'Fareler ve Insanlar', N'John Steinbeck', 300, 8)
INSERT [dbo].[BOOKS] ([ID], [BOOK], [AUTHOR], [PAGE], [ADET]) VALUES (5, N'Simyaci', N'Paulo Coelho
', 200, 7)
INSERT [dbo].[BOOKS] ([ID], [BOOK], [AUTHOR], [PAGE], [ADET]) VALUES (6, N'1984', N'George Orwell
', 350, 8)
GO
SET IDENTITY_INSERT [dbo].[TBLLOGINS] ON 

INSERT [dbo].[TBLLOGINS] ([ID], [KULLANICI], [SIFRE], [AD], [SOYAD], [MAIL]) VALUES (2, N'rossven', N'123456', N'Atakan', N'Divan', N'atakandivan@gmail.com')
INSERT [dbo].[TBLLOGINS] ([ID], [KULLANICI], [SIFRE], [AD], [SOYAD], [MAIL]) VALUES (3, N'mfk', N'11223344', N'Musa', N'Keskin', N'mfk@gmail.com')
INSERT [dbo].[TBLLOGINS] ([ID], [KULLANICI], [SIFRE], [AD], [SOYAD], [MAIL]) VALUES (6, N'leithian', N'223344', N'Melih', N'Divan', N'melihdvn@gmail.com')
SET IDENTITY_INSERT [dbo].[TBLLOGINS] OFF
GO
