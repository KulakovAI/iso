USE [ученые]
GO
/****** Object:  Table [dbo].[место]    Script Date: 14.10.2022 10:52:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[место](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Venue] [nvarchar](max) NULL,
	[Date] [date] NULL,
	[Country] [nvarchar](max) NULL,
 CONSTRAINT [PK_место] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[организация]    Script Date: 14.10.2022 10:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[организация](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Organization] [nvarchar](max) NULL,
	[ConferenceTitle] [nvarchar](max) NOT NULL,
	[IdMesto] [int] NULL,
	[IdYchenie] [int] NULL,
 CONSTRAINT [PK_организация] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ученые]    Script Date: 14.10.2022 10:52:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ученые](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[AcademicDegree] [nvarchar](max) NOT NULL,
	[TopicOfTheReport] [nvarchar](max) NULL,
 CONSTRAINT [PK_ученые] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[место] ON 

INSERT [dbo].[место] ([ID], [Venue], [Date], [Country]) VALUES (1, N'Московский государственный университет, Пензенский государственный университет.', CAST(N'2022-09-08' AS Date), N'Россия')
INSERT [dbo].[место] ([ID], [Venue], [Date], [Country]) VALUES (2, N'Московский государственный университет, Пензенский государственный университет.', CAST(N'2022-10-08' AS Date), N'Россия')
INSERT [dbo].[место] ([ID], [Venue], [Date], [Country]) VALUES (3, N'Московский государственный университет, Пензенский государственный университет.', CAST(N'2022-09-22' AS Date), N'Россия')
SET IDENTITY_INSERT [dbo].[место] OFF
GO
SET IDENTITY_INSERT [dbo].[организация] ON 

INSERT [dbo].[организация] ([Id], [Organization], [ConferenceTitle], [IdMesto], [IdYchenie]) VALUES (1, N'ООО"НАУКА"', N'Российская наука в совеременном мире', NULL, NULL)
INSERT [dbo].[организация] ([Id], [Organization], [ConferenceTitle], [IdMesto], [IdYchenie]) VALUES (2, N'Актуальность РФ', N'Advances in Science and Technology', NULL, NULL)
INSERT [dbo].[организация] ([Id], [Organization], [ConferenceTitle], [IdMesto], [IdYchenie]) VALUES (3, N'Наука и Просвещение', N'Молодой ученый', NULL, NULL)
SET IDENTITY_INSERT [dbo].[организация] OFF
GO
SET IDENTITY_INSERT [dbo].[ученые] ON 

INSERT [dbo].[ученые] ([Id], [FirstName], [AcademicDegree], [TopicOfTheReport]) VALUES (1, N'Ракитин', N'Профессор', N'Вулканы')
INSERT [dbo].[ученые] ([Id], [FirstName], [AcademicDegree], [TopicOfTheReport]) VALUES (2, N'Гыбин', N'Кандидат-наук', N'Никотин')
INSERT [dbo].[ученые] ([Id], [FirstName], [AcademicDegree], [TopicOfTheReport]) VALUES (3, N'Каширин', N'Доцент', N'Маликулярная химия')
SET IDENTITY_INSERT [dbo].[ученые] OFF
GO
ALTER TABLE [dbo].[организация]  WITH CHECK ADD  CONSTRAINT [FK_организация_место] FOREIGN KEY([IdMesto])
REFERENCES [dbo].[место] ([ID])
GO
ALTER TABLE [dbo].[организация] CHECK CONSTRAINT [FK_организация_место]
GO
ALTER TABLE [dbo].[организация]  WITH CHECK ADD  CONSTRAINT [FK_организация_ученые] FOREIGN KEY([IdYchenie])
REFERENCES [dbo].[ученые] ([Id])
GO
ALTER TABLE [dbo].[организация] CHECK CONSTRAINT [FK_организация_ученые]
GO
