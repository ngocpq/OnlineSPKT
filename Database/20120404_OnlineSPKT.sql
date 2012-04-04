USE [OnlineSPKT]
GO
/****** Object:  Table [dbo].[Classes]    Script Date: 04/04/2012 21:49:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Classes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectID] [varchar](50) NOT NULL,
	[Group] [nvarchar](50) NOT NULL,
	[Term] [nvarchar](50) NOT NULL,
	[SchoolYear] [nvarchar](100) NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Classes] ON
INSERT [dbo].[Classes] ([ID], [SubjectID], [Group], [Term], [SchoolYear]) VALUES (1, N'1179011', N'1', N'HK II', NULL)
INSERT [dbo].[Classes] ([ID], [SubjectID], [Group], [Term], [SchoolYear]) VALUES (2, N'0112001', N'1', N'HK II', NULL)
INSERT [dbo].[Classes] ([ID], [SubjectID], [Group], [Term], [SchoolYear]) VALUES (4, N'1179011', N'1', N'HK I', NULL)
INSERT [dbo].[Classes] ([ID], [SubjectID], [Group], [Term], [SchoolYear]) VALUES (5, N'1179011', N'1', N'HK II', NULL)
INSERT [dbo].[Classes] ([ID], [SubjectID], [Group], [Term], [SchoolYear]) VALUES (6, N'1179011', N'1', N'HK I', N'2011-2012')
SET IDENTITY_INSERT [dbo].[Classes] OFF
/****** Object:  ForeignKey [FK_Classes_Subjects]    Script Date: 04/04/2012 21:49:02 ******/
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([ID])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_Subjects]
GO
