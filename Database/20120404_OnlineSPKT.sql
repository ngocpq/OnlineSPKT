use master
drop database OnlineSpkt
go
create database [OnlineSPKT]
go

USE [OnlineSPKT]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 04/04/2012 23:02:37 ******/
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
INSERT [dbo].[Roles] ([ID], [Name], [Descripsion]) VALUES (1, N'Admin', N'Full Permission')
INSERT [dbo].[Roles] ([ID], [Name], [Descripsion]) VALUES (2, N'Lecturer', NULL)
INSERT [dbo].[Roles] ([ID], [Name], [Descripsion]) VALUES (3, N'Student', NULL)
/****** Object:  Table [dbo].[Users]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](255) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[IsActived] [bit] NULL,
	[IsLocked] [bit] NULL,
	[LastLoginTime] [datetime] NULL,
	[PasswordInvalidCount] [int] NULL,
	[SecurityCode] [varchar](50) NULL,
	[SecurityCodeEndTime] [datetime] NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'08110036', N'1b0571a6b55b9cef216c4f8a0ab7231f', N'Hải', N'Võ Trường', N'ocrenaka@gmail.com', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'08110103', N'ca078e21dcf2a75cbe771d085e414338', N'Tâm', N'Lữ Thị Tố', N'08110103@student.hcmute.edu.vn', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'08110142', N'1b48093393c3a875b9b121b9506f54b7', N'Vân', N'Dương Thị Thu', N'thuvan_081102@yahoo.com', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'giangvien1', N'4297f44b13955235245b2497399d7a93', N'Nguyễn Hữu', N'Trung', N'nguyenhuutrung@gmail.com', NULL, 0, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Languages]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Languages] ([ID], [Name], [Description]) VALUES (1, N'C++', NULL)
INSERT [dbo].[Languages] ([ID], [Name], [Description]) VALUES (2, N'VB', NULL)
/****** Object:  Table [dbo].[Facuties]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facuties](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Facuties] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Exam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[LecturerID] [varchar](50) NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Difficulties]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Difficulties](
	[DifficultyID] [int] NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[Description] [nchar](10) NULL,
 CONSTRAINT [PK_Difficulty] PRIMARY KEY CLUSTERED 
(
	[DifficultyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Difficulties] ([DifficultyID], [Name], [Description]) VALUES (1, N'Dễ                                                ', NULL)
INSERT [dbo].[Difficulties] ([DifficultyID], [Name], [Description]) VALUES (2, N'Trung bình                                        ', NULL)
INSERT [dbo].[Difficulties] ([DifficultyID], [Name], [Description]) VALUES (3, N'Khó                                               ', NULL)
/****** Object:  Table [dbo].[Comparers]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comparers](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Descripsion] [nvarchar](255) NULL,
	[ClassName] [nvarchar](255) NULL,
	[DllPath] [ntext] NULL,
 CONSTRAINT [PK_CompareTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Comparers] ([ID], [Name], [Descripsion], [ClassName], [DllPath]) VALUES (1, N'So sánh số nguyên', NULL, NULL, NULL)
/****** Object:  Table [dbo].[ClassRoles]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassRoles](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_ClassRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subjects](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Subjects] ([ID], [Name]) VALUES (N'0112001', N'Cấu trúc dữ liệu 1')
INSERT [dbo].[Subjects] ([ID], [Name]) VALUES (N'1179011', N'Cơ sở lập trình 1')
INSERT [dbo].[Subjects] ([ID], [Name]) VALUES (N'1179012', N'Cơ sở lập trình 2')
/****** Object:  Table [dbo].[Lecturer_Subject]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lecturer_Subject](
	[MaGV] [varchar](50) NOT NULL,
	[MaMH] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GiaoVien_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Lecturer_Subject] ([MaGV], [MaMH]) VALUES (N'giangvien1', N'1179011')
/****** Object:  Table [dbo].[Classes]    Script Date: 04/04/2012 23:02:37 ******/
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
INSERT [dbo].[Classes] ([ID], [SubjectID], [Group], [Term], [SchoolYear]) VALUES (7, N'1179011', N'1', N'HK II', N'2011-2012')
INSERT [dbo].[Classes] ([ID], [SubjectID], [Group], [Term], [SchoolYear]) VALUES (9, N'1179011', N'1', N'HK II', N'2011-2012')
SET IDENTITY_INSERT [dbo].[Classes] OFF
/****** Object:  Table [dbo].[User_Role]    Script Date: 04/04/2012 23:02:37 ******/
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
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'08110036', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'08110103', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'08110142', 1)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'08110142', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'giangvien1', 2)
/****** Object:  Table [dbo].[Problems]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Problems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LecturerID] [varchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[Content] [ntext] NOT NULL,
	[MemoryLimit] [int] NULL,
	[TimeLimit] [int] NULL,
	[ComparerID] [int] NULL,
	[DifficultyID] [int] NOT NULL,
	[IsHiden] [bit] NULL,
	[AvailableTime] [datetime] NULL,
	[TimeStamp] [timestamp] NULL,
	[ComparerParameter] [ntext] NULL,
 CONSTRAINT [PK_DeBai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Problems] ON
INSERT [dbo].[Problems] ([ID], [LecturerID], [Name], [Content], [MemoryLimit], [TimeLimit], [ComparerID], [DifficultyID], [IsHiden], [AvailableTime], [ComparerParameter]) VALUES (52, N'giangvien1', N'Tìm số nhỏ nhất trong mảng ', N'Viết hàm nhập mảng có n phần tử số nguyên xuất ra số nhỏ nhất trong mảng.', 1000, 1000, 1, 1, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Problems] OFF
/****** Object:  Table [dbo].[Problem_Subject]    Script Date: 04/04/2012 23:02:37 ******/
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
INSERT [dbo].[Problem_Subject] ([ProblemID], [SubjectID], [DificultLevel]) VALUES (52, N'1179011', 1)
/****** Object:  Table [dbo].[Problem_Class]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Problem_Class](
	[ProblemID] [int] NOT NULL,
	[ClassID] [int] NOT NULL,
 CONSTRAINT [PK_Problem_Class_1] PRIMARY KEY CLUSTERED 
(
	[ProblemID] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestCases]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestCases](
	[MaTestCase] [int] IDENTITY(1,1) NOT NULL,
	[MaDB] [int] NOT NULL,
	[Input] [ntext] NOT NULL,
	[Output] [ntext] NOT NULL,
	[MoTa] [ntext] NULL,
	[Diem] [int] NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_TestCase] PRIMARY KEY CLUSTERED 
(
	[MaTestCase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TestCases] ON
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (17, 52, N'5 
3 9 5 1 7', N'1', N'testcase', 2)
SET IDENTITY_INSERT [dbo].[TestCases] OFF
/****** Object:  Table [dbo].[Class_Student]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class_Student](
	[ClassID] [int] NOT NULL,
	[StudentID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Class_Student] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Class_Lecturer]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class_Lecturer](
	[ClassID] [int] NOT NULL,
	[LecturerID] [varchar](50) NOT NULL,
	[ClassRoleID] [int] NOT NULL,
 CONSTRAINT [PK_Class_Lecturer] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC,
	[LecturerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contests]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contests](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[ExamID] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[IsOpen] [bit] NULL,
	[TotalScore] [int] NULL,
 CONSTRAINT [PK_NewContest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Submit]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student_Submit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProblemID] [int] NOT NULL,
	[StudentID] [varchar](50) NOT NULL,
	[ContestID] [int] NULL,
	[SourceCode] [ntext] NOT NULL,
	[TrangThaiBienDich] [int] NOT NULL,
	[TrangThaiCham] [int] NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
	[LanguageID] [int] NULL,
	[SubmitTime] [datetime] NOT NULL,
 CONSTRAINT [PK_BaiThi_ThiSinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Student_Submit] ON
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime]) VALUES (3, 52, N'08110142', NULL, N'Viết code thử', 1, 1, 1, CAST(0x0000A0280125CC6E AS DateTime))
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime]) VALUES (4, 52, N'08110142', NULL, N'#include<stdio.h>
#include<conio.h>
', 1, 1, 1, CAST(0x0000A02801591853 AS DateTime))
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime]) VALUES (5, 52, N'08110142', NULL, N'#include<stdio.h>
#include<conio.h>', 1, 1, 1, CAST(0x0000A0290006509D AS DateTime))
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime]) VALUES (6, 52, N'08110142', NULL, N'#include<stdio.h>
#include<conio.h>', 0, 0, 1, CAST(0x0000A02900089BDE AS DateTime))
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime]) VALUES (7, 52, N'08110142', NULL, N'#include<stdio.h>
#include<conio.h>', 0, 0, 1, CAST(0x0000A0290008F6FC AS DateTime))
SET IDENTITY_INSERT [dbo].[Student_Submit] OFF
/****** Object:  Table [dbo].[Contest_Student]    Script Date: 04/04/2012 23:02:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contest_Student](
	[StudentID] [varchar](50) NOT NULL,
	[ContestID] [int] NOT NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_Contest_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[ContestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TestCaseResult]    Script Date: 04/04/2012 23:02:37 ******/
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
/****** Object:  Default [DF_Users_IsActived]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsActived]  DEFAULT ((0)) FOR [IsActived]
GO
/****** Object:  Default [DF_Users_IsLocked]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsLocked]  DEFAULT ((1)) FOR [IsLocked]
GO
/****** Object:  ForeignKey [FK_Class_Lecturer_Classes]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Class_Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Class_Lecturer_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[Class_Lecturer] CHECK CONSTRAINT [FK_Class_Lecturer_Classes]
GO
/****** Object:  ForeignKey [FK_Class_Lecturer_ClassRoles]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Class_Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Class_Lecturer_ClassRoles] FOREIGN KEY([ClassRoleID])
REFERENCES [dbo].[ClassRoles] ([ID])
GO
ALTER TABLE [dbo].[Class_Lecturer] CHECK CONSTRAINT [FK_Class_Lecturer_ClassRoles]
GO
/****** Object:  ForeignKey [FK_Class_Lecturer_Users]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Class_Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Class_Lecturer_Users] FOREIGN KEY([LecturerID])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Class_Lecturer] CHECK CONSTRAINT [FK_Class_Lecturer_Users]
GO
/****** Object:  ForeignKey [FK_Class_Student_Classes]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Class_Student]  WITH CHECK ADD  CONSTRAINT [FK_Class_Student_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[Class_Student] CHECK CONSTRAINT [FK_Class_Student_Classes]
GO
/****** Object:  ForeignKey [FK_Class_Student_Users]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Class_Student]  WITH CHECK ADD  CONSTRAINT [FK_Class_Student_Users] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Class_Student] CHECK CONSTRAINT [FK_Class_Student_Users]
GO
/****** Object:  ForeignKey [FK_Classes_Subjects]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([ID])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_Subjects]
GO
/****** Object:  ForeignKey [FK_Contest_Student_Contests]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Contest_Student]  WITH CHECK ADD  CONSTRAINT [FK_Contest_Student_Contests] FOREIGN KEY([ContestID])
REFERENCES [dbo].[Contests] ([ID])
GO
ALTER TABLE [dbo].[Contest_Student] CHECK CONSTRAINT [FK_Contest_Student_Contests]
GO
/****** Object:  ForeignKey [FK_Contest_Student_Users]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Contest_Student]  WITH CHECK ADD  CONSTRAINT [FK_Contest_Student_Users] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Contest_Student] CHECK CONSTRAINT [FK_Contest_Student_Users]
GO
/****** Object:  ForeignKey [FK_NewContest_Classes]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Contests]  WITH CHECK ADD  CONSTRAINT [FK_NewContest_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[Contests] CHECK CONSTRAINT [FK_NewContest_Classes]
GO
/****** Object:  ForeignKey [FK_NewContest_Exam]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Contests]  WITH CHECK ADD  CONSTRAINT [FK_NewContest_Exam] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ID])
GO
ALTER TABLE [dbo].[Contests] CHECK CONSTRAINT [FK_NewContest_Exam]
GO
/****** Object:  ForeignKey [FK_Lecturer_Subject_Subjects]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Lecturer_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Subject_Subjects] FOREIGN KEY([MaMH])
REFERENCES [dbo].[Subjects] ([ID])
GO
ALTER TABLE [dbo].[Lecturer_Subject] CHECK CONSTRAINT [FK_Lecturer_Subject_Subjects]
GO
/****** Object:  ForeignKey [FK_Lecturer_Subject_Users]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Lecturer_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Subject_Users] FOREIGN KEY([MaGV])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Lecturer_Subject] CHECK CONSTRAINT [FK_Lecturer_Subject_Users]
GO
/****** Object:  ForeignKey [FK_Problem_Class_Classes]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Problem_Class]  WITH CHECK ADD  CONSTRAINT [FK_Problem_Class_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[Problem_Class] CHECK CONSTRAINT [FK_Problem_Class_Classes]
GO
/****** Object:  ForeignKey [FK_Problem_Class_Problems]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Problem_Class]  WITH CHECK ADD  CONSTRAINT [FK_Problem_Class_Problems] FOREIGN KEY([ProblemID])
REFERENCES [dbo].[Problems] ([ID])
GO
ALTER TABLE [dbo].[Problem_Class] CHECK CONSTRAINT [FK_Problem_Class_Problems]
GO
/****** Object:  ForeignKey [FK_Problem_Subject_Problems]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Problem_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Problem_Subject_Problems] FOREIGN KEY([ProblemID])
REFERENCES [dbo].[Problems] ([ID])
GO
ALTER TABLE [dbo].[Problem_Subject] CHECK CONSTRAINT [FK_Problem_Subject_Problems]
GO
/****** Object:  ForeignKey [FK_Problem_Subject_Subjects]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Problem_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Problem_Subject_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([ID])
GO
ALTER TABLE [dbo].[Problem_Subject] CHECK CONSTRAINT [FK_Problem_Subject_Subjects]
GO
/****** Object:  ForeignKey [FK_Problems_Comparers]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Problems]  WITH CHECK ADD  CONSTRAINT [FK_Problems_Comparers] FOREIGN KEY([ComparerID])
REFERENCES [dbo].[Comparers] ([ID])
GO
ALTER TABLE [dbo].[Problems] CHECK CONSTRAINT [FK_Problems_Comparers]
GO
/****** Object:  ForeignKey [FK_Problems_Difficulty]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Problems]  WITH CHECK ADD  CONSTRAINT [FK_Problems_Difficulty] FOREIGN KEY([DifficultyID])
REFERENCES [dbo].[Difficulties] ([DifficultyID])
GO
ALTER TABLE [dbo].[Problems] CHECK CONSTRAINT [FK_Problems_Difficulty]
GO
/****** Object:  ForeignKey [FK_Problems_Users]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Problems]  WITH CHECK ADD  CONSTRAINT [FK_Problems_Users] FOREIGN KEY([LecturerID])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Problems] CHECK CONSTRAINT [FK_Problems_Users]
GO
/****** Object:  ForeignKey [FK_Student_Summit_Contests]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Student_Submit]  WITH CHECK ADD  CONSTRAINT [FK_Student_Summit_Contests] FOREIGN KEY([ContestID])
REFERENCES [dbo].[Contests] ([ID])
GO
ALTER TABLE [dbo].[Student_Submit] CHECK CONSTRAINT [FK_Student_Summit_Contests]
GO
/****** Object:  ForeignKey [FK_Student_Summit_Languages]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Student_Submit]  WITH CHECK ADD  CONSTRAINT [FK_Student_Summit_Languages] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[Student_Submit] CHECK CONSTRAINT [FK_Student_Summit_Languages]
GO
/****** Object:  ForeignKey [FK_Student_Summit_Problems]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Student_Submit]  WITH CHECK ADD  CONSTRAINT [FK_Student_Summit_Problems] FOREIGN KEY([ProblemID])
REFERENCES [dbo].[Problems] ([ID])
GO
ALTER TABLE [dbo].[Student_Submit] CHECK CONSTRAINT [FK_Student_Summit_Problems]
GO
/****** Object:  ForeignKey [FK_Student_Summit_Users]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[Student_Submit]  WITH CHECK ADD  CONSTRAINT [FK_Student_Summit_Users] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Student_Submit] CHECK CONSTRAINT [FK_Student_Summit_Users]
GO
/****** Object:  ForeignKey [FK_TestCaseResult_Student_Summit]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[TestCaseResult]  WITH CHECK ADD  CONSTRAINT [FK_TestCaseResult_Student_Summit] FOREIGN KEY([StudentSubmitID])
REFERENCES [dbo].[Student_Submit] ([ID])
GO
ALTER TABLE [dbo].[TestCaseResult] CHECK CONSTRAINT [FK_TestCaseResult_Student_Summit]
GO
/****** Object:  ForeignKey [FK_TestCaseResult_TestCases]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[TestCaseResult]  WITH CHECK ADD  CONSTRAINT [FK_TestCaseResult_TestCases] FOREIGN KEY([TestCaseID])
REFERENCES [dbo].[TestCases] ([MaTestCase])
GO
ALTER TABLE [dbo].[TestCaseResult] CHECK CONSTRAINT [FK_TestCaseResult_TestCases]
GO
/****** Object:  ForeignKey [FK_TestCases_Problems]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[TestCases]  WITH CHECK ADD  CONSTRAINT [FK_TestCases_Problems] FOREIGN KEY([MaDB])
REFERENCES [dbo].[Problems] ([ID])
GO
ALTER TABLE [dbo].[TestCases] CHECK CONSTRAINT [FK_TestCases_Problems]
GO
/****** Object:  ForeignKey [FK_User_Role_Roles]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_Roles]
GO
/****** Object:  ForeignKey [FK_User_Role_Users]    Script Date: 04/04/2012 23:02:37 ******/
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_Users]
GO
