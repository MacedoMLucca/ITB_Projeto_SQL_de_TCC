USE [TCC_SLA]
GO
/****** Object:  Table [dbo].[Dados_Aluno]    Script Date: 02/07/2021 20:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dados_Aluno](
	[RM_Aluno] [int] NOT NULL,
	[Nome_Aluno] [varchar](50) NOT NULL,
	[Email_Aluno] [varchar](50) NOT NULL,
	[Turma] [varchar](7) NOT NULL,
	[Numero_Aluno] [int] NOT NULL,
	[Id_Grupo] [int] NOT NULL,
	[Senha_Aluno] [varchar](20) NOT NULL,
 CONSTRAINT [PK_RM_Aluno] PRIMARY KEY CLUSTERED 
(
	[RM_Aluno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dados_Prof]    Script Date: 02/07/2021 20:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dados_Prof](
	[RM_prof] [int] NOT NULL,
	[Nome_prof] [varchar](50) NOT NULL,
	[Materia] [varchar](30) NOT NULL,
	[Email_Prof] [varchar](50) NOT NULL,
	[Senha_Prof] [varchar](20) NOT NULL,
 CONSTRAINT [PK_RM_prof] PRIMARY KEY CLUSTERED 
(
	[RM_prof] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grupo]    Script Date: 02/07/2021 20:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grupo](
	[Id_Grupo] [int] NOT NULL,
	[Nome_Grupo] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ID_Grupo] PRIMARY KEY CLUSTERED 
(
	[Id_Grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projeto]    Script Date: 02/07/2021 20:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projeto](
	[Id_Projeto] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Tema] [varchar](50) NOT NULL,
	[descricao] [nvarchar](max) NOT NULL,
	[Local_Proj] [varchar](40) NOT NULL,
	[eixo] [varchar](20) NOT NULL,
	[tipo] [varchar](15) NOT NULL,
	[Id_Grupo] [int] NOT NULL,
	[RM_Prof] [int] NOT NULL,
	[Status_Proj] [int] NOT NULL,
 CONSTRAINT [PK_Id_Projeto] PRIMARY KEY CLUSTERED 
(
	[Id_Projeto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Dados_Aluno] ([RM_Aluno], [Nome_Aluno], [Email_Aluno], [Turma], [Numero_Aluno], [Id_Grupo], [Senha_Aluno]) VALUES (14567, N'Robson trindade', N'Robson.aluno@estudante.fieb.edu', N'INF3BM', 31, 1, N'1234ALUNO')
INSERT [dbo].[Dados_Aluno] ([RM_Aluno], [Nome_Aluno], [Email_Aluno], [Turma], [Numero_Aluno], [Id_Grupo], [Senha_Aluno]) VALUES (14768, N'jose cerqueira', N'jose.aluno@estudante.fieb.edu', N'ELE2CT', 18, 2, N'1234ALUNO')
INSERT [dbo].[Dados_Aluno] ([RM_Aluno], [Nome_Aluno], [Email_Aluno], [Turma], [Numero_Aluno], [Id_Grupo], [Senha_Aluno]) VALUES (21993, N'pedro vieira', N'pedro.aluno@estudante.fieb.edu', N'INF1BM', 22, 2, N'1234ALUNO')
INSERT [dbo].[Dados_Aluno] ([RM_Aluno], [Nome_Aluno], [Email_Aluno], [Turma], [Numero_Aluno], [Id_Grupo], [Senha_Aluno]) VALUES (22349, N'Renan barao', N'Renan.aluno@estudante.fieb.edu', N'INF3BM', 7, 3, N'1234ALUNO')
INSERT [dbo].[Dados_Aluno] ([RM_Aluno], [Nome_Aluno], [Email_Aluno], [Turma], [Numero_Aluno], [Id_Grupo], [Senha_Aluno]) VALUES (34261, N'mariana vegas', N'mariana.aluno@estudante.fieb.edu', N'INF1AM', 22, 2, N'1234ALUNO')
INSERT [dbo].[Dados_Prof] ([RM_prof], [Nome_prof], [Materia], [Email_Prof], [Senha_Prof]) VALUES (1, N'Gilberto Vieira Silva', N'Historia', N'Gil.prof@docente.edu.br', N'HistAmor')
INSERT [dbo].[Dados_Prof] ([RM_prof], [Nome_prof], [Materia], [Email_Prof], [Senha_Prof]) VALUES (2, N'Mauricio Aparecido Guerra', N'Geografia', N'Mauricio.prof@docente.edu.br', N'GeoGeo')
INSERT [dbo].[Dados_Prof] ([RM_prof], [Nome_prof], [Materia], [Email_Prof], [Senha_Prof]) VALUES (3, N'Jorge Cruz Teixeira', N'Banco de dados', N'JorgeC.prof@docente.edu.br', N'BDebom')
INSERT [dbo].[Dados_Prof] ([RM_prof], [Nome_prof], [Materia], [Email_Prof], [Senha_Prof]) VALUES (4, N'Emerson Fernades Santos', N'Fisica', N'EmersonfSantos.prof@docente.edu.br', N'12345678')
INSERT [dbo].[Dados_Prof] ([RM_prof], [Nome_prof], [Materia], [Email_Prof], [Senha_Prof]) VALUES (5, N'Mariana Mendes Oliveira', N'Educaçao Fisica', N'MariMendes.prof@docente.edu.br', N'MariMendes')
INSERT [dbo].[Grupo] ([Id_Grupo], [Nome_Grupo]) VALUES (3, N'AfricaAQUI')
INSERT [dbo].[Grupo] ([Id_Grupo], [Nome_Grupo]) VALUES (1, N'RacismoNAO')
INSERT [dbo].[Grupo] ([Id_Grupo], [Nome_Grupo]) VALUES (2, N'Sem Fobia')
SET IDENTITY_INSERT [dbo].[Projeto] ON 

INSERT [dbo].[Projeto] ([Id_Projeto], [Nome], [Tema], [descricao], [Local_Proj], [eixo], [tipo], [Id_Grupo], [RM_Prof], [Status_Proj]) VALUES (1, N'Racismo nunca mais', N'Racismo', N'Nosso projeto e sobre racismo e queremos conscientizar as pessoa,Nosso projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoa
		Nosso projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoaNosso
		projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoa', N'Sala', N'racismo', N'exposiçao', 1, 3, 3)
INSERT [dbo].[Projeto] ([Id_Projeto], [Nome], [Tema], [descricao], [Local_Proj], [eixo], [tipo], [Id_Grupo], [RM_Prof], [Status_Proj]) VALUES (2, N'Africa AQUI', N'Racismo', N'Nosso projeto e sobre racismo e queremos conscientizar as pessoa,Nosso projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoa
		Nosso projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoaNosso
		projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoa', N'Sala', N'racismo', N'apresentacao', 3, 4, 1)
INSERT [dbo].[Projeto] ([Id_Projeto], [Nome], [Tema], [descricao], [Local_Proj], [eixo], [tipo], [Id_Grupo], [RM_Prof], [Status_Proj]) VALUES (4, N'Sem Fobia ', N'homofobia', N'Nosso projeto e sobre racismo e queremos conscientizar as pessoa,Nosso projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoa
		Nosso projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoaNosso
		projeto e sobre racismo e queremos conscientizar as pessoaNosso projeto e sobre racismo e queremos conscientizar as pessoa', N'auditorio', N'racismo', N'apresentacao', 2, 5, 1)
SET IDENTITY_INSERT [dbo].[Projeto] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_email_aluno]    Script Date: 02/07/2021 20:11:05 ******/
ALTER TABLE [dbo].[Dados_Aluno] ADD  CONSTRAINT [UN_email_aluno] UNIQUE NONCLUSTERED 
(
	[Email_Aluno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_email_prof]    Script Date: 02/07/2021 20:11:05 ******/
ALTER TABLE [dbo].[Dados_Prof] ADD  CONSTRAINT [UN_email_prof] UNIQUE NONCLUSTERED 
(
	[Email_Prof] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_Nome_Grupo]    Script Date: 02/07/2021 20:11:05 ******/
ALTER TABLE [dbo].[Grupo] ADD  CONSTRAINT [UN_Nome_Grupo] UNIQUE NONCLUSTERED 
(
	[Nome_Grupo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dados_Aluno]  WITH CHECK ADD  CONSTRAINT [FK_Id_Grupo_Aluno] FOREIGN KEY([Id_Grupo])
REFERENCES [dbo].[Grupo] ([Id_Grupo])
GO
ALTER TABLE [dbo].[Dados_Aluno] CHECK CONSTRAINT [FK_Id_Grupo_Aluno]
GO
ALTER TABLE [dbo].[Projeto]  WITH CHECK ADD  CONSTRAINT [FK_Id_Grupo_Projeto] FOREIGN KEY([Id_Grupo])
REFERENCES [dbo].[Grupo] ([Id_Grupo])
GO
ALTER TABLE [dbo].[Projeto] CHECK CONSTRAINT [FK_Id_Grupo_Projeto]
GO
ALTER TABLE [dbo].[Projeto]  WITH CHECK ADD  CONSTRAINT [FK_RM_Prof] FOREIGN KEY([RM_Prof])
REFERENCES [dbo].[Dados_Prof] ([RM_prof])
GO
ALTER TABLE [dbo].[Projeto] CHECK CONSTRAINT [FK_RM_Prof]
GO
ALTER TABLE [dbo].[Projeto]  WITH CHECK ADD  CONSTRAINT [FK_Rm_Prof_Projeto] FOREIGN KEY([RM_Prof])
REFERENCES [dbo].[Dados_Prof] ([RM_prof])
GO
ALTER TABLE [dbo].[Projeto] CHECK CONSTRAINT [FK_Rm_Prof_Projeto]
GO
ALTER TABLE [dbo].[Projeto]  WITH CHECK ADD CHECK  (([Status_Proj]='1' OR [Status_Proj]='2' OR [Status_Proj]='3'))
GO
