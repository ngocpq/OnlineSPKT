use master

create database OnlineSPKT
GO

USE [OnlineSPKT]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subjects](
	[MaMH] [varchar](50) NOT NULL,
	[TenMH] [nvarchar](100) NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[MSSV] [varchar](50) NOT NULL,
	[Ho] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[MaLop] [varchar](30) NOT NULL,
	[MaNganh] [varchar](50) NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contests]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contests](
	[MaDT] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[StartTime] [date] NOT NULL,
	[EndTime] [date] NOT NULL,
	[TongDiem] [int] NOT NULL,
	[IsOpen] [bit] NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_DeThi] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comparers]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comparers](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Descripsion] [nvarchar](255) NULL,
	[ClassName] [nvarchar](255) NULL,
	[Parameter] [varchar](255) NULL,
 CONSTRAINT [PK_CompareTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lecturers]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lecturers](
	[LecturerID] [varchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](10) NOT NULL,
	[BoMon] [nvarchar](50) NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[LecturerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Descripsion] [nvarchar](255) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestCases]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestCases](
	[MaTestCase] [int] IDENTITY(1,1) NOT NULL,
	[MaDB] [int] NOT NULL,
	[Input] [ntext] NOT NULL,
	[Output] [ntext] NOT NULL,
	[MoTa] [ntext] NOT NULL,
	[Diem] [int] NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_TestCase] PRIMARY KEY CLUSTERED 
(
	[MaTestCase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[IsActived] [bit] NULL,
	[IsLocked] [bit] NULL,
	[LastLoginTime] [date] NULL,
	[PasswordInvalidCount] [int] NULL,
	[SecurityCode] [varchar](50) NULL,
	[SecurityCodeEndTime] [date] NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Role](
	[Username] [varchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_User_Role] PRIMARY KEY CLUSTERED 
(
	[Username] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Problems]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Problems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LecturerID] [varchar](10) NULL,
	[Name] [nvarchar](100) NULL,
	[Content] [ntext] NOT NULL,
	[MemoryLimit] [int] NOT NULL,
	[TimeLimit] [int] NOT NULL,
	[ComparerID] [int] NOT NULL,
	[DoKho] [int] NOT NULL,
	[IsHiden] [bit] NULL,
	[AvailableTime] [date] NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_DeBai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lecturer_Subject]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lecturer_Subject](
	[MaGV] [varchar](50) NOT NULL,
	[MaMH] [varchar](50) NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_GiaoVien_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contest_Student]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contest_Student](
	[StudentID] [varchar](50) NOT NULL,
	[ContestID] [int] NOT NULL,
	[Timestamp] [timestamp] NULL,
 CONSTRAINT [PK_Contest_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[ContestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student_Summit]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student_Summit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProblemID] [int] NOT NULL,
	[StudentID] [varchar](50) NOT NULL,
	[ContestID] [int] NULL,
	[SourceCode] [ntext] NOT NULL,
	[TrangThaiBienDich] [int] NOT NULL,
	[TrangThaiCham] [int] NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_BaiThi_ThiSinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Problem_Subject]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Problem_Subject](
	[ProblemID] [int] NOT NULL,
	[SubjectID] [varchar](50) NOT NULL,
	[DificultLevel] [int] NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Problem_Subject] PRIMARY KEY CLUSTERED 
