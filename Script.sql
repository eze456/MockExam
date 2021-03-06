USE [dbDogs]
GO
/****** Object:  Table [dbo].[tblType]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblType](
	[fldTypeID] [int] IDENTITY(1,1) NOT NULL,
	[fldTypeNavn] [varchar](50) NULL,
	[fldKat_fk] [int] NULL,
 CONSTRAINT [PK_tblType] PRIMARY KEY CLUSTERED 
(
	[fldTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblType] ON
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (1, N'All-round træning', 3)
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (2, N'Hvalpemotivation', 3)
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (3, N'Vildtspor-kursus', 3)
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (4, N'Trimmedag', 1)
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (5, N'Sommerfest', 1)
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (6, N'Oktoberskue', 1)
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (7, N'Forårsfest', 1)
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (8, N'Gåtur', 1)
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (9, N'Apporteringsprøve', 2)
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (10, N'Vildtsporprøve', 2)
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (11, N'Markprøve', 2)
INSERT [dbo].[tblType] ([fldTypeID], [fldTypeNavn], [fldKat_fk]) VALUES (12, N'Schweissprøve', 2)
SET IDENTITY_INSERT [dbo].[tblType] OFF
/****** Object:  Table [dbo].[tblRoles]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRoles](
	[fldRoleID] [int] IDENTITY(1,1) NOT NULL,
	[fldRoleNavn] [varchar](50) NULL,
 CONSTRAINT [PK_tblRoles] PRIMARY KEY CLUSTERED 
(
	[fldRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblRoles] ON
INSERT [dbo].[tblRoles] ([fldRoleID], [fldRoleNavn]) VALUES (1, N'Admin')
INSERT [dbo].[tblRoles] ([fldRoleID], [fldRoleNavn]) VALUES (2, N'Træner')
INSERT [dbo].[tblRoles] ([fldRoleID], [fldRoleNavn]) VALUES (3, N'Instruktør')
INSERT [dbo].[tblRoles] ([fldRoleID], [fldRoleNavn]) VALUES (4, N'Arrangør')
INSERT [dbo].[tblRoles] ([fldRoleID], [fldRoleNavn]) VALUES (5, N'Dommer')
INSERT [dbo].[tblRoles] ([fldRoleID], [fldRoleNavn]) VALUES (6, N'Sweissinstruktør')
INSERT [dbo].[tblRoles] ([fldRoleID], [fldRoleNavn]) VALUES (7, N'Medlem')
SET IDENTITY_INSERT [dbo].[tblRoles] OFF
/****** Object:  Table [dbo].[tblOm]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOm](
	[fldOmID] [int] IDENTITY(1,1) NOT NULL,
	[fldOmTitle] [varchar](50) NULL,
	[fldOmSubTitle] [varchar](50) NULL,
	[fldOmText] [varchar](max) NULL,
 CONSTRAINT [PK_tblOm] PRIMARY KEY CLUSTERED 
(
	[fldOmID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblOm] ON
INSERT [dbo].[tblOm] ([fldOmID], [fldOmTitle], [fldOmSubTitle], [fldOmText]) VALUES (1, N'Om Fyns Cocker klub', N'Her mødes fynske cockerspaniels', N'Hvis du bor på Fyn, har cockerspaniels og elsker at deltage i aktiviteter sammen med andre hunde og hundeejere, så skal du selvfølgelig være medlem af FCK. Der er også her, du kan holde dig orienteret om de sidste nyheder, du bør kende som hundeejer. Her ser du et lille udpluk af de kommende aktiviteter: Find alle vores tilbud om træning, prøver og hyggeaktiviteter fra menuen overfor. Der kan du også tilmelde dig.')
SET IDENTITY_INSERT [dbo].[tblOm] OFF
/****** Object:  Table [dbo].[tblNyhed]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNyhed](
	[fldNyhedID] [int] IDENTITY(1,1) NOT NULL,
	[fldNyhedTitle] [varchar](200) NULL,
	[fldNyhed] [varchar](max) NULL,
	[fldDato] [date] NULL,
	[fldOprettet_FK] [int] NULL,
 CONSTRAINT [PK_tblNyhed] PRIMARY KEY CLUSTERED 
(
	[fldNyhedID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblNyhed] ON
INSERT [dbo].[tblNyhed] ([fldNyhedID], [fldNyhedTitle], [fldNyhed], [fldDato], [fldOprettet_FK]) VALUES (1, N'Hunde kan ikke lide mennesker, der ikke kan lide deres ejere', N'Et nyt studie tyder på, at hunde måske forstår mere af interaktionen mellem mennesker end man hidtil har troet. Forskerne bag det nyt studie, som er publiceret i tidsskriftet Journal of Animal Behavior, siger, at deres undersøgelser viser, at hunde forsøger at undgå mennesker, som på den ene eller anden måde afviser dens ejer.Læs mere på videnskab.dk', CAST(0x7A3C0B00 AS Date), 1)
INSERT [dbo].[tblNyhed] ([fldNyhedID], [fldNyhedTitle], [fldNyhed], [fldDato], [fldOprettet_FK]) VALUES (2, N'Hanhunderegister', N'Det er blevet foreslået at lave et hanhunderegister. Skal det laves her på siden?', CAST(0x713C0B00 AS Date), 1)
INSERT [dbo].[tblNyhed] ([fldNyhedID], [fldNyhedTitle], [fldNyhed], [fldDato], [fldOprettet_FK]) VALUES (3, N'Mange medlemmer', N'Hurra, nu er vi mere end halvtreds medlemmer i FCK, og vi har mere end 70 hunde tilsammen. ', CAST(0x8F3C0B00 AS Date), 1)
INSERT [dbo].[tblNyhed] ([fldNyhedID], [fldNyhedTitle], [fldNyhed], [fldDato], [fldOprettet_FK]) VALUES (8, N'Lempede regler', N'Nu kan man deltage et ubegrænset antal gange (imod max 2 gange tidligere) i markprøven. Det er desuden også blevet tilladt at løbske tæver og neutraliserede eller kryptoide hanhunde kan deltage.', CAST(0x753C0B00 AS Date), 1)
INSERT [dbo].[tblNyhed] ([fldNyhedID], [fldNyhedTitle], [fldNyhed], [fldDato], [fldOprettet_FK]) VALUES (9, N'Hale- eller ørekuperede hunde', N'Ifølge den danske lovgivning må halekuperede hunde ikke udstilles, heller ikke hvis halen er kuperet af helbredsmæssige grunde. Ørekuperede hunde, der er født efter 30. juni 2009, må heller ikke deltage i udstillinger.', CAST(0x713C0B00 AS Date), 1)
INSERT [dbo].[tblNyhed] ([fldNyhedID], [fldNyhedTitle], [fldNyhed], [fldDato], [fldOprettet_FK]) VALUES (10, N'Ny procedyre for registreringsattester', N'Siden november 2015 har Dansk Hunderegister udsendt registreringsattester på hvalpe så snart de fik besked fra DKK om at et kuld hvalpe var registreret, men fremover vender de tilbage til den tidligere procedure, hvor registreringsattesterne fra Dansk Hunderegister først udskrives, når hvalpene er 13 uger gamle.', CAST(0x603C0B00 AS Date), 1)
INSERT [dbo].[tblNyhed] ([fldNyhedID], [fldNyhedTitle], [fldNyhed], [fldDato], [fldOprettet_FK]) VALUES (11, N'Vigtigt at vide om om sundhed og avl', N'Der har desværre vist sig flere tilfælde af katarakt, og der har været nye tilfælde af avlsforbud pga. distichiasis hos cockerspaniels.', CAST(0x3A3C0B00 AS Date), 1)
INSERT [dbo].[tblNyhed] ([fldNyhedID], [fldNyhedTitle], [fldNyhed], [fldDato], [fldOprettet_FK]) VALUES (12, N'Hvalpe', N'Du kan altid henvende dig til FCK, hvis du er på udkik efter en hvalp. Lige nu er der 28 skønne cockerspanielhvalpe hos 4 opdrættere på vej til at komme ud til nye familier. Måske er der også en til dig?', CAST(0x6E3C0B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[tblNyhed] OFF
/****** Object:  Table [dbo].[tblLevels]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLevels](
	[fldLevelID] [int] IDENTITY(1,1) NOT NULL,
	[fldLevelNavn] [varchar](50) NULL,
 CONSTRAINT [PK_tblLevels] PRIMARY KEY CLUSTERED 
(
	[fldLevelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblLevels] ON
INSERT [dbo].[tblLevels] ([fldLevelID], [fldLevelNavn]) VALUES (1, N'Admin')
INSERT [dbo].[tblLevels] ([fldLevelID], [fldLevelNavn]) VALUES (2, N'Instruktør')
INSERT [dbo].[tblLevels] ([fldLevelID], [fldLevelNavn]) VALUES (3, N'Bruger')
SET IDENTITY_INSERT [dbo].[tblLevels] OFF
/****** Object:  Table [dbo].[tblKontakt]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKontakt](
	[fldKontaktID] [int] IDENTITY(1,1) NOT NULL,
	[fldFirmaNavn] [varchar](50) NULL,
	[fldEmail] [varchar](50) NULL,
	[fldTelfon] [int] NULL,
	[fldFormand_FK] [int] NULL,
 CONSTRAINT [PK_tblKontakt] PRIMARY KEY CLUSTERED 
(
	[fldKontaktID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblKontakt] ON
INSERT [dbo].[tblKontakt] ([fldKontaktID], [fldFirmaNavn], [fldEmail], [fldTelfon], [fldFormand_FK]) VALUES (1, N'Fyns Cocker Klub', N'fck@fck.dk', 12345678, 1)
SET IDENTITY_INSERT [dbo].[tblKontakt] OFF
/****** Object:  Table [dbo].[tblKoen]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKoen](
	[fldKoenID] [int] IDENTITY(1,1) NOT NULL,
	[fldSex] [varchar](50) NULL,
 CONSTRAINT [PK_tblKoen] PRIMARY KEY CLUSTERED 
(
	[fldKoenID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblKoen] ON
INSERT [dbo].[tblKoen] ([fldKoenID], [fldSex]) VALUES (1, N'Han')
INSERT [dbo].[tblKoen] ([fldKoenID], [fldSex]) VALUES (2, N'Hun')
SET IDENTITY_INSERT [dbo].[tblKoen] OFF
/****** Object:  Table [dbo].[tblKategori]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKategori](
	[fldKatID] [int] IDENTITY(1,1) NOT NULL,
	[fldKatNavn] [varchar](50) NULL,
 CONSTRAINT [PK_tblKategori] PRIMARY KEY CLUSTERED 
(
	[fldKatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblKategori] ON
INSERT [dbo].[tblKategori] ([fldKatID], [fldKatNavn]) VALUES (1, N'Aktiviteter')
INSERT [dbo].[tblKategori] ([fldKatID], [fldKatNavn]) VALUES (2, N'Prøver')
INSERT [dbo].[tblKategori] ([fldKatID], [fldKatNavn]) VALUES (3, N'Træning')
SET IDENTITY_INSERT [dbo].[tblKategori] OFF
/****** Object:  Table [dbo].[tblEvents]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEvents](
	[fldAktibitetID] [int] IDENTITY(1,1) NOT NULL,
	[fldSted] [varchar](50) NULL,
	[fldDato] [datetime] NULL,
	[fldForudsaetninger] [varchar](50) NULL,
	[fldType_FK] [int] NULL,
	[fldBeskrivelse] [varchar](max) NULL,
	[fldEventImage] [varchar](max) NULL,
	[fldAnsvarligt_FK] [int] NULL,
 CONSTRAINT [PK_tblAktiviteter] PRIMARY KEY CLUSTERED 
(
	[fldAktibitetID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblEvents] ON
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (1, N'Vibelundvej 70, 5200 Odense V', CAST(0x0000A7260128A180 AS DateTime), N'alder fra 12 mdr.', 1, N'Dette er træning for dig, der allerhelst bare vil have en god familiehund. Træningen hjælper dig til at bruge jagthundens evner til leg og samarbejde i dagligdagen. ', N'allround.jpg', 1)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (2, N'Vibelundvej 70, 5200 Odense V', CAST(0x0000A72B01206420 AS DateTime), N'alder 3-9 mdr.', 2, N'Din hund lærer allermest i de første 8 måneder. Ved at prøve masser af motivationsøvelser, fx at gå efter spor. Vi arbejder med positiv forstærkning. Hvalpetræningen er vigtig for at hunden kommer til at fungere godt i jeres familie.', N'hvalpemotivation.jpg', 2)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (3, N'Vibelundvej 70, 5200 Odense V', CAST(0x0000A6FA011826C0 AS DateTime), N'alder 3-9 mdr.', 2, N'Din hund lærer allermest i de første 8 måneder af dens liv. Ved at prøve masser af motivationsøvelser og positiv forstærkning hjælper vi din hvalp og dig med at lære de ting, der er vigtigt for, at hunden kan fungere godt både hjemme og ude.', N'hvalpetraining1.jpg', 3)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (4, N'Davinde sø', CAST(0x0000A72000000000 AS DateTime), N'Max deltagerantal: 5', 3, N'Giv din hund en spændende udfordring med et vildtspor-kursus. Kurset er i 2 moduler af en dags varighed. Målet er at du får grundlæggende viden til selv at kunne træne din hund frem mod schweissprøve eller markprøve.', N'Vidtspor.jpg', 4)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (5, N'Munkebjergvej 130', CAST(0x0000A718009C8E20 AS DateTime), N'Der er plads til max 6 hunde', 4, N'Jeg gennemgår almen pelspleje, og bagefter trimmer du selv din hund, mens jeg går rundt og hjælper og giver gode råd. Du skal nok ikke forvente at få en færdigtrimmet hund med hjem, og vi når ikke at tale om, hvordan man trimmer til udstilling.', N'trimmedag.jpg', 5)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (6, N'Munkebjergvej 130', CAST(0x0000A726009C8E20 AS DateTime), N'Der er plads til max 6 hunde', 4, N'Jeg gennemgår almen pelspleje, og bagefter trimmer du selv din hund, mens jeg går rundt og hjælper og giver gode råd. Du skal nok ikke forvente at få en færdigtrimmet hund med hjem, og vi når ikke at tale om, hvordan man trimmer til udstilling. ', N'trimmedag2.jpg', 6)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (7, N'Davinde sø', CAST(0x0000A71700BD83A0 AS DateTime), N'Udbegrenstet', 5, N'I forbindelse med det landsdækkende "Hundens Dag" holder vi lørdag den 11. februar 2017 sommerskue. Vi beundrer hinandens dejlige hunde og spiser hotdogs.', N'Oktoberskue.jpg', 7)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (8, N'Munkebjergvej 130', CAST(0x0000A7130130DEE0 AS DateTime), N'Udbegranstet', 6, N'Traditionen tro holder vi sommerfest med buffet og dans. Hundene må vi have passet hos bedstemor eller hvem der nu kan gøre det. Alle tager en ret med til den fælles buffet. Tove tager sin berømte baconsnaps med, og Kenneth laver pandekager med is til dessert.', N'Sommerfest.jpg', 8)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (9, N'Munkebjergvej 130', CAST(0x0000A7480130DEE0 AS DateTime), N'Udbegranstet', 7, N'Traditionen tro holder vi julefest med buffet og dans. Hundene må vi have passet hos bedstemor eller hvem der nu kan gøre det. Alle tager en ret med til den fælles buffet. Tove tager sin berømte baconsnaps med, og Kenneth laver pandekager med is til dessert.', N'Foraar.jpg', 9)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (10, N'Klintebjerg havn', CAST(0x0000A71B00E6B680 AS DateTime), N'Udbegranstet', 8, N'Lad os tage en lang gåtur sammen med hinanden og vores hunde i forårsnaturen. Vi mødes på havnen i Klintebjerg, og så går vi langs kanalen ind imod Odense. Ruten er ca. 3,5 km. Bagefter er der kaffe og te.', N'Gaatur.jpg', 10)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (11, N'Klintebjerg havn', CAST(0x0000A72600D63BC0 AS DateTime), N'Udbegranstet', 8, N'Vi vil nyde forårsfarverne i skoven mens vi går en lang tur sammen med hinanden og vores hunde. Vi mødes på havnen i Klintebjerg, og går vi langs kanalen ind imod Odense. Ruten er ca. 3,5 km. Bagefter er der kaffe og te.', N'gaatur2.jpg', 11)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (12, N'Davinde sø', CAST(0x0000A69A009450C0 AS DateTime), N'Udbegranstet', 9, N'Hunden skal kunne apportere duer på land, kaninapportering og apportering af fuglevildt fra vand. Apportering af duer foregår ved, at der kastes to duer, så de falder med en indbyrdes afstand af 20 meter, mens dommeren afgiver to skud med en 9mm startpistol. Begge duer skal hentes for at hunden kan bestå. Kaninen lægges, så den er skjult for hunden og dens fører. Ved vandapportering skal duen skal falde på dybt og åbent vand, og hunden har Mulighed for at se, hvor duen falder. Aflevering skal ske til hånd, ca. 5 meter fra vandkanten.', N'apporterings.jpg', 12)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (13, N'Davinde sø', CAST(0x0000A726009450C0 AS DateTime), N'Udbegranstet', 10, N'Træn selv med din hund inden prøven: Få fat i noget frisk blod fra okse eller ged. Rør det grundigt, så det ikke koagulerer. Si det og hæld det i 1/4 liters plastikbøtter. Dyreskind kan man få fra en lokal jæger i sæsonen. Skindet skal tørres, men ikke bearbejdes. Hundene vil ruske i og lege med skindet, så de holder ikke længe. Desuden skal du bruge et bredt halsbånd og en 8 meter lang linje.', N'Vidtspor.jpg', 13)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (14, N'Egebjerggård, Alleen, 5450 Otterup', CAST(0x0000A72B009450C0 AS DateTime), N'Udbegranstet', 11, N'Prøverne foregår på jagt, hvor der nedlægges vildt. Forudsætning bestået vildtsporsprøve og bestået apporteringsprøve.', N'Markprove.jpg', 14)
INSERT [dbo].[tblEvents] ([fldAktibitetID], [fldSted], [fldDato], [fldForudsaetninger], [fldType_FK], [fldBeskrivelse], [fldEventImage], [fldAnsvarligt_FK]) VALUES (15, N'Egebjerggård, Alleen, 5450 Otterup', CAST(0x0000A73B009450C0 AS DateTime), N'Udbegranstet', 12, N'Forbered jer inden ved at gå 6 træningsspor a 400-1.500 m. pr. uge med råvildtklove monteret i færtsko. Dryp først lidt okseblod på klovene for hver tiende meter. Læg sporet i medvind og marker det tydeligt, så du altid kan se om hunden er på sporet. Forudsætninger: Hunden skal være fyldt 10 mdr. på prøvedagen og have bestået en vildtspor-prøve.', N'schwiss.jpg', 15)
SET IDENTITY_INSERT [dbo].[tblEvents] OFF
/****** Object:  Table [dbo].[tblDog]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDog](
	[fldDogID] [int] IDENTITY(1,1) NOT NULL,
	[fldNavn] [varchar](50) NULL,
	[fldBirthday] [date] NULL,
	[fldSex_FK] [int] NULL,
	[fldOwner_FK] [int] NULL,
	[fldVaccine] [int] NOT NULL,
 CONSTRAINT [PK_tblDog] PRIMARY KEY CLUSTERED 
(
	[fldDogID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblDog] ON
INSERT [dbo].[tblDog] ([fldDogID], [fldNavn], [fldBirthday], [fldSex_FK], [fldOwner_FK], [fldVaccine]) VALUES (1, N'matt', CAST(0x783C0B00 AS Date), 0, 9, 1)
SET IDENTITY_INSERT [dbo].[tblDog] OFF
/****** Object:  Table [dbo].[tblBruger]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBruger](
	[fldLoginID] [int] IDENTITY(1,1) NOT NULL,
	[fldUsernavn] [varchar](25) NULL,
	[fldPassword] [varchar](max) NULL,
	[fldUserLevel] [int] NULL,
	[fldNavn] [varchar](50) NULL,
	[fldAdresse] [varchar](max) NULL,
	[fldTelefon] [int] NULL,
	[fldPostnr] [int] NULL,
	[fldEmail] [varchar](50) NULL,
 CONSTRAINT [PK_tblTrainer] PRIMARY KEY CLUSTERED 
(
	[fldLoginID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblBruger] ON
INSERT [dbo].[tblBruger] ([fldLoginID], [fldUsernavn], [fldPassword], [fldUserLevel], [fldNavn], [fldAdresse], [fldTelefon], [fldPostnr], [fldEmail]) VALUES (1, N'Lotte', N'1234', 1, N'Lotte Kristensen', NULL, NULL, NULL, NULL)
INSERT [dbo].[tblBruger] ([fldLoginID], [fldUsernavn], [fldPassword], [fldUserLevel], [fldNavn], [fldAdresse], [fldTelefon], [fldPostnr], [fldEmail]) VALUES (2, N'Tove', N'1234', 2, N'Tove Jensen', NULL, NULL, NULL, NULL)
INSERT [dbo].[tblBruger] ([fldLoginID], [fldUsernavn], [fldPassword], [fldUserLevel], [fldNavn], [fldAdresse], [fldTelefon], [fldPostnr], [fldEmail]) VALUES (3, N'Bjarne', N'1234', 2, N'Bjarne Sørensen', NULL, NULL, NULL, NULL)
INSERT [dbo].[tblBruger] ([fldLoginID], [fldUsernavn], [fldPassword], [fldUserLevel], [fldNavn], [fldAdresse], [fldTelefon], [fldPostnr], [fldEmail]) VALUES (6, N'LucasLind', N'FiH0ahT8Bae', 3, N'Lucas Lind', N'Vejlebæksvej 14', 51923093, 5485, N'LucasNLind@fleckens.dk')
INSERT [dbo].[tblBruger] ([fldLoginID], [fldUsernavn], [fldPassword], [fldUserLevel], [fldNavn], [fldAdresse], [fldTelefon], [fldPostnr], [fldEmail]) VALUES (7, N'ChristianJensen', N'208512264222772174181102151942010236531331277169151', 3, N'Christian Jensen', N'Grenåvej 681 P, 1,111', 22155595, 8541, N'toast.ftw420@ymail.com')
INSERT [dbo].[tblBruger] ([fldLoginID], [fldUsernavn], [fldPassword], [fldUserLevel], [fldNavn], [fldAdresse], [fldTelefon], [fldPostnr], [fldEmail]) VALUES (8, N'Laura', N'35861720812952137169650423113920018365208222186113', 3, N'Laura', N'Grenåvej 681 P, 1,111', 1234747, 8451, N'test@test.dk')
INSERT [dbo].[tblBruger] ([fldLoginID], [fldUsernavn], [fldPassword], [fldUserLevel], [fldNavn], [fldAdresse], [fldTelefon], [fldPostnr], [fldEmail]) VALUES (9, N'sven', N'17972302552119912348429221564118405812320925232211', 3, N'sven', N'Grenåvej 681 P, 1,111', 67326723, 8541, N'sven@test.dk')
INSERT [dbo].[tblBruger] ([fldLoginID], [fldUsernavn], [fldPassword], [fldUserLevel], [fldNavn], [fldAdresse], [fldTelefon], [fldPostnr], [fldEmail]) VALUES (10, N'Kenneth', N'1234', 2, N'Kenneth Andersen', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblBruger] OFF
/****** Object:  Table [dbo].[tblAnsvarligt]    Script Date: 02/08/2017 23:23:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAnsvarligt](
	[fldAnsvarID] [int] IDENTITY(1,1) NOT NULL,
	[fldAnsvarligt_FK] [int] NULL,
	[fldRole_FK] [int] NULL,
 CONSTRAINT [PK_tblAnsvarligt] PRIMARY KEY CLUSTERED 
(
	[fldAnsvarID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAnsvarligt] ON
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (1, 2, 2)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (2, 3, 2)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (3, 10, 2)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (4, 3, 6)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (5, 2, 3)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (6, 2, 3)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (7, 2, 4)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (8, 3, 4)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (9, 3, 4)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (10, 10, 4)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (11, 10, 4)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (12, 2, 5)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (13, 3, 5)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (14, 10, 5)
INSERT [dbo].[tblAnsvarligt] ([fldAnsvarID], [fldAnsvarligt_FK], [fldRole_FK]) VALUES (15, 3, 5)
SET IDENTITY_INSERT [dbo].[tblAnsvarligt] OFF