(
	[ProblemID] ASC,
	[SubjectID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestCaseResult]    Script Date: 03/12/2012 03:01:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestCaseResult](
	[StudentSubmitID] [int] NOT NULL,
	[TestCaseID] [int] NOT NULL,
	[ExecutionTime] [int] NULL,
	[ExecutionMemory] [int] NULL,
	[Score] [int] NULL,
	[Comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_TestCaseResult] PRIMARY KEY CLUSTERED 
(
	[StudentSubmitID] ASC,
	[TestCaseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Contest_Student_Contests]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[Contest_Student]  WITH CHECK ADD  CONSTRAINT [FK_Contest_Student_Contests] FOREIGN KEY([ContestID])
REFERENCES [dbo].[Contests] ([MaDT])
GO
ALTER TABLE [dbo].[Contest_Student] CHECK CONSTRAINT [FK_Contest_Student_Contests]
GO
/****** Object:  ForeignKey [FK_Contest_Student_Students]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[Contest_Student]  WITH CHECK ADD  CONSTRAINT [FK_Contest_Student_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([MSSV])
GO
ALTER TABLE [dbo].[Contest_Student] CHECK CONSTRAINT [FK_Contest_Student_Students]
GO
/****** Object:  ForeignKey [FK_Lecturer_Subject_Lecturers]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[Lecturer_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Subject_Lecturers] FOREIGN KEY([MaGV])
REFERENCES [dbo].[Lecturers] ([LecturerID])
GO
ALTER TABLE [dbo].[Lecturer_Subject] CHECK CONSTRAINT [FK_Lecturer_Subject_Lecturers]
GO
/****** Object:  ForeignKey [FK_Lecturer_Subject_Subjects]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[Lecturer_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Subject_Subjects] FOREIGN KEY([MaMH])
REFERENCES [dbo].[Subjects] ([MaMH])
GO
ALTER TABLE [dbo].[Lecturer_Subject] CHECK CONSTRAINT [FK_Lecturer_Subject_Subjects]
GO
/****** Object:  ForeignKey [FK_Problem_Subject_Problems]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[Problem_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Problem_Subject_Problems] FOREIGN KEY([ProblemID])
REFERENCES [dbo].[Problems] ([ID])
GO
ALTER TABLE [dbo].[Problem_Subject] CHECK CONSTRAINT [FK_Problem_Subject_Problems]
GO
/****** Object:  ForeignKey [FK_Problem_Subject_Subjects]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[Problem_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Problem_Subject_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([MaMH])
GO
ALTER TABLE [dbo].[Problem_Subject] CHECK CONSTRAINT [FK_Problem_Subject_Subjects]
GO
/****** Object:  ForeignKey [FK_Problems_Comparers]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[Problems]  WITH CHECK ADD  CONSTRAINT [FK_Problems_Comparers] FOREIGN KEY([ComparerID])
REFERENCES [dbo].[Comparers] ([ID])
GO
ALTER TABLE [dbo].[Problems] CHECK CONSTRAINT [FK_Problems_Comparers]
GO
/****** Object:  ForeignKey [FK_Student_Summit_Contests]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[Student_Summit]  WITH CHECK ADD  CONSTRAINT [FK_Student_Summit_Contests] FOREIGN KEY([ContestID])
REFERENCES [dbo].[Contests] ([MaDT])
GO
ALTER TABLE [dbo].[Student_Summit] CHECK CONSTRAINT [FK_Student_Summit_Contests]
GO
/****** Object:  ForeignKey [FK_Student_Summit_Problems]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[Student_Summit]  WITH CHECK ADD  CONSTRAINT [FK_Student_Summit_Problems] FOREIGN KEY([ProblemID])
REFERENCES [dbo].[Problems] ([ID])
GO
ALTER TABLE [dbo].[Student_Summit] CHECK CONSTRAINT [FK_Student_Summit_Problems]
GO
/****** Object:  ForeignKey [FK_Student_Summit_Students]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[Student_Summit]  WITH CHECK ADD  CONSTRAINT [FK_Student_Summit_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([MSSV])
GO
ALTER TABLE [dbo].[Student_Summit] CHECK CONSTRAINT [FK_Student_Summit_Students]
GO
/****** Object:  ForeignKey [FK_TestCaseResult_Student_Summit]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[TestCaseResult]  WITH CHECK ADD  CONSTRAINT [FK_TestCaseResult_Student_Summit] FOREIGN KEY([StudentSubmitID])
REFERENCES [dbo].[Student_Summit] ([ID])
GO
ALTER TABLE [dbo].[TestCaseResult] CHECK CONSTRAINT [FK_TestCaseResult_Student_Summit]
GO
/****** Object:  ForeignKey [FK_TestCaseResult_TestCases]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[TestCaseResult]  WITH CHECK ADD  CONSTRAINT [FK_TestCaseResult_TestCases] FOREIGN KEY([TestCaseID])
REFERENCES [dbo].[TestCases] ([MaTestCase])
GO
ALTER TABLE [dbo].[TestCaseResult] CHECK CONSTRAINT [FK_TestCaseResult_TestCases]
GO
/****** Object:  ForeignKey [FK_User_Role_Roles]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_Roles]
GO
/****** Object:  ForeignKey [FK_User_Role_Users]    Script Date: 03/12/2012 03:01:21 ******/
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_Users]
GO
