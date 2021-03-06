Create database OnlineSPKT
GO
USE [OnlineSPKT]
GO
/****** Object:  User [van]    Script Date: 05/28/2012 20:20:16 ******/
CREATE USER [van] FOR LOGIN [van] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Comparers]    Script Date: 05/28/2012 20:20:16 ******/
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
INSERT [dbo].[Comparers] ([ID], [Name], [Descripsion], [ClassName], [DllPath]) VALUES (1, N'So sánh số nguyên', NULL, N'ChamDiem.SoSanh.SoSanhSoNguyen', N'SoSanh.dll')
INSERT [dbo].[Comparers] ([ID], [Name], [Descripsion], [ClassName], [DllPath]) VALUES (2, N'So sánh tùy chọn', NULL, N'ChamDiem.SoSanh.SoSanhExternal', N'SoSanh.dll')
/****** Object:  Table [dbo].[Roles]    Script Date: 05/28/2012 20:20:16 ******/
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
/****** Object:  Table [dbo].[Difficulties]    Script Date: 05/28/2012 20:20:16 ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 05/28/2012 20:20:16 ******/
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
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'08110052', N'757093c4abdbb2e351d431a7003040c2', N'Hùng', N'Trần Văn', N'vanhungcntt08@gmail.com', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'08110068', N'e010f17250cdd9fb5f17ad9c732af028', N'Lợi', N'Nguyễn Văn', N'loi.itspk08@gmail.com', 1, 0, CAST(0x0000A05D0111F306 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'08110103', N'ca078e21dcf2a75cbe771d085e414338', N'Tâm', N'Lữ Thị Tố', N'08110103@student.hcmute.edu.vn', 1, 0, CAST(0x0000A05C008F9618 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'08110104', N'1e5c810d5d45f6de90ca1ecb3f4dcc48', N'Tâm', N'Nguyễn Công', N'nguyencongtam642@yahoo.com', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'08110142', N'1b48093393c3a875b9b121b9506f54b7', N'Vân', N'Dương Thị Thu', N'thuvan_081102@yahoo.com', 1, 0, CAST(0x0000A05D017C8433 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'10110055', N'c42bcb8f5a3091408fd9d494be11cc5b', N'Khải', N'Hồ Đăng', N'khaiho2002@gmail.com', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'10110108', N'f4bf47c71a4432889e3a70f8553123c9', N'Thiện', N'Dương Anh', N'anhthienad@toitaigioi.com', 1, 0, CAST(0x0000A05B01817DC6 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'10110114', N'b2aa61cfbd83d0b7dce0a7b5c9f2779a', N'Thuận', N'Lê Thành', N'lethuan92@yahoo.com', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'11110002', N'2aa84157c98dee8d847e4cc5d61b94bf', N'Anh', N'Hồng Thị Mỹ', N'', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'11110006', N'e0ed5cff9deefa4d9a6006b4e592196e', N'Bàng', N'Nguyễn Xuân', N'bangprots@gmail.com', 1, 0, CAST(0x0000A05C0168DFDE AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'11110082', N'fe0ef60eb31a2779303bef19387abc51', N'Nam', N'Đặng Hoài', N'hoainam.legend@gmail.com', 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'11110083', N'345a484c98315926e22b66e7b6996139', N'Nam', N'Ngô Văn', N'ngovannam20081993@gmail.com', 1, 0, CAST(0x0000A05E009DAB00 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'11110147', N'fcc654f511f03f006711da3f8f750dee', N'Trí', N'Nguyễn Hữu', N'11110147@student.hcmute.edu.vn', 1, 0, CAST(0x0000A05C016580E9 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'giangvien1', N'4297f44b13955235245b2497399d7a93', N'Một', N'Giảng Viên', N'nguyenhuutrung@gmail.com', 1, 0, CAST(0x0000A05F013C38E2 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'sinhvien', N'c4ca4238a0b923820dcc509a6f75849b', N'Viên', N'Sinh', N'sv@gmail.com', 1, 0, CAST(0x0000A05B0181D4DC AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([Username], [Password], [FirstName], [LastName], [Email], [IsActived], [IsLocked], [LastLoginTime], [PasswordInvalidCount], [SecurityCode], [SecurityCodeEndTime]) VALUES (N'tutc', N'90e1c42e646a0c2bf44433db5e2b6b5b', N'Tú', N'Trần Công', N'tutc@fit.hcmute.edu.vn', 1, 0, CAST(0x0000A05E016DA301 AS DateTime), NULL, NULL, NULL)
/****** Object:  Table [dbo].[Subjects]    Script Date: 05/28/2012 20:20:16 ******/
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
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Subjects] ([ID], [Name], [IsDeleted]) VALUES (N'1179011', N'Cơ sở lập trình 1', 0)
INSERT [dbo].[Subjects] ([ID], [Name], [IsDeleted]) VALUES (N'olp2012', N'Olympic tin học', 0)
/****** Object:  Table [dbo].[Logger]    Script Date: 05/28/2012 20:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logger](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Time] [datetime] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Message] [ntext] NOT NULL,
 CONSTRAINT [PK_Logger] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Logger] ON
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (1, CAST(0x0000A05C0088B5BC AS DateTime), N'08110068', N'System.Exception', N'* Exception : User IP: 115.78.130.132
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (2, CAST(0x0000A05C0088B65C AS DateTime), N'08110068', N'System.Exception', N'* Exception : User IP: 115.78.130.132
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (3, CAST(0x0000A05C01374DA2 AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 123.22.94.144
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (4, CAST(0x0000A05C0150D883 AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 123.22.94.144
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (5, CAST(0x0000A05C01655026 AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 123.20.123.87
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (6, CAST(0x0000A05C01696576 AS DateTime), N'11110147', N'LOG', N'Bien dich that bai')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (7, CAST(0x0000A05C01696576 AS DateTime), N'11110147', N'LOG', N'Luu ket qua')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (8, CAST(0x0000A05C01696597 AS DateTime), NULL, N'System.Exception', N'* Exception : User IP: 118.69.171.51
* Exception : A potentially dangerous Request.Form value was detected from the client (SourceCode="#include <iostream>
using na...").
* StackTrace :    at System.Web.HttpRequest.ValidateString(String value, String collectionKey, RequestValidationSource requestCollection)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.ValidationUtility.CollectionReplacer.<>c__DisplayClass12.<ReplaceCollection>b__d(String value, String key)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyEvaluatedNameObjectEntry.ValidateObject()
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyValidatingArrayList.get_Item(Int32 index)
   at System.Collections.Specialized.NameValueCollection.GetKey(Int32 index)
   at System.Collections.Specialized.NameValueCollection.Add(NameValueCollection c)
   at System.Web.HttpRequest.FillInParamsCollection()
   at System.Web.HttpRequest.GetParams()
   at System.Web.HttpRequest.get_Params()
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.IsCallBack(HttpRequest request)
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.PreSendRequestHeadersHandler(Object sender, EventArgs args)
   at System.Web.HttpApplication.RaiseOnPreSendRequestHeaders()
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (9, CAST(0x0000A05C0169A651 AS DateTime), N'11110147', N'LOG', N'Bien dich that bai')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (10, CAST(0x0000A05C0169A656 AS DateTime), N'11110147', N'LOG', N'Luu ket qua')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (11, CAST(0x0000A05C0169A656 AS DateTime), NULL, N'System.Exception', N'* Exception : User IP: 118.69.171.51
* Exception : A potentially dangerous Request.Form value was detected from the client (SourceCode="#include <iostream>
using na...").
* StackTrace :    at System.Web.HttpRequest.ValidateString(String value, String collectionKey, RequestValidationSource requestCollection)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.ValidationUtility.CollectionReplacer.<>c__DisplayClass12.<ReplaceCollection>b__d(String value, String key)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyEvaluatedNameObjectEntry.ValidateObject()
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyValidatingArrayList.get_Item(Int32 index)
   at System.Collections.Specialized.NameValueCollection.GetKey(Int32 index)
   at System.Collections.Specialized.NameValueCollection.Add(NameValueCollection c)
   at System.Web.HttpRequest.FillInParamsCollection()
   at System.Web.HttpRequest.GetParams()
   at System.Web.HttpRequest.get_Params()
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.IsCallBack(HttpRequest request)
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.PreSendRequestHeadersHandler(Object sender, EventArgs args)
   at System.Web.HttpApplication.RaiseOnPreSendRequestHeaders()
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (12, CAST(0x0000A05C016A3951 AS DateTime), N'11110147', N'LOG', N'Bien dich thanh cong')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (13, CAST(0x0000A05C016A3951 AS DateTime), N'11110147', N'LOG', N'Luu ket qua')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (14, CAST(0x0000A05C016A3963 AS DateTime), NULL, N'System.Exception', N'* Exception : User IP: 118.69.171.51
* Exception : A potentially dangerous Request.Form value was detected from the client (SourceCode="#include <stdio.h>
void nhap...").
* StackTrace :    at System.Web.HttpRequest.ValidateString(String value, String collectionKey, RequestValidationSource requestCollection)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.ValidationUtility.CollectionReplacer.<>c__DisplayClass12.<ReplaceCollection>b__d(String value, String key)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyEvaluatedNameObjectEntry.ValidateObject()
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyValidatingArrayList.get_Item(Int32 index)
   at System.Collections.Specialized.NameValueCollection.GetKey(Int32 index)
   at System.Collections.Specialized.NameValueCollection.Add(NameValueCollection c)
   at System.Web.HttpRequest.FillInParamsCollection()
   at System.Web.HttpRequest.GetParams()
   at System.Web.HttpRequest.get_Params()
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.IsCallBack(HttpRequest request)
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.PreSendRequestHeadersHandler(Object sender, EventArgs args)
   at System.Web.HttpApplication.RaiseOnPreSendRequestHeaders()
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (15, CAST(0x0000A05C016B96CF AS DateTime), N'11110147', N'LOG', N'Bien dich thanh cong')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (16, CAST(0x0000A05C016B96CF AS DateTime), N'11110147', N'LOG', N'Luu ket qua')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (17, CAST(0x0000A05C016B96D8 AS DateTime), NULL, N'System.Exception', N'* Exception : User IP: 118.69.171.51
* Exception : A potentially dangerous Request.Form value was detected from the client (SourceCode="#include <stdio.h>
void nhap...").
* StackTrace :    at System.Web.HttpRequest.ValidateString(String value, String collectionKey, RequestValidationSource requestCollection)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.ValidationUtility.CollectionReplacer.<>c__DisplayClass12.<ReplaceCollection>b__d(String value, String key)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyEvaluatedNameObjectEntry.ValidateObject()
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyValidatingArrayList.get_Item(Int32 index)
   at System.Collections.Specialized.NameValueCollection.GetKey(Int32 index)
   at System.Collections.Specialized.NameValueCollection.Add(NameValueCollection c)
   at System.Web.HttpRequest.FillInParamsCollection()
   at System.Web.HttpRequest.GetParams()
   at System.Web.HttpRequest.get_Params()
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.IsCallBack(HttpRequest request)
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.PreSendRequestHeadersHandler(Object sender, EventArgs args)
   at System.Web.HttpApplication.RaiseOnPreSendRequestHeaders()
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (18, CAST(0x0000A05C016F01A6 AS DateTime), N'11110147', N'LOG', N'Bien dich thanh cong')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (19, CAST(0x0000A05C016F01AB AS DateTime), N'11110147', N'LOG', N'Luu ket qua')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (20, CAST(0x0000A05C016F01B9 AS DateTime), NULL, N'System.Exception', N'* Exception : User IP: 118.69.171.51
* Exception : A potentially dangerous Request.Form value was detected from the client (SourceCode="#include <stdio.h>
void nhap...").
* StackTrace :    at System.Web.HttpRequest.ValidateString(String value, String collectionKey, RequestValidationSource requestCollection)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.ValidationUtility.CollectionReplacer.<>c__DisplayClass12.<ReplaceCollection>b__d(String value, String key)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyEvaluatedNameObjectEntry.ValidateObject()
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyValidatingArrayList.get_Item(Int32 index)
   at System.Collections.Specialized.NameValueCollection.GetKey(Int32 index)
   at System.Collections.Specialized.NameValueCollection.Add(NameValueCollection c)
   at System.Web.HttpRequest.FillInParamsCollection()
   at System.Web.HttpRequest.GetParams()
   at System.Web.HttpRequest.get_Params()
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.IsCallBack(HttpRequest request)
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.PreSendRequestHeadersHandler(Object sender, EventArgs args)
   at System.Web.HttpApplication.RaiseOnPreSendRequestHeaders()
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (21, CAST(0x0000A05C01729E63 AS DateTime), N'11110147', N'LOG', N'Bien dich thanh cong')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (22, CAST(0x0000A05C01729E63 AS DateTime), N'11110147', N'LOG', N'Luu ket qua')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (23, CAST(0x0000A05C01729E6D AS DateTime), NULL, N'System.Exception', N'* Exception : User IP: 118.69.171.51
* Exception : A potentially dangerous Request.Form value was detected from the client (SourceCode="#include <stdio.h>
void nhap...").
* StackTrace :    at System.Web.HttpRequest.ValidateString(String value, String collectionKey, RequestValidationSource requestCollection)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.ValidationUtility.CollectionReplacer.<>c__DisplayClass12.<ReplaceCollection>b__d(String value, String key)
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyEvaluatedNameObjectEntry.ValidateObject()
   at Microsoft.Web.Infrastructure.DynamicValidationHelper.LazilyValidatingArrayList.get_Item(Int32 index)
   at System.Collections.Specialized.NameValueCollection.GetKey(Int32 index)
   at System.Collections.Specialized.NameValueCollection.Add(NameValueCollection c)
   at System.Web.HttpRequest.FillInParamsCollection()
   at System.Web.HttpRequest.GetParams()
   at System.Web.HttpRequest.get_Params()
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.IsCallBack(HttpRequest request)
   at DevExpress.Web.ASPxClasses.ASPxHttpHandlerModule.PreSendRequestHeadersHandler(Object sender, EventArgs args)
   at System.Web.HttpApplication.RaiseOnPreSendRequestHeaders()
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (24, CAST(0x0000A05C018A52DE AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 118.68.208.40
* Exception : A public action method ''login'' was not found on controller ''SPKTOnline.Controllers.AccountController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (25, CAST(0x0000A05D00E118CB AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 123.30.165.55
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (26, CAST(0x0000A05D01106A93 AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 118.68.238.170
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (27, CAST(0x0000A05D017D106C AS DateTime), N'08110142', N'System.Exception', N'* Exception : User IP: 113.173.25.175
* Exception : A public action method ''ManageRole'' was not found on controller ''SPKTOnline.Controllers.AccountController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (28, CAST(0x0000A05D017D2709 AS DateTime), N'08110142', N'System.Exception', N'* Exception : User IP: 113.173.25.175
* Exception : A public action method ''DeleteSubject'' was not found on controller ''SPKTOnline.Controllers.SubjectController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (29, CAST(0x0000A05E0099C4DB AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 113.187.1.14
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (30, CAST(0x0000A05E0099CBBE AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 113.187.1.14
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (31, CAST(0x0000A05E009E37C6 AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 113.172.113.22
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (32, CAST(0x0000A05E009F655D AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 113.187.1.14
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (33, CAST(0x0000A05E00A3DF63 AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 222.253.103.229
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (34, CAST(0x0000A05E00B8F3CC AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 123.23.224.178
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (35, CAST(0x0000A05E00BC3E98 AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 118.68.165.170
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (36, CAST(0x0000A05E00C225EE AS DateTime), N'', N'System.Exception', N'* Exception : User IP: 123.20.71.176
* Exception : A public action method ''About'' was not found on controller ''SPKTOnline.Controllers.HomeController''.
* StackTrace :    at System.Web.Mvc.Controller.HandleUnknownAction(String actionName)
   at System.Web.Mvc.Controller.ExecuteCore()
   at System.Web.Mvc.ControllerBase.Execute(RequestContext requestContext)
   at System.Web.Mvc.ControllerBase.System.Web.Mvc.IController.Execute(RequestContext requestContext)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<>c__DisplayClassb.<BeginProcessRequest>b__5()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass1.<MakeVoidDelegate>b__0()
   at System.Web.Mvc.Async.AsyncResultWrapper.<>c__DisplayClass8`1.<BeginSynchronous>b__7(IAsyncResult _)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.End()
   at System.Web.Mvc.MvcHandler.<>c__DisplayClasse.<EndProcessRequest>b__d()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (37, CAST(0x0000A05F013BFAEA AS DateTime), N'', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (38, CAST(0x0000A05F013C106A AS DateTime), N'', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (39, CAST(0x0000A05F013C10C7 AS DateTime), N'', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (40, CAST(0x0000A05F013C266D AS DateTime), N'', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (41, CAST(0x0000A05F013C26D5 AS DateTime), N'', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (42, CAST(0x0000A05F013C3A89 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (43, CAST(0x0000A05F013C3AF9 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (44, CAST(0x0000A05F013C46D6 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (45, CAST(0x0000A05F013C474C AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (46, CAST(0x0000A05F013C4F50 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (47, CAST(0x0000A05F013C4FB9 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (48, CAST(0x0000A05F013C5E4C AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (49, CAST(0x0000A05F013C5EB4 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (50, CAST(0x0000A05F013C7A08 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (51, CAST(0x0000A05F013C7A78 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (52, CAST(0x0000A05F013CBC07 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (53, CAST(0x0000A05F013CBC8E AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (54, CAST(0x0000A05F013CC466 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (55, CAST(0x0000A05F013CC4CA AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (56, CAST(0x0000A05F013CCD49 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (57, CAST(0x0000A05F013CCDAE AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (58, CAST(0x0000A05F013D3B0E AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (59, CAST(0x0000A05F013D3B6F AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (60, CAST(0x0000A05F013D40BC AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (61, CAST(0x0000A05F013D40CD AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : File does not exist.
* StackTrace :    at System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)
   at System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)
   at System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (62, CAST(0x0000A05F013D4120 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (63, CAST(0x0000A05F013D41F6 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : File does not exist.
* StackTrace :    at System.Web.StaticFileHandler.GetFileInfo(String virtualPathWithPathInfo, String physicalPath, HttpResponse response)
   at System.Web.StaticFileHandler.ProcessRequestInternal(HttpContext context, String overrideVirtualPath)
   at System.Web.DefaultHttpHandler.BeginProcessRequest(HttpContext context, AsyncCallback callback, Object state)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (64, CAST(0x0000A05F013D57E5 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
INSERT [dbo].[Logger] ([ID], [Time], [UserName], [Type], [Message]) VALUES (65, CAST(0x0000A05F013D5855 AS DateTime), N'giangvien1', N'System.Exception', N'* Exception : User IP: ::1
* Exception : The controller for path ''/Scripts/jquery-1.4.4.js'' was not found or does not implement IController.
* StackTrace :    at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.<>c__DisplayClass6.<BeginProcessRequest>b__2()
   at System.Web.Mvc.SecurityUtil.<>c__DisplayClassb`1.<ProcessInApplicationTrust>b__a()
   at System.Web.Mvc.SecurityUtil.<GetCallInAppTrustThunk>b__0(Action f)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust(Action action)
   at System.Web.Mvc.SecurityUtil.ProcessInApplicationTrust[TResult](Func`1 func)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)
')
SET IDENTITY_INSERT [dbo].[Logger] OFF
/****** Object:  Table [dbo].[Languages]    Script Date: 05/28/2012 20:20:16 ******/
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
/****** Object:  Table [dbo].[File]    Script Date: 05/28/2012 20:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[File](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[Type] [nvarchar](50) NULL,
	[Content] [varbinary](max) NULL,
	[Length] [varchar](max) NULL,
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[File] ON
INSERT [dbo].[File] ([ID], [Name], [Type], [Content], [Length]) VALUES (1, N'Bai1.docx', N'.docx', 0x504B030414000600080000002100DC66FBFE9001000039060000130008025B436F6E74656E745F54797065735D2E786D6C20A2040228A000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B454C96EC23010BD57EA3F44BE5689A187AAAA081CBA1C0B52E90738F604DC7A936DB6BFEF2440545142A402974889F396797999C168AD55B2041FA43539E9673D9280E1564833CBC9E7F42D7D244988CC08A6AC819C6C2090D1F0F66630DD380809A24DC8C93C46F74469E073D02C64D681C193D27ACD22DEFA19758C7FB319D0FB5EEF81726B229898C68A830C072F50B2858AC9EB1A1F6F9D14D290E479FB5E259513E69C929C45344A97461C88A4B62C250761F942237566158C8B2FE091D0A3FC2B5D1EF04B5DF95BA7D5C9718C07150E401DA676536788AC8D87B974E10EA36951A84EDAA7DEE1C6F8B9BC14904C988FEF4C63367465BDA0CDF0A769BAC3ABD89CB71C42C01E689535CC9A49B3F7DFEAC32C74011E91D9C58D34D49D2642DC28089777B0E53D258F614DBC75816239CED687EA97102052FC1E0E7C94D0F4A735FF003162FAD7187EC77C6AFCBA8A111701D0FADA3F3B839AA653B2C46531658582B3F5FED4BFA1EE34B182E2E36AE9FF223F65A4E91FB7FE1F61EC7756853ED23A5A2FFEE10F000000FFFF0300504B0304140006000800000021001E911AB7F30000004E0200000B0008025F72656C732F2E72656C7320A2040228A0000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C92DB4A03410C86EF05DF61C87D37DB0A22D2D9DE48A17722EB038499EC01770ECCA4DABEBDA320BA50DB5EE6F4E7CB4FD69B839BD43BA73C06AF6159D5A0D89B6047DF6B786DB78B075059C85B9A82670D47CEB0696E6FD62F3C9194A13C8C31ABA2E2B38641243E226633B0A35C85C8BE54BA901C4909538F91CC1BF58CABBABEC7F457039A99A6DA590D6967EF40B5C758365FD60E5D371A7E0A66EFD8CB8915C807616FD92E622A6C49C6728D6A29F52C1A6C30CF259D9162AC0A36E069A2D5F544FF5F8B8E852C09A10989CFF37C759C035A5E0F74D9A279C7AF3B1F21592C167D7BFB4383B32F683E010000FFFF0300504B030414000600080000002100AEFDCE0339010000CB0400001C000801776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C7320A2040128A0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AC94414EC3301045F748DC21F29E382950106AD20D42EA0A09C2019C649218623BB2A794DC9EA15593566DC3C6CBF996FF7F9AF178B1FC516DF00DD649A3131687110B4017A694BA4ED847F672F3C802874297A2351A12D68363CBF4FA6AF106AD40BAE41AD9B9805CB44B5883D83D71EE8A069470A1E940D34965AC1248A5AD79278A2F51039F45D19CDB430F961E7906AB32617655527ED67794FCBFB7A92A59C0B329D60A349E89E0485C4086C2D68009DB963B310E0994F1F30CB73E191C205277DD88B157A6101E7C2254466326F2F6A01583340531F309E1B06FE9310DC3D8D553F1B1CF78BD5639581AC44830485310739F10A685D7FC130A1C2180B0CABFF5737C388DC35CEA4B8FF3DE279054B49C238C82520ABE15E370A3AA4B0C773E193690BF9FECC881B89F0E3FFA82D25F000000FFFF0300504B030414000600080000002100AD2AFCBD3F070000AF1A000011000000776F72642F646F63756D656E742E786D6CCC58CD8FD34614BF57EAFFF0E44A15486CE204B2EC1A127645A88A4ACBAAD0AF1372EC493CC49E31E3713E7AAA84AA1EAAAAE554F5065A5124DA15A8AD54293970F06AFF0FF72FE99B192724259B26B40BECC1B167DEBCF9CD7BBFF7317BF1D2200AA147444239AB5B95926D01611EF729EBD4AD4F6EBEB7B16541225DE6BB2167A46E0D49625D6ABCFDD6C5BEE3732F8D0893802A58E2F47036903276CAE5C40B48E426251E1386936D2E2257E2A7E894235774D378C3E351EC4ADAA22195C372D5B637AD420DAF5BA9604EA16223A29EE0096F4BB5C4E1ED36F548F133592156D9D7AC6C1690F58E654142C4C05912D03899688B5E561B1E319828E92D3B442F0A2772FD7895DD7CE1F6D11F516860F7B9F063C13D922438DA3493538D157BD9DE8501958AE98A5520CCEF394112B9944DD52876FCC3FF53E795D07965B37759A97A7E10B44503B9D4E2FE50FDC6D077908BFEC775CBB6ABDB9BD5DAAE3519DA4347BF30D8246D370DE58B337B33434AB358A846CDC8C6E58043948F7F92E067FB43F0B2071E24F9F81EB04E3ACC1E331CF91D189C62EF86F20292F534C4413E7AC440E6E30307762F969516F514CBB7127B5A00E34DEE86B4C31053CF0DEB5692B6124FD0585A65A3C6C8C986BDB26AD9387392402A6B01F9EBAB9F4B270A876DAC03A8044DE5D7C37BD93E78E8EBC37B474FF3F1BE079D7CFC1D8530BB0FF2F02EEBA0BF039A3D8EF0371FFD2981E5A367E9495A95AE750CC5BE13E41A5DDDC52A573B49EC7A18F3B12009113D6235606505BC759B7812D9EF0FDCEB8262A9D9DEDE5681EE0F8BEFB3551B1343CF49023726721813A07EDDBA35B0F1EF963C5FB3C0E3984812FA2542A856366DFB8C7E5AC01118E60325C21D04D726C2247A55A0A405587782BA15ED9CDBA985F8A85476B6CDA3362016B4691812DCA9ADCA9EE05DF3AE91E84FB8CD294BE4304465119544A888ED39AAC4A5A19BE8772077B096D236849411959F19C47440C26BF8F919F5650076B1CA482669043B3654160CDB60C34E654E1A53BF0F3B5514AF2E183F0BDA0C6643BDD9BF09BD4F6827D089078F310708212D58BC79CCCEE797EFAC0FB955C8CC9FDF9C686EFD71A02AF6AC86F2BCE19567D1E7642045AAFA19DED57EEC08D7A7D8A7682AA9312401773CCE18725051AB6E097C5347E54EC8BD2EF4948EBA457C8AA26E12E3AC509D825AAA12F40C2DA71C9DE527ADD855A49FD1FDCE2C690BE6F4150B9CCD6A2C2F04DAFC4ED52ED935CCFF888C2B6E69F2D3C8ED10DF952E0847D15F5CF535AB25955A66068BC27EFDDA95EB26B06EEA535D895AC4B7604FF0CED566DDBA7227D5ED4EA979E3C39BE72CB8A1424B4D14000BD48AB0BBFACC75EB3267122D6781D1AB852B67B7B72AB52DBB56B59EC3DAD476E93B26B0572985BA6D5C90434EBD1919AEA192ED79740A56FBD25C5EC32A1FBFB6566571E2FD227B9C82871D49EAC007341FDF8D00090B03129986665AF8541FB36AF1EB06D91FAC73093ED24550AD9C33C3B28EAA68735A8A9F2837696606693E7A280191E9E66A9DDAB7F8DC678A0A6DA0820CB25FE1F926FF156E2F1F7F8B76CC0E80A2D19475416277C056D67B1CC5BBE821D53AFE3251ABBBCEE921F2F1F72EC8EC8005D8AC688BADBCE331865F3BA494E7B0355DB94D5DA78F3906E34B35376BE35CD992B2F106457DA3998F9F6037918FBF49A197DDE70E1CFE50B4B00C2972101B3AB5B2FBD86A04D941A46F2C98111E22674536F28005474F21715367CE02279FCB6213FC2C8DCC0B0D7BE1E4D6A3BB80BE837357FDC9D85651488A050AA059B8ECFED6CC7EC3E67D3646754F6FAE74731739FFE8E9D10394F5D3219A44071783964A9929F8F8F33533B969E67E878975FCC8358974F75593E2159A4F524CF448A480706DBDC212932BF029B4E68FD458475D9003B49F9B427680D724634863EE6EC0F3D13E9A588A7CF484754E43A8AFCAA1E6AB2C54BF29F65DC2AAC52567361285EBC0E7D39A16A9E0C30A84697B2EC65EA2502E22EE94B02B2B3FAEFCA81B30527EF44C4287660F94A354A1D30567D21CBC6A9E2FF143E353ACC07E3E7EF89A52D7827AB54A565AB04CFD9368963F2A93CF79F3FF4CC77F030000FFFFC4546B4E834010BE0AE102A5BC6A49D94453F59709B127E0B13C92A54B9641D40B781C0FD0D3F4260E4B57A1624C23897FC8CE37B3DF7CB3CC4CEB89BA48025F370C73ED9ACEB54E3688693DFE1888330F68CF25F3EA2A8CA9AF5782D6543C519DB8DA66D17A40BAAFF885218C162A0EA3AB2EBA52F906D9143492A0C02D4DC386C1F7F03F57B2BCB4122C7BFA4DACD9989CD9982EFE4F3F5667CFA6693566FACF9E10816C5ED5A0BD05647B3CBC6BAC381EDE1A4D84A34E9F547B73EBDE596B7DCE6625F664DA9AC6107C4E6B370EE3DC3BF40F50396BD9EE1595B5BEBE344DDBE854E67876AEF08C8389C3983D841D25F00A71BB0F114596239332230EC0CB2F9BD174E0CD699850DC1C2B53D2A79CC3C0CC1A90E6295DCC598DD94E2BA5BB2255243CBE1745821E56EC6950408C2A2D577AF1D1FBC2E51E8978F2220F78A529E91EC807000000FFFF0300504B03041400060008000000210096B5ADE296060000501B000015000000776F72642F7468656D652F7468656D65312E786D6CEC594F6FDB3614BF0FD87720746F6327761A07758AD8B19B2D4D1BC46E871E698996D850A240D2497D1BDAE38001C3BA618715D86D87615B8116D8A5FB34D93A6C1DD0AFB0475292C5585E9236D88AAD3E2412F9E3FBFF1E1FA9ABD7EEC70C1D1221294FDA5EFD72CD4324F1794093B0EDDD1EF62FAD79482A9C0498F184B4BD2991DEB58DF7DFBB8AD755446282607D22D771DB8B944AD79796A40FC3585EE62949606ECC458C15BC8A702910F808E8C66C69B9565B5D8A314D3C94E018C8DE1A8FA94FD05093F43672E23D06AF89927AC06762A049136785C10607758D9053D965021D62D6F6804FC08F86E4BEF210C352C144DBAB999FB7B4717509AF678B985AB0B6B4AE6F7ED9BA6C4170B06C788A705430ADF71BAD2B5B057D03606A1ED7EBF5BABD7A41CF00B0EF83A6569632CD467FADDEC9699640F6719E76B7D6AC355C7C89FECA9CCCAD4EA7D36C65B258A206641F1B73F8B5DA6A6373D9C11B90C537E7F08DCE66B7BBEAE00DC8E257E7F0FD2BADD5868B37A088D1E4600EAD1DDAEF67D40BC898B3ED4AF81AC0D76A197C86826828A24BB318F3442D8AB518DFE3A20F000D6458D104A9694AC6D88728EEE2782428D60CF03AC1A5193BE4CBB921CD0B495FD054B5BD0F530C1931A3F7EAF9F7AF9E3F45C70F9E1D3FF8E9F8E1C3E3073F5A42CEAA6D9C84E5552FBFFDECCFC71FA33F9E7EF3F2D117D57859C6FFFAC327BFFCFC793510D26726CE8B2F9FFCF6ECC98BAF3EFDFDBB4715F04D814765F890C644A29BE408EDF3181433567125272371BE15C308D3F28ACD249438C19A4B05FD9E8A1CF4CD296699771C393AC4B5E01D01E5A30A787D72CF1178108989A2159C77A2D801EE72CE3A5C545A6147F32A99793849C26AE66252C6ED637C58C5BB8B13C7BFBD490A75330F4B47F16E441C31F7184E140E494214D273FC80900AEDEE52EAD87597FA824B3E56E82E451D4C2B4D32A423279A668BB6690C7E9956E90CFE766CB37B077538ABD27A8B1CBA48C80ACC2A841F12E698F13A9E281C57911CE298950D7E03ABA84AC8C154F8655C4F2AF074481847BD804859B5E696007D4B4EDFC150B12ADDBECBA6B18B148A1E54D1BC81392F23B7F84137C2715A851DD0242A633F900710A218ED715505DFE56E86E877F0034E16BAFB0E258EBB4FAF06B769E888340B103D3311DA9750AA9D0A1CD3E4EFCA31A3508F6D0C5C5C398602F8E2EBC71591F5B616E24DD893AA3261FB44F95D843B5974BB5C04F4EDAFB95B7892EC1108F3F98DE75DC97D5772BDFF7CC95D94CF672DB4B3DA0A6557F70DB629362D72BCB0431E53C6066ACAC80D699A6409FB44D08741BDCE9C0E4971624A2378CCEABA830B05366B90E0EA23AAA241845368B0EB9E2612CA8C742851CA251CECCC70256D8D87265DD96361531F186C3D9058EDF2C00EAFE8E1FC5C509031BB4D680E9F39A3154DE0ACCC56AE644441EDD76156D7429D995BDD88664A9DC3AD50197C38AF1A0C16D684060441DB02565E85F3B9660D0713CC48A0ED6EF7DEDC2DC60B17E92219E180643ED27ACFFBA86E9C94C78AB90980D8A9F0913EE49D62B512B79626FB06DCCEE2A432BBC60276B9F7DEC44B7904CFBCA4F3F6443AB2A49C9C2C41476DAFD55C6E7AC8C769DB1BC399161EE314BC2E75CF8759081743BE1236EC4F4D6693E5336FB672C5DC24A8C33585B5FB9CC24E1D4885545B58463634CC5416022CD19CACFCCB4D30EB45296023FD35A458598360F8D7A4003BBAAE25E331F155D9D9A5116D3BFB9A95523E51440CA2E0088DD844EC6370BF0E55D027A012AE264C45D02F708FA6AD6DA6DCE29C255DF9F6CAE0EC38666984B372AB5334CF640B37795CC860DE4AE2816E95B21BE5CEAF8A49F90B52A51CC6FF3355F47E0237052B81F6800FD7B802239DAF6D8F0B1571A8426944FDBE80C6C1D40E8816B88B8569082AB84C36FF0539D4FF6DCE591A26ADE1C0A7F669880485FD484582903D284B26FA4E2156CFF62E4B9265844C4495C495A9157B440E091BEA1AB8AAF7760F4510EAA69A6465C0E04EC69FFB9E65D028D44D4E39DF9C1A52ECBD3607FEE9CEC7263328E5D661D3D0E4F62F44ACD855ED7AB33CDF7BCB8AE889599BD5C8B3029895B6825696F6AF29C239B75A5BB1E6345E6EE6C28117E73586C1A2214AE1BE07E93FB0FF51E133FB65426FA843BE0FB515C187064D0CC206A2FA926D3C902E907670048D931DB4C1A44959D366AD93B65ABE595F70A75BF03D616C2DD959FC7D4E6317CD99CBCEC9C58B34766661C7D6766CA1A9C1B327531486C6F941C638C67CD22A7F75E2A37BE0E82DB8DF9F30254D30C1372581A1F51C983C80E4B71CCDD28DBF000000FFFF0300504B030414000600080000002100A97878AE120200003803000015000000776F72642F6D656469612F696D616765312E776D668C53CF6B1341147E339B84368DEE266D0F85A271D1FEA23154102A08669B2CE612092645F1B2AEBAEA627E487ED0EE4969A1142F69AF3DF97788072FF566AF52F020789722EB45C1F8BD49B458119C1D66BE79F366BEF7BE79FBFEDDDB3D522D172329461996EF0802D0760591A40DB51BC528050CC448C87EBFAFD0453135B48D4900654B4892B9D8385633319DA609BE7DA21219B0BC01DEE7758C681FD78D0DBD1254723B8FABC1530FFCEA9651BE4F32DB84BC2BCE6BD340DFE5F31F98D07638140ECFA8FA75AF9DBEE1ADA56F36EB6E83960F5314140FBBB9DD0FDDAFC6C3D908DC32F03E85F9529C0FB1656E6971FE09BDA4DB82B45F1CD7C4490E45F2DF1C42DD7C84434C33E0E224FC46A01DB364A0C85F9908CEA412D4EF356BD4B54EC7AF7CF466E8EA3F32E1F88FF0167FB29807AF900BBF16ABFEEDB79EABAB9F292AD00B9552F532D1F82DBF61D56A2B6EDBBF9F6F3EF0CAEE23AF4DC9E8491D93DA309E6434DFECB67CAFC522533252AAA6EDF54ECBA5148D9CCBDABD42D62A87867EDDB1CA5FCE9E019ED42D0AEDF042D85B71800C3DCF53CF0E179C62D853961CE667456C590B4EC1B143EE969E10844FA2410E810C35AC916D1CF244B6C834256DFA0C47CC0314E61CBCB697306C2C62D86C309A47FEC735C5953728141AAA3EC1958DF65A552BB8CC4AD0EE78759AE55AE197CBD20B8D3DF8DCF6A7947AD30C6219A88EDF8237E927000000FFFF0300504B0304140006000800000021006D7E193E49020000000E00001E000000776F72642F656D62656464696E67732F6F6C654F626A656374312E62696EEC544B6FD34010FE6C2710A24A790039201E261212542805440F5C50DDC4A51C52A23612C7C82D068C12BB794173426A25C42DE227F00F00893BE2CEE327C0852307E42B0DDF244E14F580DC2A9740C6DE99D99DD99DD9999DF9FA25F5EDF5DB33DF71006E43C37EEF048E8DAD2BE465F42109A86464BEDFEBF5FA6B446467304511F84D5F23410EA301957CCEE0FF88C03A3C7E2DE830E19236D0199672289A417454F3D20FB4CF82810F7D8C950119E0379957EF6BB94F8AC6E9D2408DFDE31EAAB0C7D50EC5C7A12AE3990ABBF954A0A820CFFBD7B04D3F36F124ECF6915E9AF6A507CA9DC48F91E02F8CE83B815C0BECDE65F41FD293C382D817BB52C361ED8BAFC3BE2EB52EA9102A437A80C88E73C48275397706FF6604F81655C9F35141E1CBD1E283B777B0F6333CB468B51E973BDBB6BE98BBA69BF5B6D5723C1773E312730509CE87C25C61A358BE09FFD6BB7A28A734C8DB3F2A9CE54615E73EFE24DDF991EE1F53C00D94C84715FEE2CD2270F2BEE31AD5EAB2D574B6F2DE03BB643DB29B4845CB4ECD6EEA6BF6337DDDAB592E52DA46A7B6E95529CA7BED866337448854A458D6CD9D56C3421AB18B0B66B7B06094FC64E24EC528FDBA709EFCE98401DFF42FF9DDE50AB964222FA46BFAF39555BFDB5F59227DBE4A91315F29544C5F7E2331A7B08B2A2A813751D88D34CE1993B80235F202D9AC8A3D47D85896CD79F732B55E5E27DABD4A64A28E362C767E87DDC7858EB560F6345457D679C6786584C983E48BCE4D0C0E6B7F62868383A6D9FE9E2B2FE1CAA443323B6F4A22F0070000FFFF0300504B03041400060008000000210048551D59370300000408000011000000776F72642F73657474696E67732E786D6C9C55DB8EA338107D5F69FF01F1BCE9002190A0498F02097B51F7EE6833F301069CC46ADF643B4967BF7ECB80876E8D7734DA27EC73AA8EABECAAE2C3C75746832B569A08BE09E387280C306F4547F869137EF95CCF5661A00DE21DA282E34D78C73AFCF8F8F34F1F6E85C6C680990E4082EB426CC28BE2856ECF98213D63A455428BA399B58215E278242D1E3FE1E8A136E1D91859CCE7A3D383909883DA5128868C7E10EA341F3C77A2BD30CCCD3C89A26CAE30450602D66722B55363FF570D8E3A3B91EBF792B832EAEC6E71F43DCB31DD9B50DD578F1F09CF3A48255AAC35DC2CA343BA0C11EE6434FD119DE13E9F48A390BABF11798467FB470816DC0A89550B170A6F9E44E1DC121D3EA20B359F5173304282C915C161B9A3DB3352A835581D246A21BA4A70A30475769DF853984A30A920F841101E5E22D36B437D75DA1E62177F0B619C5B1425EB2C596E070FCB4E4C9446CB55EA65AA45B6F6FAC45954AF639F4FBC5F447EB5FF8E20D9667559FAD4D272B9AA567E264BB7B58F596DF368BBF33275926D173E665DE6C9C27B07EB5DB2DB7BD5CA5D5E25DEA8CB7D562FD6BE73CA7D5EF9992A8ACADC9BE92E4A578937B65D96E49537B67D1E47A5D767BFCDF32CF7C5562769B4F746509749BCEAF3990FA50535C60ADBD09F945BD550A7011B8AB942AC510405CFB6E5A13059D1A8979270C73718460F7ECB1C2E8D2367B381D00C515A432F3802BA7D603AA2E50E1F7B61FA8CD46952EE7B8C15CA8B42E7FDF155CD762556BF2A719183EA4D21F93BEF007607C6693AEA116E9E0873B8BE3407E7C5A1F3DF5017DEFD755556703E5DD0AD3030ACB1BDA127C44FAEF3309F7D3958D35BD15275B0031D3F2329A1E9C1A439C59B9092D3D9C4216C0DEC3AA45EFA4D734A462EE939D859AEDFA0D66606D6E3C21A0C4BB01A1713B670D862C25287A513B674D872C2328765163BDF61D451C25F6070BAA5C58F825271C3DD6F0EDC84DF40C325E8339218DED54E47283051F4C0382E75702DF02BCC51DC1103FF4A493A865E3761122DFB371AAD29BA8B8B79676B95ACB17C87061D3208A672FF54EF9CE1E9E0A7FB3E163BB55B020579B8B3661AC60F43E0946873C012E6B6110A52EE07FA2FBDF2F4FB7EFC170000FFFF0300504B0304140006000800000021004AD88A92BB0000000401000014000000776F72642F77656253657474696E67732E786D6C8CCEC16AC3300CC6F17B61EF10745F9DF5304A485228A32FD0F5015C47690CB164246DDEF6F4356C97DD7A149FF8F1EF0F5F696D3E5134320DF0B26DA1410A3C45BA0D70793F3DEFA151F334F9950907F84685C3F8B4E94B57F07A46B3FAA94D55483B196031CB9D731A164C5EB79C91EA36B3246FF5949BE3798E01DF387C242473BBB67D7582ABB75AA04BCC0A7F5A79442B2C53160EA85A43D2FAEB251F09C6DAC8D9628A3F7862390A17457163EFFEB58F77000000FFFF0300504B0304140006000800000021000F74B7A9FD0900009B5200000F000000776F72642F7374796C65732E786D6CCC5CD172DBB6127DEF4CFF81A3F7D4B6244B89A74AC7719AC633899B46F6DC678A822CD614A992541CF7EBEF620142102988BB229CFAC536410207D83D380BC05CFEFADBF755127C13791167E9A477F6CB692F106994CDE3F47ED2BBBBFDF0EA752F28CA309D8749968A49EF4914BDDFDEFEFCD3AF8F1745F99488228006D2E2229FF49665B9BE383929A2A55885C52FD95AA4706F91E5ABB084CBFCFE245B2CE248BCCFA2CD4AA4E549FFF47474928B242C01BC58C6EBA2A75B7BA4B4F698E5F3759E45A228A0B7AB44B5B70AE3B4F716BA37CFA2F762116E92B29097F9975C5FEA2BFCF5214BCB2278BC088B288E6FA1E330C4559C66F9C7CBB4887B704784457959C4E1A4771BAF60B837E231F89AADC254DE5CCAA7F6568B8AD26AED5D3C8F7B2712B1F817AA7D0B9349AFDFAF4AAE640F76CA9230BDAFCA44FAEA6EBADB135334837627BD307F35BD948D9DE030ABDFD670D73B83872BECCA3A8CC07080132E4A010E047F489C24968EEE8F47D5C5D74D0205E1A6CC340836006076B37059B338F815BC3C552C81BB62F1298B1EC47C5AC28D490FB1A0F0EEFA4B1E67795C3E4D7A6FDE484C289C8A55FC319ECF8524A52EBB4B97F15CFC6F29D2BB42CCB7E57F7D408AE916A36C9396D0FDD118599014F3DFBF47622D29064DA7A1F4F08DAC90C8660B0B073BB489B7BD510535542CFCA7823C533EDC8BB214A19C4601F6FF4700F5E5881A0360F575D0BD8961F726CEBB3781E4ED668B71BD17484E9639413C773DC26F026BD803A137516691229F5D7DF0E60065658D068B5A6B3448D35AA3C191D61A0D4AB4D66830A0B546C3E1AD351AFE6DADD170E7C11A5188C25567D100AD4162E26D5C2642D63F2840671DA54E879AE04B9887F779B85E0632B0D6BB7D482CA79B5949EB2ACAE9E668559E967996DEB75A04A2B39CBA47C3FCBE5A2FC32286154D8BE9FB1D4D7F1BCE1211FC91C7F356A87345BEC6987061B237847D49C2482CB3642EF2E0567C571E65D4BFC982A95A65B476AEA35B3FC5F7CB32982E31E4B6828D1C46775B42B5FF292ED0060727D3C83194B6C6493E1C3978E96EFCB398C79B55651AC26A64A4F49CE1E61A0476F1B08986D245CDD9D53A0AE900CA1054B8E00F01DB27F45F05177EFBD2C794FEAB507464FB84FEABC07564FBC88FC3FE652BCDFB307F0848D36BCC9EBB575992E58B4D52CD81567918B367B081A00D813D894DFB249118B367F08E7C069751043B370A4FD9BED8EA280385ED0E8582938D3E16B6536AB277C61811DB4135AC3E03AB9BD63280D8A2FB557C8BE5C1133718A04A9BB566EB741E382C002188B486FE6B9395ED6BE8BE43F3A828D7291C971422A0A10D1C338F8AA6F9A4E21DC3C7DD021F03A85B046400750B850C20073FDC6B1E1313E920DD8323038B2DCB268A21EDC8CA3C662BB301E285004F7193B0FE72CC5E37179A719380C27650336E1250D8DEA9C53213370958DEE22601CB1135DC3EB23595332876DCB481CC4A8030223FE24D00F223DE04203FE24D00EA2EDEED20FEC49B80C5D606A3A9B6781380F011CE56DF00D9E24D00626B83523B7D6654C53D6CE5F0E6D683781350D80E6A8A370185ED1D977813B0F0110E136A5846EA08587EC49B00E447BC09407EC49B00E447BC09407EC49B00D45DBCDB41FC8937018BAD0D46536DF12600B1E5C100D9E24D00C24738DAB057BC71D63FBB781350D80E6A8A370185ED9D9AA09A452A018BEDA01A96116F02163EC22183C642727306E547BC0923F223DE04203FE24D00F223DE04A0EEE2DD0EE24FBC09586C6D309A6A8B3701882D0F06C8166F02105B1BF68A374EC667176F020ADB414DF126A0B0BD531354A373042CB6836A5846BC0958C897CEE24D00C2478E05E28CC88F781346E447BC09407EC49B00D45DBCDB41FC8937018BAD0D46536DF12600B1E5C100D9E24D00626BC35EF1C639F2ECE24D40613BA829DE0414B6776A826AC49B80C576500DCB481D01CB8F78138090989DC59B00848F1C0184B388E3263FE24D18911FF126007517EF76107FE24DC0626B83D1545BBC09406C793040B6781380D8DA20DFB385F745C9AFA79E3948407DCFA07AAB810CD87738890AA807F8552C440E994CA2FDED908E80D50819880E7A5087F82ECB1E02DA8BDD030741C850F12C89337CA5FB09DFD2B1D26306E3039904B77F5E051F55024CA31E526AF7CD1BC81EB2D385303D49260E413FCBA735A4ECACAB37CB656B902024F3BA740A10E6A15D4342904EEB9195659E0F3C884955BA18FF6FAB51F16FC8799B57CF9C9E0EDF8D86971FD48820574C3692EF6487B913C0F6DE898A6631C25A1960430967256DE1485AC66E46ABAD7B86694EF678B7794788370B215BEA4F99FCD4B0460AAF74EF2B870CB087AABC82B95A86B9B28EDB86AF2FC7A797EFD5533AC9EC4188F50DC06057D2CD4A5916FEB836B6471A8115CCDDC224A6CD04A40F82F7FB43FC9F9BCE53536F6FAB34B5C1F662374DEDF1E2EFA81A837C9B51E8DE679B52D6FCF42DA9EE9E6A2FE81E3B9C7F99C72A650C73FE263D732D1DAD2E94B9D5CFAB027F3F88DC587E6012FE2A6478310D9F2AFEDDA600AAA73A92A2EF2485EE831F52F4BD92224EB63ED1A9223F9827B3AC5C2A8F3459823D02B73C074B626441AC39B315882D63B6FCE8BFD674459E42878E118D81931F03357E3FFC183C1B3F348D5F103FB047CFC40F8B112856E0744B31FA230F8C183A19A135CA0F2386CFC6084DDC17C408EC518311B39DF8D0E2591F73FDDCE9D9739F73FDFC48CF9AA86FCBBFE6DC0B7226F6A8C5992E195792FD0C9376E4742D4AC2E3859F493BF2E95A4DBA1FE2DA661447F4861BEB0B7D5CCE0577690C1FC210C1E7A9DC73D8CB3EFB969ACED6A486D6BB8466F5D9827DEB79BDDDF2E3D3F1D6A7DBECF06A5DAA53C4590BFDBDF358D3F087387BBBDC3FB48CAB62E5E165DC5598C4B33CB6FC6E95B83FED61ADD22ABD68A14204BBAA30929B13B0BD635BAB93AB4DBE0BA656D737B98E0C6CE465D3C17A79BD7B2C0ACF02771DCBC952A6191FE824A6211FDC8007F8880A39CD1EC1973FB0AFDB7F21A8AEEFA4286291CDCA7296A80D25FC719DCA1D257C3906B78AEAD460FE3D54CDC2FD2B91249FC35C1AAECCD6EE4713B1909B6268E8EC148F5A6B4D01BBCA6CE5AE9F6326B2B30130B1DD19752907E1B63D4C9F99C8E1532207EC7F93C923CA463C80046C2C57C6348737D07B3C0CA05ADDDDB71D02479B024C33950737F5B3999D63843A79F5CDE02CD8AA524DE6F64E021CD5BEC30AE5F4DD031EFB70A26D8FDFFED19F6ACF0F96FC8F0E009896577B7597E5FB9E2CAFF7652FC1F2AED558974D35D3E66AFFEBB2F9C093CDF5CEE725D8BC653B53055F4E506CD714B5A7745979E8C9CA7A4BC2B6F29EAF8651D4654F35E789F20C7570D63C3EDA775840DC523299AE767F2E1F9C7BF281DE3BBC7C1FB8B4A7CB4E90E911B569737964E4C9237A81CFF6C8BE1D16655AECABC79E17FD6316E7ED3AA4B6542E8B8F3D595CEF02F7ACA08F5CF4583B1BBDC7AD4A5056B692AECC563BC6D0B2D8FD83857ADF51AD348BB7FF070000FFFF0300504B030414000600080000002100BE323E340A0500008A1B000012000000776F72642F6E756D626572696E672E786D6CCC59CD6E1B3710BE17E83B080BE8686BFFF463217220DB359A220D82C645CFD42E651126970B922B4539F665FA087DACBE4287CB5D465A39D2722D03CE21CA0E6786C38F33C38FCCBBF75F19EDADB1908467332FB8F4BD1ECE129E92EC71E6FDF9707F31F17A52A12C45946778E66DB1F4DE5FFFFCD3BBCD342BD8020B50EC818F4C4ED730BC522A9F0E0632596186E425CF7106834B2E1852F0291E070C89A722BF4838CB91220B4289DA0E42DF1F79951B3EF30A914D2B17178C24824BBE54DA64CA974B92E0EAA7B6106DE63596773C2918CE5439E340600A31F04CAE482E6B6FACAB3758E2AA76B23EB68835A3B5DE266F335B2AD0067066D484BDE122CD054FB09420BD3383D663E01F9BBB0250BBB0166D42D89FB38E84219259373A3D1AFB6F37EF12366F60E61E6857DF1702585C4332A185540225EA53C17A7B5F1FD299E7972A9924298CAD1185449DDCFAE17C7CE30DB4312BA8221FF11AD3876D8E6B9DD5762148FABB1EA37ACCE82A96D35A23B8B9F3877130322374AD0708FCE819E19F2AA7C9CCFB65741F8EE3795CC600A520943537765007F7CC0A1705A558598F0FF8AB1DBAB0D2DF92DA07C5CB4A39FF2CF45A48A617A9C5B04A7F5206B242D9635990D1C8D73E069B69A52D8C91B8E7999260876442C8CC7B200CCBDE27BCE9FDC119822DDA4C31926A2E097A76703507709F1D49E4B3E215C920BE142F11C05B8554C602A101807A21BB7006DFE1F463FFCAF7FDE8E570726738277E37386F792108161A50BD900AAD865423D51039A2141EA0342C25D0AFA04DE9F61ABC1CB5FFFEFEC715B7701876C3ED2F485A7D92406FB5A8EDCBDCD2283A00C824D69901FAD715A0288CBB01F465CB161C0E038BCE8EC00D9AF8001A03D659A171AEB8E80A1A965E9D6B036B1692E94F0DE9CB2BCED457D9E6ABBEF4362A2E1E756CFCFBD56550DB97B9A515B0B2FA1CAC007A1B15378C3BB6F29D0233E8EC08DCA0191F40F3162A6E1474ECD58DDA7AAD330EAE138D847A1B15379A746CE1FBD5D5A5E28032EDB0DF9364D870805D321CDE4C02A0A847C97049917F4083C7E1ED3C8AA2893DF6608B6A1AACC3394D7A539C10862A869D7F515B6A59F8AF18690A1018E7B2582EC17BC9E1658E126CE7DC25CAFDE0D2CA5B52E5F298591221D547A22F222778F20133DB4C134EB9A863BB2FFF54317FABA5A116C0761D65BAE742AC9C0CC06F8B583F74064D5F27606DED4FE703D88E8311B6A4ABA7D327AAB6C2018C7EF4FA78B4BD1D6DA68B3A87CAC484EF5B7D5D2BEBA09290E6F7814682F2A69184AAA3B7CFC895204FB606AB1952B8621F4A79A128944C6376B94229DF348418D8AA6C8640580E8F40F6925BCD95F1CF82735BEB95748D3222570DAFBA0F408768489FB0C81AA29C4BA29F6B1AE2A2FECEE085CAE4093C68A939258F56758124D6AB34C358BF3194D8D726C7F3B8ED65F5741EC79DF2B85F99C195BA653B7CEDCA6EFB1A721A916147442EFBC3D7AF6FC77E373C5BBFAB9EA45C9A3FF4BB7EAC51E98F9C8179E9E979BC7C46678365FC82640158FAE33786CCB80B32D0051A64098EFEDDDD8765F627AD56AA80786ABE02BFB623164C7302E8B5332F8EE03261284FADB9FB3C19077EF9EC60F943108665A78274F8C1FBA463414DCE8F4F60F20000EA5F9D03A321DC8B8F61D4BCC907B1D5EF8A11C0DBB830C01334EC19FCAD5FCBCD056147E3837E5136CFE655A4A0A9B77DCFCC9035673373363A9B9903C4D9CC74586733D3819CCD4C793A9B99AC7DD6AC4E957203601FE1D7FC1FDAF5FF000000FFFF0300504B030414000600080000002100E2E4514D4C0100007F02000011000801646F6350726F70732F636F72652E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C92CD4EC3301084EF48BC43E47B6A2755A18A925402D41345208A40DC2C7B9B5AC43FB2DDA67D7B9CA40DA9E0C0713DE36F67D7CE170759477BB04E6855A0644250048A692E5455A0B7F5329EA3C879AA38ADB582021DC1A145797D953393316DE1D96A03D60B70512029973153A0ADF726C3D8B12D48EA26C1A182B8D156521F4A5B6143D917AD00A784DC60099E72EA296E81B11988E884E46C409A9DAD3B0067186A90A0BCC3C924C13F5E0F56BA3F2F74CAC829853F9A30D329EE98CD592F0EEE831383B1699A4933ED6284FC09FE583DBE76A3C642B5BB6280CA9CB38C59A05EDBF2654755F5546996E3D169BBC19A3ABF0ACBDE08E077C7B1F1B7D8FA2DEC45FB526592E37119BA75C3F52D8147216ED60F7756DEA7F70FEB252A5392A43199C50959935996DE66847CB6B92EEEB7F1FB03794AF77FE2FC927806945DE2CB2F537E030000FFFF0300504B030414000600080000002100C0E50487560200004209000012000000776F72642F666F6E745461626C652E786D6CC4955D6F9B301486EF27ED3F20DFAF1C08693E54526569B8DB2ED656BB7688492C611BD92434FF7EC718B274216B90BA2E2824BCD807FBE13DE7DCDDBF88DCDB336DB89231096E80784CA66ACDE52626CF4FC99731F14C49E59AE64AB2981C9821F7B3CF9FEEAA69A664693C9C2FCD54C7645B96C5D4F74DBA65829A1B553089F732A5052DF1526F7C95653C650F2ADD09264B3F04B8F535CB6989CF365B5E18D244ABAE895629BD2EB44A9931B85891BB7882724966CDEABC6A2AA9C0553F71C18CF79D55DE0F25A81B5050A90C0B70CC9EE63181108F5B18C01022FC86F82F22BE8D946EA936AC3C0E04276754F0FCD0AABA8E5B8F2F78996E5B7D4F35A7AB9CB939866FF0C6CEAC20264B0008E749429C12C46481CA681C058D12E2A2DC67D22883A382AF091756C7A987042E0E2A18A79955AFD377EFE98CC842ED3467DA32A9719DD3182181494DC5D2887AD1106ACDB4747B7E8523E32F6CDD83C5E02358FC44FF58C39B4E12C316E7EF5FB7813F7D113AF9B52FE8AE541D1C2EDBA27D4AB3717C9D41239DA1A84D8066EAB4C5F864D6F5B6783C8895CA2F701842804E0860847912628E8C7A70E89F1FFF17C482E67CA57927891092BA42D88A116196E0B99B4467A5301537A6972596D601E169A58850982F8E4AAF4A31A92BCEF596986301EB7644085FD10911EEBF3DFE31078BA1AB627E4895A83978CF92637764DEB7C70BD6B80EC9F89DAC918C9204899C3491E5E401AF8FCAD11A83764C67B5001824D0BF89508139422F90B06DD4B553DB56FB2549FF7261DBE9799240744E02FE5A376D1808DE4C92A6AF9AD92F000000FFFF0300504B030414000600080000002100B158964978010000CB02000010000801646F6350726F70732F6170702E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009C52CB4EC33010BC23F10F51EEADD3220AAAB646A80871E0253594B3656F120BC7B66C83DABF67D3D034881B3EEDCCDAE3D9B1E166D79AEC0B43D4CEAEF2D9B4C833B4D2296DEB55FE56DE4FAEF32C26619530CEE22ADF63CC6FF8F919BC06E731248D3123091B577993925F32166583AD88536A5BEA542EB422110C357355A525DE39F9D9A24D6C5E140B86BB8456A19AF84130EF15975FE9BFA2CAC9CE5FDC967B4F863994D87A2312F2E7CE8E992A975A60030BA54BC294BA453E237A00F02A6A8C1DD717F0EE82225C2C80F525AC1B11844C94205F14D7C046186EBD375A8A44D9F2272D838BAE4AD9CB2185AC3B0F6CBC0528990DCACFA0D39E17C0C6101EB5252797C0FA829C055107E19B1F7B03828D1406D7343EAF848908EC44C0DAB55ED83D279FC78AF43EE29B2FDD5D97CFCF91DFE468C8779D9A8D1792BC5CCD2EC6E38E3AB0A1505091FFA3DE8980077A9260BA4B292A5BA33AEEF9DBE802DCF67F93CFE6D382D621B12347CF327C1AFE0D0000FFFF0300504B01022D0014000600080000002100DC66FBFE90010000390600001300000000000000000000000000000000005B436F6E74656E745F54797065735D2E786D6C504B01022D00140006000800000021001E911AB7F30000004E0200000B00000000000000000000000000C90300005F72656C732F2E72656C73504B01022D0014000600080000002100AEFDCE0339010000CB0400001C00000000000000000000000000ED060000776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C73504B01022D0014000600080000002100AD2AFCBD3F070000AF1A0000110000000000000000000000000068090000776F72642F646F63756D656E742E786D6C504B01022D001400060008000000210096B5ADE296060000501B00001500000000000000000000000000D6100000776F72642F7468656D652F7468656D65312E786D6C504B01022D0014000600080000002100A97878AE120200003803000015000000000000000000000000009F170000776F72642F6D656469612F696D616765312E776D66504B01022D00140006000800000021006D7E193E49020000000E00001E00000000000000000000000000E4190000776F72642F656D62656464696E67732F6F6C654F626A656374312E62696E504B01022D001400060008000000210048551D5937030000040800001100000000000000000000000000691C0000776F72642F73657474696E67732E786D6C504B01022D00140006000800000021004AD88A92BB000000040100001400000000000000000000000000CF1F0000776F72642F77656253657474696E67732E786D6C504B01022D00140006000800000021000F74B7A9FD0900009B5200000F00000000000000000000000000BC200000776F72642F7374796C65732E786D6C504B01022D0014000600080000002100BE323E340A0500008A1B00001200000000000000000000000000E62A0000776F72642F6E756D626572696E672E786D6C504B01022D0014000600080000002100E2E4514D4C0100007F020000110000000000000000000000000020300000646F6350726F70732F636F72652E786D6C504B01022D0014000600080000002100C0E5048756020000420900001200000000000000000000000000A3320000776F72642F666F6E745461626C652E786D6C504B01022D0014000600080000002100B158964978010000CB020000100000000000000000000000000029350000646F6350726F70732F6170702E786D6C504B0506000000000E000E0090030000D73700000000, NULL)
INSERT [dbo].[File] ([ID], [Name], [Type], [Content], [Length]) VALUES (2, N'Bai2.docx', N'.docx', 0x504B03041400060008000000210030C9280C72010000A5050000130008025B436F6E74656E745F54797065735D2E786D6C20A2040228A000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B454C96EC23010BD57EA3F44BE5689A187AAAA081CBA1C5BA4D20F30F604AC7A93C76C7FDF49A051D542900A5C2225E3B7F8E5D983D1DA9A6C0911B57725EB173D9681935E69372BD9C7E425BF671926E19430DE41C936806C34BCBE1A4C36013023B4C392CD530A0F9CA39C831558F8008E26958F56247A8D331E84FC1433E0B7BDDE1D97DE2570294F35071B0E9EA0120B93B2E7357DDE3A896090658FDB85B556C94408464B91C8295F3AF54B25DF2914846CD6E05C07BC211B8CEF55A827870576B8378A266A05D958C4F42A2CD9E02B1F15575E2E2CEDA1E8A6D9E3D3579596D0E26BB610BD0444CADC9AA29D58A1DDB7FF833EDCC24E2112F2FC465AEAA326306D0CE0F91D6C79BBE429AC71F4013995E3647DA8EBA740E5F43F02C4A4A1EDCFC1FC1152A2F42FB1F91D73D7F69B2A263A74C09B67FFE40C1A9AA392159DCB89981A3859EF4FFD5BEAA32656307DBF58FA3FC8BB8CB4FD933EFE238CEF3BAB46EF691D6F2ED9E117000000FFFF0300504B0304140006000800000021001E911AB7F30000004E0200000B0008025F72656C732F2E72656C7320A2040228A0000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C92DB4A03410C86EF05DF61C87D37DB0A22D2D9DE48A17722EB038499EC01770ECCA4DABEBDA320BA50DB5EE6F4E7CB4FD69B839BD43BA73C06AF6159D5A0D89B6047DF6B786DB78B075059C85B9A82670D47CEB0696E6FD62F3C9194A13C8C31ABA2E2B38641243E226633B0A35C85C8BE54BA901C4909538F91CC1BF58CABBABEC7F457039A99A6DA590D6967EF40B5C758365FD60E5D371A7E0A66EFD8CB8915C807616FD92E622A6C49C6728D6A29F52C1A6C30CF259D9162AC0A36E069A2D5F544FF5F8B8E852C09A10989CFF37C759C035A5E0F74D9A279C7AF3B1F21592C167D7BFB4383B32F683E010000FFFF0300504B030414000600080000002100B3BE8B1D09010000B60300001C000801776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C7320A2040128A0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AC93CF4AC43010C6EF82EF10E66ED3AEBA886CBA1711F6AAF501D276FA079BA424B36ADFDEA1B0DB2E2EF5D24B60BE90EFFBCD30D9ED7F4C27BED087D65905491483405BB8B2B5B5828FECF5EE0944206D4BDD398B0A060CB04F6F6F766FD869E247A169FB20D8C506050D51FF2C65281A343A44AE47CB3795F3461397BE96BD2E3E758D7213C75BE9E71E905E788A43A9C01FCA7B10D9D073F2FFDEAEAADA025F5C713468E94A840C48C49D05F6D4BE4652705222E604791D61B32A020D1DCF700218EBA5F864CD787B34397A9EC14470969620B66B4210AF074E006329C7335962785C93A17296329D77338EB3B404F1B026C437E6EF7F5672269E40E4C56F4B7F010000FFFF0300504B0304140006000800000021000BF72CB8350400003410000011000000776F72642F646F63756D656E742E786D6CCC573F6FDB4614DF0BF43B3C7028EC411225FF2D6B3148ABA4E8D04268D2A01D4F24251E42DE11C7A354752D8A0E1D5A4F45D1C54660184822C4683671E840C3DF83DFA4EF78A42CDBB2AA04861C0D22EF1EDFFFDF7B77EFE0C18F6100434FC494B3B6D1AC9B0678CCE12E6583B6F1DDD3C7B57D036249984B02CEBCB631F662E381FDF1470723CBE54E127A4C028A60B13544AA2F6564351AB1E37B2189EB3CF21812FB5C8444E2520C1A2111CF93A8E6F0302292F66840E5B8D132CD5DA314C3DB462298558AA885D4113CE67DA9582CDEEF53C72B1F15875845AFE6EC9426171A1BC20BD006CE629F4671252D7C5F69E8A25F09192E73621806D577A368156DAE2023CC471868B3475CB891E08E17C7B8DBD1C499C4A6B94C7719402562C6B18A09577556968484B29918858E6BF99F25AF8EC96B68DD0D25EAD2118C858D58EA7177AC9E118C2CC4A2FB6DDB30CDBDCEF68EF9C8A8B6BA98E81B9B1DAF4F9240DEA474E7B69464B1508CA21400B6E28838E84124BCD81343CFB0BFF0393C84203B82304FFF92F83F7DC106E064C70EC4797A086C908CB3970CDC8BB38BE382F216186CB04F02F959D3C4DF261C3450BCADFEC5721B44B7F820202867640D49D03686B4F6EC1BA3A1B93559DA919F4F4F19C83C9DAC2CFB16FF60E3FCF0E22C4F5F38707E981D335F7B85A25F81895BF9F45F06ACD6DCAC5FD184BE44F79629FB87EC65020EC620B1E069F63A04E5C1DF0E387E82910BF01D6DC6189D48FC2A3D25E0130A734153C4F4F7EA13293872E9C47E485E76F2F40D04344F7F4D60981D710BCEFF2853A59C9B440A00AFA0971D31742E9B8488CAB72A2C270948914D1D74F0E20C6292586BCE5DA481CA9250BFD0601854803615984716D2BE72ABBDFD12E025830297665C52AE7627FB07D3A6107A8AFE5255839765BAB034DD645CE59C410F03FB73022E3E7E611AF4F308D1B829ABFDE1BA61B1C6004A8A258E50F23D5EC4AF8CC5F5B6A62BC6C716074DB38E6D0D36B021FE4975E4543BF431B624816C22AB20EB8EF9DCE7BA674A914FDFB0C12616A8EA5E418165592AFD7062BF14737325298805DF27459311044255857EF61A1BA876FB2A022F91A7303AA0D93196689EFE06329B204BD583D78DB365BE3ECB26E0E6E9C93D358FF22CECCD1D7DABF485056CEAF0BDDE4BD7DC1097C4595D786F5E3B7657BF344852C5C8565EDDDFB1BCD89396F9AEAEDC7A177BE7A0DC2AA9B57F6746EDDC9D7FCD9DF7B0CADE0373CD68AE0E677D4657E853AB3BAA5041FEDFA3CF1FED3EDEFAD4A8EEF3773101D85B0BD5C69E23BBB30A5603C555DD4F903EB75B5C8B074F7E42CB46384BB75ADB384D8F2C1FDF77F6F1BDB8FE4483AF89122939CE7ECD6DFD89A0031F2555CB1E9792E3205AAD03AF3F47F53DE27A380BEDB50AF17DCEE5DC7290C86259AA737810A3B672BA512C851538BB7F29A8BA860594795D2A1DB4726BB7A0622AB5E34556F564867BD5B86FFF070000FFFF0300504B03041400060008000000210096B5ADE296060000501B000015000000776F72642F7468656D652F7468656D65312E786D6CEC594F6FDB3614BF0FD87720746F6327761A07758AD8B19B2D4D1BC46E871E698996D850A240D2497D1BDAE38001C3BA618715D86D87615B8116D8A5FB34D93A6C1DD0AFB0475292C5585E9236D88AAD3E2412F9E3FBFF1E1FA9ABD7EEC70C1D1221294FDA5EFD72CD4324F1794093B0EDDD1EF62FAD79482A9C0498F184B4BD2991DEB58DF7DFBB8AD755446282607D22D771DB8B944AD79796A40FC3585EE62949606ECC458C15BC8A702910F808E8C66C69B9565B5D8A314D3C94E018C8DE1A8FA94FD05093F43672E23D06AF89927AC06762A049136785C10607758D9053D965021D62D6F6804FC08F86E4BEF210C352C144DBAB999FB7B4717509AF678B985AB0B6B4AE6F7ED9BA6C4170B06C788A705430ADF71BAD2B5B057D03606A1ED7EBF5BABD7A41CF00B0EF83A6569632CD467FADDEC9699640F6719E76B7D6AC355C7C89FECA9CCCAD4EA7D36C65B258A206641F1B73F8B5DA6A6373D9C11B90C537E7F08DCE66B7BBEAE00DC8E257E7F0FD2BADD5868B37A088D1E4600EAD1DDAEF67D40BC898B3ED4AF81AC0D76A197C86826828A24BB318F3442D8AB518DFE3A20F000D6458D104A9694AC6D88728EEE2782428D60CF03AC1A5193BE4CBB921CD0B495FD054B5BD0F530C1931A3F7EAF9F7AF9E3F45C70F9E1D3FF8E9F8E1C3E3073F5A42CEAA6D9C84E5552FBFFDECCFC71FA33F9E7EF3F2D117D57859C6FFFAC327BFFCFC793510D26726CE8B2F9FFCF6ECC98BAF3EFDFDBB4715F04D814765F890C644A29BE408EDF3181433567125272371BE15C308D3F28ACD249438C19A4B05FD9E8A1CF4CD296699771C393AC4B5E01D01E5A30A787D72CF1178108989A2159C77A2D801EE72CE3A5C545A6147F32A99793849C26AE66252C6ED637C58C5BB8B13C7BFBD490A75330F4B47F16E441C31F7184E140E494214D273FC80900AEDEE52EAD87597FA824B3E56E82E451D4C2B4D32A423279A668BB6690C7E9956E90CFE766CB37B077538ABD27A8B1CBA48C80ACC2A841F12E698F13A9E281C57911CE298950D7E03ABA84AC8C154F8655C4F2AF074481847BD804859B5E696007D4B4EDFC150B12ADDBECBA6B18B148A1E54D1BC81392F23B7F84137C2715A851DD0242A633F900710A218ED715505DFE56E86E877F0034E16BAFB0E258EBB4FAF06B769E888340B103D3311DA9750AA9D0A1CD3E4EFCA31A3508F6D0C5C5C398602F8E2EBC71591F5B616E24DD893AA3261FB44F95D843B5974BB5C04F4EDAFB95B7892EC1108F3F98DE75DC97D5772BDFF7CC95D94CF672DB4B3DA0A6557F70DB629362D72BCB0431E53C6066ACAC80D699A6409FB44D08741BDCE9C0E4971624A2378CCEABA830B05366B90E0EA23AAA241845368B0EB9E2612CA8C742851CA251CECCC70256D8D87265DD96361531F186C3D9058EDF2C00EAFE8E1FC5C509031BB4D680E9F39A3154DE0ACCC56AE644441EDD76156D7429D995BDD88664A9DC3AD50197C38AF1A0C16D684060441DB02565E85F3B9660D0713CC48A0ED6EF7DEDC2DC60B17E92219E180643ED27ACFFBA86E9C94C78AB90980D8A9F0913EE49D62B512B79626FB06DCCEE2A432BBC60276B9F7DEC44B7904CFBCA4F3F6443AB2A49C9C2C41476DAFD55C6E7AC8C769DB1BC399161EE314BC2E75CF8759081743BE1236EC4F4D6693E5336FB672C5DC24A8C33585B5FB9CC24E1D4885545B58463634CC5416022CD19CACFCCB4D30EB45296023FD35A458598360F8D7A4003BBAAE25E331F155D9D9A5116D3BFB9A95523E51440CA2E0088DD844EC6370BF0E55D027A012AE264C45D02F708FA6AD6DA6DCE29C255DF9F6CAE0EC38666984B372AB5334CF640B37795CC860DE4AE2816E95B21BE5CEAF8A49F90B52A51CC6FF3355F47E0237052B81F6800FD7B802239DAF6D8F0B1571A8426944FDBE80C6C1D40E8816B88B8569082AB84C36FF0539D4FF6DCE591A26ADE1C0A7F669880485FD484582903D284B26FA4E2156CFF62E4B9265844C4495C495A9157B440E091BEA1AB8AAF7760F4510EAA69A6465C0E04EC69FFB9E65D028D44D4E39DF9C1A52ECBD3607FEE9CEC7263328E5D661D3D0E4F62F44ACD855ED7AB33CDF7BCB8AE889599BD5C8B3029895B6825696F6AF29C239B75A5BB1E6345E6EE6C28117E73586C1A2214AE1BE07E93FB0FF51E133FB65426FA843BE0FB515C187064D0CC206A2FA926D3C902E907670048D931DB4C1A44959D366AD93B65ABE595F70A75BF03D616C2DD959FC7D4E6317CD99CBCEC9C58B34766661C7D6766CA1A9C1B327531486C6F941C638C67CD22A7F75E2A37BE0E82DB8DF9F30254D30C1372581A1F51C983C80E4B71CCDD28DBF000000FFFF0300504B030414000600080000002100114DFFE7380300000408000011000000776F72642F73657474696E67732E786D6C9C55DB8EA338107D5F69FF01F1BCE918422041931E0512F6A2EEDDD166E6030C38096ADF643B4967BF7ECB80876E8D7734DA27EC73AA8EABCAAEE2C3C75746832B51BA137C13460F280C086F44DBF1D326FCF2B99AADC2401BCC5B4C05279BF04E74F8F1F1E79F3EDC724D8C01331D8004D7B9D88417C573DD9C09C37AC6BA46092D8E66D608968BE3B16BC8F809470FB509CFC6C87C3E1F9D1E84241CD48E42316CF48350A7F9E0B913CD85116EE63142E95C118A0D04ACCF9DD44E8DFD5F3538EAEC44AEDF4BE2CAA8B3BB45E87B9663BA37A1DAAF1E3F129E75904A34446BA82CA343BA0C77DCC968FA233A433D9FBA5A61757F23F208D7F68F102CB8E592A8060A0A771EA3706E89961CF1859ACFB83E1821C1E48AE1B0CCD1CD192BDC18A20E1237105D29B851823ABB56FC294C29985410FC2008172FB1E9B5E17DB5DA1E62177F0B619C1B42D92E59A2FDE061D98941095AAE122F532ED2F5D6C74429AAD69197D92F905F2DDEA65551F87C9262B92A577E264DB6958FF9EF7C56DB0C6D773E9F5515A7DB858F591759BCF0D660BD8B777BAF5AB1CBCAD89B4FB14FABC5DA774EB1CF4A3F53225464DE1AEC50B28ABDB1EDD2382BBDB1EDB308155E9FFD36CBD2CC175B152768EF8DA02AE268D5E7331F9E16BC3196DB86FEA4DCAA82771AB0E1319798D5AAC3C1B36D7978982CAFD54BD171C7D704460F79CB1C2EB52367B381D00C535A412F3802BA7D60DA4ECB1D39F6C2F419ABD3A4DCF718CB951785CEFBE3AB9AED4AA27E55E22207D59BC2F277DE02EC0E8C9264D4EBB879EA98C3F5A53E382F0E9DFF86BAF0F6AFABB282F3A940B7DCC0B026B6424F989F5CE7113EFB72B0A6B7BCA1EA60073A79C65242D383497D8A3621ED4E671385B035B06BB17AE937F5291EB9B8E76067B97E831B9B19588F0B6B302CC16A5C4CD8C2618B094B1C964CD8D261CB094B1D965AEC7C8751473BFE0283D32D2D7E14948A1B697F73E026FC061A8AA0CF5812B8573B1DE18189BC07C671A9836B4E5E618E92B633F0AF945DCBF0EB268CD1B2BFA3D19AE2BBB89877B656C91ACB7768D06283612AF757F5CE19AE0E7EBAEF63B153BBE9E0411EEEAC9E86F1C31038EDB439100973DB080529F703FD975E79FA7D3FFE0B0000FFFF0300504B0304140006000800000021004AD88A92BB0000000401000014000000776F72642F77656253657474696E67732E786D6C8CCEC16AC3300CC6F17B61EF10745F9DF5304A485228A32FD0F5015C47690CB164246DDEF6F4356C97DD7A149FF8F1EF0F5F696D3E5134320DF0B26DA1410A3C45BA0D70793F3DEFA151F334F9950907F84685C3F8B4E94B57F07A46B3FAA94D55483B196031CB9D731A164C5EB79C91EA36B3246FF5949BE3798E01DF387C242473BBB67D7582ABB75AA04BCC0A7F5A79442B2C53160EA85A43D2FAEB251F09C6DAC8D9628A3F7862390A17457163EFFEB58F77000000FFFF0300504B0304140006000800000021000F74B7A9FD0900009B5200000F000000776F72642F7374796C65732E786D6CCC5CD172DBB6127DEF4CFF81A3F7D4B6244B89A74AC7719AC633899B46F6DC678A822CD614A992541CF7EBEF620142102988BB229CFAC536410207D83D380BC05CFEFADBF755127C13791167E9A477F6CB692F106994CDE3F47ED2BBBBFDF0EA752F28CA309D8749968A49EF4914BDDFDEFEFCD3AF8F1745F99488228006D2E2229FF49665B9BE383929A2A55885C52FD95AA4706F91E5ABB084CBFCFE245B2CE248BCCFA2CD4AA4E549FFF47474928B242C01BC58C6EBA2A75B7BA4B4F698E5F3759E45A228A0B7AB44B5B70AE3B4F716BA37CFA2F762116E92B29097F9975C5FEA2BFCF5214BCB2278BC088B288E6FA1E330C4559C66F9C7CBB4887B704784457959C4E1A4771BAF60B837E231F89AADC254DE5CCAA7F6568B8AD26AED5D3C8F7B2712B1F817AA7D0B9349AFDFAF4AAE640F76CA9230BDAFCA44FAEA6EBADB135334837627BD307F35BD948D9DE030ABDFD670D73B83872BECCA3A8CC07080132E4A010E047F489C24968EEE8F47D5C5D74D0205E1A6CC340836006076B37059B338F815BC3C552C81BB62F1298B1EC47C5AC28D490FB1A0F0EEFA4B1E67795C3E4D7A6FDE484C289C8A55FC319ECF8524A52EBB4B97F15CFC6F29D2BB42CCB7E57F7D408AE916A36C9396D0FDD118599014F3DFBF47622D29064DA7A1F4F08DAC90C8660B0B073BB489B7BD510535542CFCA7823C533EDC8BB214A19C4601F6FF4700F5E5881A0360F575D0BD8961F726CEBB3781E4ED668B71BD17484E9639413C773DC26F026BD803A137516691229F5D7DF0E60065658D068B5A6B3448D35AA3C191D61A0D4AB4D66830A0B546C3E1AD351AFE6DADD170E7C11A5188C25567D100AD4162E26D5C2642D63F2840671DA54E879AE04B9887F779B85E0632B0D6BB7D482CA79B5949EB2ACAE9E668559E967996DEB75A04A2B39CBA47C3FCBE5A2FC32286154D8BE9FB1D4D7F1BCE1211FC91C7F356A87345BEC6987061B237847D49C2482CB3642EF2E0567C571E65D4BFC982A95A65B476AEA35B3FC5F7CB32982E31E4B6828D1C46775B42B5FF292ED0060727D3C83194B6C6493E1C3978E96EFCB398C79B55651AC26A64A4F49CE1E61A0476F1B08986D245CDD9D53A0AE900CA1054B8E00F01DB27F45F05177EFBD2C794FEAB507464FB84FEABC07564FBC88FC3FE652BCDFB307F0848D36BCC9EBB575992E58B4D52CD81567918B367B081A00D813D894DFB249118B367F08E7C069751043B370A4FD9BED8EA280385ED0E8582938D3E16B6536AB277C61811DB4135AC3E03AB9BD63280D8A2FB557C8BE5C1133718A04A9BB566EB741E382C002188B486FE6B9395ED6BE8BE43F3A828D7291C971422A0A10D1C338F8AA6F9A4E21DC3C7DD021F03A85B046400750B850C20073FDC6B1E1313E920DD8323038B2DCB268A21EDC8CA3C662BB301E285004F7193B0FE72CC5E37179A719380C27650336E1250D8DEA9C53213370958DEE22601CB1135DC3EB23595332876DCB481CC4A8030223FE24D00F223DE04203FE24D00EA2EDEED20FEC49B80C5D606A3A9B6781380F011CE56DF00D9E24D00626B83523B7D6654C53D6CE5F0E6D683781350D80E6A8A370185ED1D977813B0F0110E136A5846EA08587EC49B00E447BC09407EC49B00E447BC09407EC49B00D45DBCDB41FC8937018BAD0D46536DF12600B1E5C100D9E24D00C24738DAB057BC71D63FBB781350D80E6A8A370185ED9D9AA09A452A018BEDA01A96116F02163EC22183C642727306E547BC0923F223DE04203FE24D00F223DE04A0EEE2DD0EE24FBC09586C6D309A6A8B3701882D0F06C8166F02105B1BF68A374EC667176F020ADB414DF126A0B0BD531354A373042CB6836A5846BC0958C897CEE24D00C2478E05E28CC88F781346E447BC09407EC49B00D45DBCDB41FC8937018BAD0D46536DF12600B1E5C100D9E24D00626BC35EF1C639F2ECE24D40613BA829DE0414B6776A826AC49B80C576500DCB481D01CB8F78138090989DC59B00848F1C0184B388E3263FE24D18911FF126007517EF76107FE24DC0626B83D1545BBC09406C793040B6781380D8DA20DFB385F745C9AFA79E3948407DCFA07AAB810CD87738890AA807F8552C440E994CA2FDED908E80D50819880E7A5087F82ECB1E02DA8BDD030741C850F12C89337CA5FB09DFD2B1D26306E3039904B77F5E051F55024CA31E526AF7CD1BC81EB2D385303D49260E413FCBA735A4ECACAB37CB656B902024F3BA740A10E6A15D4342904EEB9195659E0F3C884955BA18FF6FAB51F16FC8799B57CF9C9E0EDF8D86971FD48820574C3692EF6487B913C0F6DE898A6631C25A1960430967256DE1485AC66E46ABAD7B86694EF678B7794788370B215BEA4F99FCD4B0460AAF74EF2B870CB087AABC82B95A86B9B28EDB86AF2FC7A797EFD5533AC9EC4188F50DC06057D2CD4A5916FEB836B6471A8115CCDDC224A6CD04A40F82F7FB43FC9F9BCE53536F6FAB34B5C1F662374DEDF1E2EFA81A837C9B51E8DE679B52D6FCF42DA9EE9E6A2FE81E3B9C7F99C72A650C73FE263D732D1DAD2E94B9D5CFAB027F3F88DC587E6012FE2A6478310D9F2AFEDDA600AAA73A92A2EF2485EE831F52F4BD92224EB63ED1A9223F9827B3AC5C2A8F3459823D02B73C074B626441AC39B315882D63B6FCE8BFD674459E42878E118D81931F03357E3FFC183C1B3F348D5F103FB047CFC40F8B112856E0744B31FA230F8C183A19A135CA0F2386CFC6084DDC17C408EC518311B39DF8D0E2591F73FDDCE9D9739F73FDFC48CF9AA86FCBBFE6DC0B7226F6A8C5992E195792FD0C9376E4742D4AC2E3859F493BF2E95A4DBA1FE2DA661447F4861BEB0B7D5CCE0577690C1FC210C1E7A9DC73D8CB3EFB969ACED6A486D6BB8466F5D9827DEB79BDDDF2E3D3F1D6A7DBECF06A5DAA53C4590BFDBDF358D3F087387BBBDC3FB48CAB62E5E165DC5598C4B33CB6FC6E95B83FED61ADD22ABD68A14204BBAA30929B13B0BD635BAB93AB4DBE0BA656D737B98E0C6CE465D3C17A79BD7B2C0ACF02771DCBC952A6191FE824A6211FDC8007F8880A39CD1EC1973FB0AFDB7F21A8AEEFA4286291CDCA7296A80D25FC719DCA1D257C3906B78AEAD460FE3D54CDC2FD2B91249FC35C1AAECCD6EE4713B1909B6268E8EC148F5A6B4D01BBCA6CE5AE9F6326B2B30130B1DD19752907E1B63D4C9F99C8E1532207EC7F93C923CA463C80046C2C57C6348737D07B3C0CA05ADDDDB71D02479B024C33950737F5B3999D63843A79F5CDE02CD8AA524DE6F64E021CD5BEC30AE5F4DD031EFB70A26D8FDFFED19F6ACF0F96FC8F0E009896577B7597E5FB9E2CAFF7652FC1F2AED558974D35D3E66AFFEBB2F9C093CDF5CEE725D8BC653B53055F4E506CD714B5A7745979E8C9CA7A4BC2B6F29EAF8651D4654F35E789F20C7570D63C3EDA775840DC523299AE767F2E1F9C7BF281DE3BBC7C1FB8B4A7CB4E90E911B569737964E4C9237A81CFF6C8BE1D16655AECABC79E17FD6316E7ED3AA4B6542E8B8F3D595CEF02F7ACA08F5CF4583B1BBDC7AD4A5056B692AECC563BC6D0B2D8FD83857ADF51AD348BB7FF070000FFFF0300504B0304140006000800000021005B2CF1ED4C0100007F02000011000801646F6350726F70732F636F72652E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C92CD4EC3301084EF48BC43E47B6A27555189925402D41345208A40DC2C7B9B5AC43FB2DDA67D7B9CA40DA9E0C0713DE36F67D7CE170759477BB04E6855A0644250048A692E5455A0B7F5329EA3C879AA38ADB582021DC1A145797D953393316DE1D96A03D60B70512029973153A0ADF726C3D8B12D48EA26C1A182B8D156521F4A5B6143D917AD00A784DC60099E72EA296E81B11988E884E46C409A9DAD3B0067186A90A0BCC3C924C13F5E0F56BA3F2F74CAC829853F9A30D329EE98CD592F0EEE831383B1699A4933ED6284FC09FE583DBE76A3C642B5BB6280CA9CB38C59A05EDBF2654755F5546996E3D169BBC19A3ABF0ACBDE08E077C7B1F1B7D8FA2DEC45FB526592E37119BA75C3F52D8147216ED60F7756DEA7F70FEB252A5392A43199C50959935996CE33423EDB5C17F7DBF8FD813CA5FB3FF1F6927806945DE2CB2F537E030000FFFF0300504B030414000600080000002100BE323E340A0500008A1B000012000000776F72642F6E756D626572696E672E786D6CCC59CD6E1B3710BE17E83B080BE8686BFFF463217220DB359A220D82C645CFD42E651126970B922B4539F665FA087DACBE4287CB5D465A39D2722D03CE21CA0E6786C38F33C38FCCBBF75F19EDADB1908467332FB8F4BD1ECE129E92EC71E6FDF9707F31F17A52A12C45946778E66DB1F4DE5FFFFCD3BBCD342BD8020B50EC818F4C4ED730BC522A9F0E0632596186E425CF7106834B2E1852F0291E070C89A722BF4838CB91220B4289DA0E42DF1F79951B3EF30A914D2B17178C24824BBE54DA64CA974B92E0EAA7B6106DE63596773C2918CE5439E340600A31F04CAE482E6B6FACAB3758E2AA76B23EB68835A3B5DE266F335B2AD0067066D484BDE122CD054FB09420BD3383D663E01F9BBB0250BBB0166D42D89FB38E84219259373A3D1AFB6F37EF12366F60E61E6857DF1702585C4332A185540225EA53C17A7B5F1FD299E7972A9924298CAD1185449DDCFAE17C7CE30DB4312BA8221FF11AD3876D8E6B9DD5762148FABB1EA37ACCE82A96D35A23B8B9F3877130322374AD0708FCE819E19F2AA7C9CCFB65741F8EE3795CC600A520943537765007F7CC0A1705A558598F0FF8AB1DBAB0D2DF92DA07C5CB4A39FF2CF45A48A617A9C5B04A7F5206B242D9635990D1C8D73E069B69A52D8C91B8E7999260876442C8CC7B200CCBDE27BCE9FDC119822DDA4C31926A2E097A76703507709F1D49E4B3E215C920BE142F11C05B8554C602A101807A21BB7006DFE1F463FFCAF7FDE8E570726738277E37386F792108161A50BD900AAD865423D51039A2141EA0342C25D0AFA04DE9F61ABC1CB5FFFEFEC715B7701876C3ED2F485A7D92406FB5A8EDCBDCD2283A00C824D69901FAD715A0288CBB01F465CB161C0E038BCE8EC00D9AF8001A03D659A171AEB8E80A1A965E9D6B036B1692E94F0DE9CB2BCED457D9E6ABBEF4362A2E1E756CFCFBD56550DB97B9A515B0B2FA1CAC007A1B15378C3BB6F29D0233E8EC08DCA0191F40F3162A6E1474ECD58DDA7AAD330EAE138D847A1B15379A746CE1FBD5D5A5E28032EDB0DF9364D870805D321CDE4C02A0A847C97049917F4083C7E1ED3C8AA2893DF6608B6A1AACC3394D7A539C10862A869D7F515B6A59F8AF18690A1018E7B2582EC17BC9E1658E126CE7DC25CAFDE0D2CA5B52E5F298591221D547A22F222778F20133DB4C134EB9A863BB2FFF54317FABA5A116C0761D65BAE742AC9C0CC06F8B583F74064D5F27606DED4FE703D88E8311B6A4ABA7D327AAB6C2018C7EF4FA78B4BD1D6DA68B3A87CAC484EF5B7D5D2BEBA09290E6F7814682F2A69184AAA3B7CFC895204FB606AB1952B8621F4A79A128944C6376B94229DF348418D8AA6C8640580E8F40F6925BCD95F1CF82735BEB95748D3222570DAFBA0F408768489FB0C81AA29C4BA29F6B1AE2A2FECEE085CAE4093C68A939258F56758124D6AB34C358BF3194D8D726C7F3B8ED65F5741EC79DF2B85F99C195BA653B7CEDCA6EFB1A721A916147442EFBC3D7AF6FC77E373C5BBFAB9EA45C9A3FF4BB7EAC51E98F9C8179E9E979BC7C46678365FC82640158FAE33786CCB80B32D0051A64098EFEDDDD8765F627AD56AA80786ABE02BFB623164C7302E8B5332F8EE03261284FADB9FB3C19077EF9EC60F943108665A78274F8C1FBA463414DCE8F4F60F20000EA5F9D03A321DC8B8F61D4BCC907B1D5EF8A11C0DBB830C01334EC19FCAD5FCBCD056147E3837E5136CFE655A4A0A9B77DCFCC9035673373363A9B9903C4D9CC74586733D3819CCD4C793A9B99AC7DD6AC4E957203601FE1D7FC1FDAF5FF000000FFFF0300504B030414000600080000002100C0E50487560200004209000012000000776F72642F666F6E745461626C652E786D6CC4955D6F9B301486EF27ED3F20DFAF1C08693E54526569B8DB2ED656BB7688492C611BD92434FF7EC718B274216B90BA2E2824BCD807FBE13DE7DCDDBF88DCDB336DB89231096E80784CA66ACDE52626CF4FC99731F14C49E59AE64AB2981C9821F7B3CF9FEEAA69A664693C9C2FCD54C7645B96C5D4F74DBA65829A1B553089F732A5052DF1526F7C95653C650F2ADD09264B3F04B8F535CB6989CF365B5E18D244ABAE895629BD2EB44A9931B85891BB7882724966CDEABC6A2AA9C0553F71C18CF79D55DE0F25A81B5050A90C0B70CC9EE63181108F5B18C01022FC86F82F22BE8D946EA936AC3C0E04276754F0FCD0AABA8E5B8F2F78996E5B7D4F35A7AB9CB939866FF0C6CEAC20264B0008E749429C12C46481CA681C058D12E2A2DC67D22883A382AF091756C7A987042E0E2A18A79955AFD377EFE98CC842ED3467DA32A9719DD3182181494DC5D2887AD1106ACDB4747B7E8523E32F6CDD83C5E02358FC44FF58C39B4E12C316E7EF5FB7813F7D113AF9B52FE8AE541D1C2EDBA27D4AB3717C9D41239DA1A84D8066EAB4C5F864D6F5B6783C8895CA2F701842804E0860847912628E8C7A70E89F1FFF17C482E67CA57927891092BA42D88A116196E0B99B4467A5301537A6972596D601E169A58850982F8E4AAF4A31A92BCEF596986301EB7644085FD10911EEBF3DFE31078BA1AB627E4895A83978CF92637764DEB7C70BD6B80EC9F89DAC918C9204899C3491E5E401AF8FCAD11A83764C67B5001824D0BF89508139422F90B06DD4B553DB56FB2549FF7261DBE9799240744E02FE5A376D1808DE4C92A6AF9AD92F000000FFFF0300504B030414000600080000002100A441EE4279010000CA02000010000801646F6350726F70732F6170702E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009C52CB4EC33010BC23F10F51EED4295040D5D6156A8538F0929AD2B3656F120BC7B66C17D1BF67436808E2864F3BB3F678766C587EB4267BC710B5B38B7C3A29F20CAD744ADB7A916FCBBBB39B3C8B4958258CB3B8C80F18F3253F3D8197E03C86A431662461E3226F52F273C6A26CB01571426D4B9DCA85562482A166AEAAB4C4B593FB166D62E74571C5F023A155A8CEFC2098F78AF3F7F45F51E564E72FBE96074F863994D87A2312F2A7CE8E9928975A60030BA54BC294BA453E257A00F0226A8C1DD717B07341457E7301ACAF60D5882064A200F9E5F50CD808C3ADF7464B91285AFEA86570D155297BFE0A21EBCE031B6F010A6683721F743AF002D818C283B66484EEED0B3216441D846FBEDD0D083652185CD1F4BC122622B01F0256AEF5C21E38F93C56A4F716B7BE74EB2E9EEF23BFC9D1903B9D9A8D1792BCCC66D7E371471DD85028A8C8FF51EF87807B7A9160BA4B292A5BA33AEEF9DBE8027CEDBF269F9E4F0A5A5F891D397A95E1CFF04F000000FFFF0300504B01022D001400060008000000210030C9280C72010000A50500001300000000000000000000000000000000005B436F6E74656E745F54797065735D2E786D6C504B01022D00140006000800000021001E911AB7F30000004E0200000B00000000000000000000000000AB0300005F72656C732F2E72656C73504B01022D0014000600080000002100B3BE8B1D09010000B60300001C00000000000000000000000000CF060000776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C73504B01022D00140006000800000021000BF72CB8350400003410000011000000000000000000000000001A090000776F72642F646F63756D656E742E786D6C504B01022D001400060008000000210096B5ADE296060000501B000015000000000000000000000000007E0D0000776F72642F7468656D652F7468656D65312E786D6C504B01022D0014000600080000002100114DFFE73803000004080000110000000000000000000000000047140000776F72642F73657474696E67732E786D6C504B01022D00140006000800000021004AD88A92BB000000040100001400000000000000000000000000AE170000776F72642F77656253657474696E67732E786D6C504B01022D00140006000800000021000F74B7A9FD0900009B5200000F000000000000000000000000009B180000776F72642F7374796C65732E786D6C504B01022D00140006000800000021005B2CF1ED4C0100007F0200001100000000000000000000000000C5220000646F6350726F70732F636F72652E786D6C504B01022D0014000600080000002100BE323E340A0500008A1B0000120000000000000000000000000048250000776F72642F6E756D626572696E672E786D6C504B01022D0014000600080000002100C0E5048756020000420900001200000000000000000000000000822A0000776F72642F666F6E745461626C652E786D6C504B01022D0014000600080000002100A441EE4279010000CA0200001000000000000000000000000000082D0000646F6350726F70732F6170702E786D6C504B0506000000000C000C0001030000B72F00000000, NULL)
INSERT [dbo].[File] ([ID], [Name], [Type], [Content], [Length]) VALUES (4, N'Bai3.docx', N'.docx', 0x504B0304140006000800000021001046FA0E7F01000025060000130008025B436F6E74656E745F54797065735D2E786D6C20A2040228A000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B494CB4EC3301045F748FC43E42D4ADCB2400835ED82C7122A513EC0B527AD45FC903D7DFD3D93344408DA44A2ED265262CFBD67C6371E4DB6A64CD610A2763667C36CC012B0D2296D1739FB98BDA4F72C8928AC12A5B390B31D4436195F5F8D663B0F31A16A1B73B644F40F9C47B9042362E63C585A295C3002E9352CB817F2532C80DF0E06775C3A8B6031C54A838D474F50885589C9F3963EEF49029491258FFB8D9557CE84F7A596028994AFADFAE592360E1955D67BE252FB7843188C1F74A8568E1B34756F349AA015245311F05518C2E01B1714574EAE0CF59075CB1CE07445A125B4F5959A0F4E428C34735366ED8A11DA7EF31FE5B02B33874095E70769A57B2122EE4A88E727D8EB76D9D3B0A6C1F9C8291C27FB43153F052AA5F3F01050439B9FA3F38F8048D3BF44F38D7257FB75140BE710C2F0E4F6FF24712FDCEB8FF4D303AF9FA743D432BD9605DD0B33312FE1124D37D2BD101B98BF5FECF47F887781B4F9972EFC6318DF7766557D20F5BCBEE4C75F000000FFFF0300504B0304140006000800000021001E911AB7F30000004E0200000B0008025F72656C732F2E72656C7320A2040228A0000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C92DB4A03410C86EF05DF61C87D37DB0A22D2D9DE48A17722EB038499EC01770ECCA4DABEBDA320BA50DB5EE6F4E7CB4FD69B839BD43BA73C06AF6159D5A0D89B6047DF6B786DB78B075059C85B9A82670D47CEB0696E6FD62F3C9194A13C8C31ABA2E2B38641243E226633B0A35C85C8BE54BA901C4909538F91CC1BF58CABBABEC7F457039A99A6DA590D6967EF40B5C758365FD60E5D371A7E0A66EFD8CB8915C807616FD92E622A6C49C6728D6A29F52C1A6C30CF259D9162AC0A36E069A2D5F544FF5F8B8E852C09A10989CFF37C759C035A5E0F74D9A279C7AF3B1F21592C167D7BFB4383B32F683E010000FFFF0300504B030414000600080000002100C2EB431D18010000360400001C000801776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C7320A2040128A0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AC934D4EC3301085F748DCC19A3D7152A02054A71B84D42D8403B8C9E4472476E49902B93D26529B545461E38DA519CBEF7D7E636FB6DF5D2B3ED151638D82248A41A0C96DD1984AC17BF672F30882589B42B7D6A0820109B6E9F5D5E6155BCDFE10D54D4FC2AB18525033F74F52525E63A729B23D1ABF535AD769F6A5AB64AFF30F5DA15CC5F15ABAB906A4679A62572870BBE2164436F4DEF97F6D5B964D8ECF363F7468F882852464F63723AFA95D85ACE0D8893C27C8CB080F2111D8478393FF58CA714D96185621198887D6CF710A61AC97EC9390F6E6D0EDD1F9394C04A7D612C43A2444690D677ADFCE66716A2D41DC8785B08C6E8AA1B4BFF5E243B80BE9FF85FBB73F5F62D63C0621CF7E7BFA030000FFFF0300504B030414000600080000002100D75E291BDF0400004118000011000000776F72642F646F63756D656E742E786D6CEC584F6FDB3614BF0FD8772074DA802596FC274D84DA05162F43B11508926EC88EB4445B5A2452A328BBEE6DD8A1287A598E3D2D455614EB16AC67EBD083827E0FED93EC91941C39CDB238711763C8C190F5283E3EBEDF7B8F3FBEBBF71E85011A121EFB8CB60D6BD53410A10E737D3A681BDF3CDC5A5937502C307571C028691B63121BF73A1F7F747764BBCC49424205021534B68730EA0911D9B55AEC7824C4F12A8B0885C13EE32116F0CA07B510F3FD245A71581861E1F7FCC017E35ADD34D78C420D6B1B09A776A16225F41DCE62D617728ACDFA7DDF21C5A39CC12FB3AE9ED92D4C562BD63809C0064663CF8FE2525B78556DB045AF5432BC6813C33028BF1B459759CDE57804788481367BC4B81B71E690380669570F4E355AE6456B170E942AA6332E63C2EC9AA52521F6E9548D8C8E33F84FC15B05F06A7AED9A5475BA11F0450762A9C7DCB17C466864432CBA3B6DC334AD6673730302A3106D03D0A6D9EA361A5BDDA9B04BFA3809C4FB9F6F57444AF336578F5D310E08A81CE2A06D6C3EB0368C9A94C71176C09B3010F872270D133241BFEC240108B0F89AE058E8AFB956163F2E15D5D70A358F37E359590DAC975FC333D2B3387CA0F638B32169C415D48E6CD1D9F418DA43417688E23C3D405F8D3C7472E0E7E9138A849FBD4E90F0F2F425129CC1068597BD808793A7AF300AF3F4B94030FA1C0D7C0CB3B23FA8B72A6D15CAE2C26EE5B8D2EA8A5F4BD1CC464AE1F5902966CFB8DB610193CE53D0E144B0D2E7A56CA1282C603570A3AC6A2AB82084224E62C287C4E87C275171F2C9ABC4467B493E792910C71A3D01C0FD482B70209A1D8E51E4E593231F308407EAF9F9E4AD403F2463802C4F9F510F0D61D61475EABD7B83620CCA970E4A9A843A0BFC601894B8991A4818BBEF96B2752983409C4E28926301B0CC918A0B584DE6D20A6AAE1779294157692931CE5EA035D33C39A841CEDE42A5F25AE73040346FD55C0C54E7E7EB143FC8CEC9DB088A28611A3ECB349B1ABFDB5CD385797901DC8783711FF083F45328AAFCB3EAD62D8076BC08DEF26133F0619EFE8E248492CDFC86AC664B9E86E92FF2D4FBAC48C6D6C6CD6279CA227B046E3D70E65BF5E270BB02B79BE39C9A8789FE232BE9E6E99F2890C43141C3EC90D9E8E4E7776FF2F4C899AD6D509BAFC1562930996328A112CE5E764881DA64C7E1CCE9070B000D5824473EBFAC17FC57B1663A48C6D96B0A44DA055A258D0452F689F9D7D35FF7E0D732CD4F25ED4A7FD26CFA59956A6747559E7D43F4F9FF137A1C9FE1ADD78BB7537E1DCA68F3E4156769A2AD126B0EDCE20A62AF02B2B8085489FF0D85D6F74E49CA7B0C7A1CEABEBC54E5ACF36D768C5CB8E3DA33C0CAFAF99F5C5D2F70504F7717AED628A854D9F9F5C87BC7D98ABE74EE99E7DCFA70C761C76AB596CE35F3235E71D0422387E37F77CEE75FAC6D353664CB4C1DDBF3367FDECFA0F337334FBCC804B05AF53B1BE75A1F13476C4F69866C6ACD6E6117C62B52E9D03E6382F01DD2271C7AE4B28928C611703C57F7200DC46DDF6D1BFCBEDBD245321AECCAC41F491A586FAA86A207FF5BEBF05FD58568F0004B1B04834630B43BD527DC1F78B074F90A355730E84A97EF01E957463D825D028DD13BC03341913671FA3A4804580CDBD0CB014197DD494915C06C394559018DFC2FB92F3B2FB2F7B9ED0B07AC6CACA95180417B4A3563749B166465EFBFF337000000FFFF0300504B030414000600080000002100F31A36B56F0100003003000010000000776F72642F666F6F746572312E786D6C9C52CB6E833010BC57EA3F20DF13439AF4810291D28873D4A61FE01A036EFD40B681E6EFBBE655B58728EA058B9D9D99B577B6BB2F29829619CBB54A50B40C51C014D539576582DE4ED9E21105D6119513A1154BD09959B44B6F6FB65D5C3813005BD9B805A072AE8E31B6B46292D8A5AE9902B0D0461207BFA6C49298CFA65E502D6BE2F83B17DC9DF12A0CEFD128A313D418158F120BC9A9D15617CE53625D149CB2F19818E61ADF8179D0B4914CB9DE111B266006AD6CC56B3BA9C9FFAAC115AB49A4BD7489568AA9AFABAF71CB0DE96015520C6377DAE4B5D194590BD5C300CE8A5178C97B7C402F3133AE19E1B7E73489245CCD323E187FF63F2F6F09CBC38337F6523F1781B748214675D0C510BFFC25416198DD3DEC5790C1B17460056984F348B45E3F3F415406E4E84BFB2CDC849B41E4687AAD5777160C7A5A22129469ED9841D8231F74AA1A5E56CE1731780FB49EEBD29321AA0C22BCF290EB1B00F16DFD17F29E7E030000FFFF0300504B03041400060008000000210096B5ADE296060000501B000015000000776F72642F7468656D652F7468656D65312E786D6CEC594F6FDB3614BF0FD87720746F6327761A07758AD8B19B2D4D1BC46E871E698996D850A240D2497D1BDAE38001C3BA618715D86D87615B8116D8A5FB34D93A6C1DD0AFB0475292C5585E9236D88AAD3E2412F9E3FBFF1E1FA9ABD7EEC70C1D1221294FDA5EFD72CD4324F1794093B0EDDD1EF62FAD79482A9C0498F184B4BD2991DEB58DF7DFBB8AD755446282607D22D771DB8B944AD79796A40FC3585EE62949606ECC458C15BC8A702910F808E8C66C69B9565B5D8A314D3C94E018C8DE1A8FA94FD05093F43672E23D06AF89927AC06762A049136785C10607758D9053D965021D62D6F6804FC08F86E4BEF210C352C144DBAB999FB7B4717509AF678B985AB0B6B4AE6F7ED9BA6C4170B06C788A705430ADF71BAD2B5B057D03606A1ED7EBF5BABD7A41CF00B0EF83A6569632CD467FADDEC9699640F6719E76B7D6AC355C7C89FECA9CCCAD4EA7D36C65B258A206641F1B73F8B5DA6A6373D9C11B90C537E7F08DCE66B7BBEAE00DC8E257E7F0FD2BADD5868B37A088D1E4600EAD1DDAEF67D40BC898B3ED4AF81AC0D76A197C86826828A24BB318F3442D8AB518DFE3A20F000D6458D104A9694AC6D88728EEE2782428D60CF03AC1A5193BE4CBB921CD0B495FD054B5BD0F530C1931A3F7EAF9F7AF9E3F45C70F9E1D3FF8E9F8E1C3E3073F5A42CEAA6D9C84E5552FBFFDECCFC71FA33F9E7EF3F2D117D57859C6FFFAC327BFFCFC793510D26726CE8B2F9FFCF6ECC98BAF3EFDFDBB4715F04D814765F890C644A29BE408EDF3181433567125272371BE15C308D3F28ACD249438C19A4B05FD9E8A1CF4CD296699771C393AC4B5E01D01E5A30A787D72CF1178108989A2159C77A2D801EE72CE3A5C545A6147F32A99793849C26AE66252C6ED637C58C5BB8B13C7BFBD490A75330F4B47F16E441C31F7184E140E494214D273FC80900AEDEE52EAD87597FA824B3E56E82E451D4C2B4D32A423279A668BB6690C7E9956E90CFE766CB37B077538ABD27A8B1CBA48C80ACC2A841F12E698F13A9E281C57911CE298950D7E03ABA84AC8C154F8655C4F2AF074481847BD804859B5E696007D4B4EDFC150B12ADDBECBA6B18B148A1E54D1BC81392F23B7F84137C2715A851DD0242A633F900710A218ED715505DFE56E86E877F0034E16BAFB0E258EBB4FAF06B769E888340B103D3311DA9750AA9D0A1CD3E4EFCA31A3508F6D0C5C5C398602F8E2EBC71591F5B616E24DD893AA3261FB44F95D843B5974BB5C04F4EDAFB95B7892EC1108F3F98DE75DC97D5772BDFF7CC95D94CF672DB4B3DA0A6557F70DB629362D72BCB0431E53C6066ACAC80D699A6409FB44D08741BDCE9C0E4971624A2378CCEABA830B05366B90E0EA23AAA241845368B0EB9E2612CA8C742851CA251CECCC70256D8D87265DD96361531F186C3D9058EDF2C00EAFE8E1FC5C509031BB4D680E9F39A3154DE0ACCC56AE644441EDD76156D7429D995BDD88664A9DC3AD50197C38AF1A0C16D684060441DB02565E85F3B9660D0713CC48A0ED6EF7DEDC2DC60B17E92219E180643ED27ACFFBA86E9C94C78AB90980D8A9F0913EE49D62B512B79626FB06DCCEE2A432BBC60276B9F7DEC44B7904CFBCA4F3F6443AB2A49C9C2C41476DAFD55C6E7AC8C769DB1BC399161EE314BC2E75CF8759081743BE1236EC4F4D6693E5336FB672C5DC24A8C33585B5FB9CC24E1D4885545B58463634CC5416022CD19CACFCCB4D30EB45296023FD35A458598360F8D7A4003BBAAE25E331F155D9D9A5116D3BFB9A95523E51440CA2E0088DD844EC6370BF0E55D027A012AE264C45D02F708FA6AD6DA6DCE29C255DF9F6CAE0EC38666984B372AB5334CF640B37795CC860DE4AE2816E95B21BE5CEAF8A49F90B52A51CC6FF3355F47E0237052B81F6800FD7B802239DAF6D8F0B1571A8426944FDBE80C6C1D40E8816B88B8569082AB84C36FF0539D4FF6DCE591A26ADE1C0A7F669880485FD484582903D284B26FA4E2156CFF62E4B9265844C4495C495A9157B440E091BEA1AB8AAF7760F4510EAA69A6465C0E04EC69FFB9E65D028D44D4E39DF9C1A52ECBD3607FEE9CEC7263328E5D661D3D0E4F62F44ACD855ED7AB33CDF7BCB8AE889599BD5C8B3029895B6825696F6AF29C239B75A5BB1E6345E6EE6C28117E73586C1A2214AE1BE07E93FB0FF51E133FB65426FA843BE0FB515C187064D0CC206A2FA926D3C902E907670048D931DB4C1A44959D366AD93B65ABE595F70A75BF03D616C2DD959FC7D4E6317CD99CBCEC9C58B34766661C7D6766CA1A9C1B327531486C6F941C638C67CD22A7F75E2A37BE0E82DB8DF9F30254D30C1372581A1F51C983C80E4B71CCDD28DBF000000FFFF0300504B030414000600080000002100596D05DC370300000408000011000000776F72642F73657474696E67732E786D6C9C55DB8EA338107D5F69FF01F1BCE918422041931E0512F6A2EEDDD166E6030C3889D5F822DB493AFBF55B063C746BBCA3D13E619F53755C6557151F3EBEB22EB812A5A9E09B307A40614078235ACA4F9BF0CBE76AB60A036D306F712738D98477A2C38F8F3FFFF4E1966B620C98E90024B8CEC526BC289EEBE64C18D633461B25B4389A5923582E8E47DA90F1138E1E6A139E8D91F97C3E3A3D084938A81D8562D8E807A14EF3C173279A0B23DCCC6384D2B9221D3610B03E53A99D1AFBBF6A70D4D9895CBF97C49575CEEE16A1EF598EE9DE846ABF7AFC4878D6412AD110ADE1665937A4CB30E54E46773FA233DCE713AD1556F737228FF06CFF08C1825B2E896AE042E1CD6314CE2DD19223BE74E633AE0F464830B962382C737473C60A3786A883C40D44570A6E94E89C5D2BFE14A6144C2A087E10848797D8F4DA505FADB687D8C5DF4218E786509424E53A1D3C2C3B312841CB55E265CA45BADEFA98FF568B5254AD23AFCF7E81FCE7C4DBB42A0A9F4F522C57E5CACFA4C9B6F231AB6D86B63B2F53C5E976E163D645162FBC77B0DEC5BBBD57ADD86565EC8DBAD8A7D562ED3BA7D867A59F29112A326FA63B94AC626F6CBB34CE4A6F6CFB2C4285D767BFCDB234F3C556C509DA7B23A88A385AF5F9CC87D2821A63B96DE84FCAAD2AA8D3800DC55C62562B8A8367DBF250982CAFD54B41B9E36B02A387BC650E97DA91B3D9406886BBAE825E700474FBC0B454CB1D39F6C2DD3356A749B9EF31962B2F0A9DF7C75735DB9544FDAAC4450EAA3785E5EFBC05D81D08453EEA516E9E2873B8BED407E7C5A1F3DF5017DEFE755556703E5DD02D3730AC89BDA127CC4FAEF3089F7D3958D35BDE74EA60073A79C65242D383497D8A3661474F671385B035B06BB17AE937F5291EB9B8E76067B97E831B9B19588F0B6B302CC16A5C4CD8C2618B094B1C964CD8D261CB094B1D965AEC7C8751D751FE0283D32D2D7E145D276EA4FDCD819BF01B68B8047DC692C0BBDAE9080526F21E18C7A50EAE397985394A5A6AE05F2969CBF0EB268CD1B27FA3D1BAC3777131EF6CAD923596EFD0A0C506C354EE9FEA9D333C1DFC74DFC762A77643A1200F77564FC3F86108BCA3DA1C8884B96D848294FB81FE4BAF3CFDBE1FFF050000FFFF0300504B0304140006000800000021004AD88A92BB0000000401000014000000776F72642F77656253657474696E67732E786D6C8CCEC16AC3300CC6F17B61EF10745F9DF5304A485228A32FD0F5015C47690CB164246DDEF6F4356C97DD7A149FF8F1EF0F5F696D3E5134320DF0B26DA1410A3C45BA0D70793F3DEFA151F334F9950907F84685C3F8B4E94B57F07A46B3FAA94D55483B196031CB9D731A164C5EB79C91EA36B3246FF5949BE3798E01DF387C242473BBB67D7582ABB75AA04BCC0A7F5A79442B2C53160EA85A43D2FAEB251F09C6DAC8D9628A3F7862390A17457163EFFEB58F77000000FFFF0300504B030414000600080000002100535A6A3D400B0000E95800000F000000776F72642F7374796C65732E786D6CCC5CDB72DB38127DDFAAFD0796DE33B6245B8A5DA34C79E46493ADD8E3B1EC9A678A822CC614A925A9389EAFDF460304C10BC48609679C87C8BC0007E83E3840936CFCFADB8F6DE47D67691626F16C30FCE578E0B138485661FC301BDCDF7D7AF77EE065B91FAFFC2889D96CF0CCB2C16F1FFEFDAF5F9FCEB3FC3962990715C4D9793A1B6CF27C777E7494051BB6F5B35F921D8BE1DA3A49B77E0E87E9C351B25E8701BB4C82FD96C5F9D1E8F8787294B2C8CF013CDB84BB6C206B7BA2D4F694A4AB5D9A042CCBA0B5DB48D4B7F5C378F0019AB74A824BB6F6F7519EF1C3F4269587F2087F3E25719E794FE77E1684E11D341CBAB80DE324FD7C1167E100AE303FCB2FB2D09F0DEEC22D74F79A3D79B7C9D68FF9C50DBFABB55890E55A6DBF87AB7070C411B3BFA1D8773F9A0D46A3E2CC9CB7A0722EF2E387E21C8BDFDD2FAA2D51A79650EF6CE0A7EF1617BCB223EC66F1AB757757E93C1C6153767E0086031C7F9D337020F883E3442177F4683A290E6EF7119CF0F7792241B00200D3AB85C39AC5C1AFE0E58560095C65EBAF49F0C8568B1C2ECC06880527EFBFDCA4619286F9F36C7076C631E1E4826DC3CFE16AC53829E5B9FB7813AED85F1B16DF676C559EFFF313524CD61824FB3887E64FA6C882285B7DFC11B01DA718541DFBDCC3D7BC40C4ABCD341C6CD03E2C5B234ED450F1E4FF0AC8A1F0612BCA86F97C1879D8FE9F0134E23D6A74C0AAADE3FE559CF4AFE2B47F1548DE7EB698D65B81E4B432278867D523F6556009BD23F42AF22410E4D38B8FCF0E50969768B0A8B34483349D251A1CE92CD1A044678906033A4B341CDE59A2E1DFCE120D771E2CB14E1250E63A898E0F7830F051EAEA45C6683F1277EFC23C62BCFC41C91AF61447393979377EEA3FA4FE6EE3F1A9B8DEEC43F2BAD82F735A535180F72FD6F1459E26F143A745603EE783FDC5301FB7BB8D9F85B006EA30FDA8A7E9EFFC65C4BCFFA4E1AA13EA54D0B5D1275CCAB44E7A37911FB04D12AD58EADDB11FC2A316E5AF136F21D6259D8DEBE9D6AFE1C326F7161B9CA43BC12606A39B2D21EAFF1A66688383836962E84A57E5241F4E0CBC34577EC556E17E5B9886B07E998819C0C2CD35086CE261139D7017354757672FB803285D10138C7D17B07E42FBC574645F3FF731A5FD62F27A61FD84F68BA9EE85F5233F0EFBD75A692EFDF4D1230DAFA9F5D89D275192AEF75131063AE5616A3D821504AD0BD68358D54F1289A9F508AEC8A777110410EB51786AED8B52472D50ACDD215070B0D1FB62ED949AEC0D2D7A64EDA01AD6C802AB9FD65A00598BEE2DFB1EF24755B69301AAB45A6B760EE7B1C102300591D6D07FEE61DDDE893232681E15E54B0C0F5832E6D1D0C686914745937C12F39D858FFB4D7C1640FD66400BA07E53A10590811FE6358F9A13E920FD27470B2C6B5956B318D28EACCC536B655640765380A37993B0FE328C5E33179AF32601C5DA41CD79938062ED9DDA5CA6E64D0296B3799380659835CC3ED235D5A653D6F3A60EA45602841EB9116F02901BF12600B9116F02507FF1EE067127DE042C6B6D509AAA8B3701086FB109F515902EDE04206B6D106A279F1915F31ED67238B87520DE04146B0735C59B8062ED1D937813B0F0161B26D4B094D411B0DC883701C88D781380DC883701C88D781380DC883701A8BF787783B8136F0296B536284DD5C59B00642D0F0A48176F0210DE62A30DADE28DA3FED5C59B8062EDA0A6781350ACBD531354B5482560593BA886A5C49B8085B7D890416221B96D3AE546BC093D7223DE042037E24D007223DE04A0FEE2DD0DE24EBC0958D6DAA03455176F0290B53C28205DBC0940D6DAD02ADE38185F5DBC0928D60E6A8A3701C5DA3B3541553A47C0B276500D4B8937010BF9D25BBC094078CB4B816C7AE446BC093D7223DE042037E24D00EA2FDEDD20EEC49B8065AD0D4A5375F1260059CB8302D2C59B0064AD0DADE28D63E4D5C59B8062EDA0A6781350ACBD53135425DE042C6B07D5B094D411B0DC8837010889D95BBC094078CB0B807014D9B8C98D78137AE446BC0940FDC5BB1BC49D7813B0ACB54169AA2EDE04206B795040BA781380ACB5817F670BDF8B923F4F1D1A4840FDCEA0F8AA810C383238890A283B78CBD62C85DC27D6F9DDC6B82760D1430B44033DA85DFC3D491E3DDA87DD630341C850E1320A13FCA4FB19BFD2D1126AC6D3035FAEDFFD31F73E8B94994639A454F5CB1BC837D2138C30A189A71A413BF3E71D24F9EC8A2FCB796D9052C433C164D21066AE7D8114229908C40BF3CC20B811D3B0E4697C6F2B51F16FC8925B15F71C1F0F4F4EE66713D123534A15BEF891095527EAA03DA14A266FC14F252BCD9C78D67A25C89AA7B1F15AE6D9896874F6B7967986E7B40432B4518755951DA5DF869872A55BB2CC81C2362C7DC8DCFA83276235EC1CC3C7E26DE7C1788FC5F90266BEF153D105B377DE5F4C8F2F2E2BDE79646C770D30D89478BF156970F0C717E555242858415DCD5492DC92412A23F06A24FC2873E6C477E1C2C3E3F2A0EAE1A7F36F41D107FE9D24A474601B927DCE4B7EFD1E155731B503F0259F206991BBA04E888B3414E96B987F381BA863EE7C7120CC2DFE9F67F8FBC85265F9B14A3E2C90E19337BC4B2785B8AB2729464652C836B821C5C82929C2A8F4894C42F9C93C5926F9C6C4126CD12BB1244416849233A568948CD144E33D6F614F7E8C8DFC188BFEBBE1C7F8D5F82169FC86F8812D7A257E688C907968BA628C703EECC988132323A446B961C4C9AB314212F70D31025BD460C412C7FAB239D6DB3CEB62AC9F1A3D7BEA72AC9FBED0B36AD6D7E55F72EE0D39135BD4E14C938C8FD08D7C1F024DC65D0CDA89D1B57289EC66D04E5CBA5692EEA7B8B6B9D643F4861B5BD77ADE7D1CC2A61CCCBB5AF068465FF6E997C470D606754F21165B28B4ADE76520E7C6A7D3D2A765A67AB12E95E9EA560BFDD6712C69F8539C5D2EF70F2DE38A617778B13FF7A37099869ADFB533EDDB8C74BB3D8008CA0F646EB921389629DA2A6B0613B4EBA1B2218F1B39D874A65C4A974FFDC57D95AC423805ED37849F39CF5D3E10D0636EF3C1A8DEC35BC46CD36C206C40824DEA6AA1CA03C2BBF365240235F8E34BCC8349D8C006A37DF12862F5C317D5C2F5398BA22B3FE576CC939DF9D688AD793C0C150D8FF1F96DAD2A20569E6CCDE5534C6F36560026D61B230E7927CCB68791B36429EC6872C0FED7097FEED9980A20AB1BCF0B77AB2742D07A7C0E40B5BAB96D153E07FB0C4CB3E04F83EA0F7C2A4F10EA5C9617BDA1570A524DE15AC704F6AAED3985707AF5A991FE5CA22BBCEFDE7BA808F7C192FF50EC6F697911A69B2C3F7264791992BD05CB9B16627DE2694B9B8BD0D764F3B1239BCBA0E72DD8DC4D8C6A6965114E9AAC7CE2C8CA321AB1B672CBE66514756929667CC0BC441D741B4D5AFA40047E261F9C3AF2810C1BDEBE0F4CDAD32708B4F48888D74C1E9938F2885CDB5B7B049F95EB1114CCA39461D156CE7A5C8C8A381E9701CED636229A32597CEAC8E232006C5941BF70D1A3053532BC2DCEA0AC94922ECC567B822165B1FFBE8986B8A3F23251BDF6FA24B6E7AADB5AEEDA25E4D0FCC64B5F318A9AE6EABD5695C92D6F1A2110C26D2DE1B75845CB374B70B84BE03DD0C9E4BD7C8CA7DD8351015FBFE32D67FC8D153493AFFEB13EF8C3108C96A3E26AE15D8571B0C1CD20F94B58DC42B2BCFECD7FF7DF1B59AB23666BD6A9DB5A5CEA4B6A514B1B7375D31B96EB2D7364698DD25A607449EC960246F1B0E27D096BE1840AB50F844E32F469C476C579A47B276F9FC255F23487ADDED2A4FAD2137621850D46F9DE5FECF263416949E0F2CA75FDCAEA1B047BB73CD6158137C693B258F9EE56BEAC552FE0D55B5CFEFAB5FAAED63C04708FD8E6CBF597F935E03B0CA9CE1CF37F827E1487431B3B4616D5A9F32BF85CA73EA6F0649B7A555CADBFB0AF5C689913E453954E76343C3684CDEE84405575A9623E6D67DA9A59C05028D6D987FF030000FFFF0300504B0304140006000800000021007FE821BF4C0100007F02000011000801646F6350726F70732F636F72652E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C92CD4EC3301084EF48BC43E47B6227551144492A01EA89221045206E96BD4D2DE21FD96E43DF1E2769432A38705CCFF8DBD9B58BC5976CA23D5827B42A519A101481629A0B5597E875BD8CAF51E43C559C365A41890EE0D0A2BABC2898C999B6F064B501EB05B8289094CB9929D1D67B9363ECD81624754970A8206EB495D487D2D6D850F6496BC01921575882A79C7A8A3B606C46223A22391B9166679B1EC01986062428EF709AA4F8C7EBC14AF7E7855E9938A5F00713663AC69DB2391BC4D1FDE5C4686CDB3669677D8C903FC5EFAB87977ED458A86E570C50557096330BD46B5B3DEFA8AA1F6BCD0A3C39ED36D850E75761D91B01FCF63035FE163BBF85BDE85EAA4A0B3C2D43B77EB8A125F028C4CD87E14ECADBECEE7EBD445546D22C26F338256B32CFB39B9C908F2ED7D9FD2EFE70208FE9FE4D9C9173E20950F589CFBF4CF50D0000FFFF0300504B030414000600080000002100F4C7F3D92B0400003115000012000000776F72642F6E756D626572696E672E786D6CCC58DB6EE336107D2FD07F3004E831B675F1A5C63A8B6CD2A05B6C178B36FD005AA26322BC0824656FF6EB3BBC884D64C7B51CDB681EA2683817F270E6CC281F3E7E67B4B7C65211C1E751D21F463DCC0B5112FE388FFE7EB8BF9A463DA5112F11151CCFA367ACA28FD73FFFF46133E3355B60098A3DF0C1D56C0DCB2BADABD960A08A156648F54585392C2E856448C3AB7C1C30249FEAEAAA10AC429A2C0825FA79900E87E3C8BB11F3A8967CE65D5C315248A1C4521B9399582E4981FDA3B19087C4759677A2A819E6DA461C484C610F82AB15A954E38D1DEB0D8EB86A9CACF71D62CD68A3B7A90E89564AB4019C1975DBDE0859565214582990DEB9C5E03119EE8BED01342E82C5215B781DB3D90943840737263D5AF71F2EAF0F973770B107C6D5BF07012CAE2199D04269890AFDB566BD576F9FCB7934B42A5C9112D6D688CEA3FBF4D73C1B8FF268608C594D35F982D7983E3C57B8D1593D2F2429FF306BD4AC395DCD2ADA680CB3F4E6767C97BA15BA360B041E2622FCA92B5A4028FF63F700A52075639E383BA8837B1684252E08433E18F87AC0DFCD1AAF29B8F51620FEBD68BC50BCD4C6D1603303B9390E3C60D16D247963230705B55085C31D1A32BD7CC8ECF221F3CB871C5D3E24B0EACE3C3E63FA4C2E1F127AD4F94F09F5F982A4FE93B3922DCE4A3F4D9374927F7205B99BB3ACF40DB69AA4B73759964D4341079270FCD8919BAABFF4330D64F91B46A6E77B8252F57209DE2D7FA80A1538C4F4746657E2A41FE4DBE4B29955DFA481897043DB86E63CAF2E8954FA0B31FD62681C00B25E553A0B792FB85660B4221C8C4ABC44C0E22E5621A890CDDE1C35BB05F5A3915A3E07A7D6DB5BB46A76760AC47CF33818B138ED0C5A36B6ED6885F8235CD13C32EFDD60DB0F467A4C6BDB993E99BF8A43D307C088B3F3E351A879F4401856BDAF78D3FB53300453CBCEEC5A34396411DECC16B7260D6DB67B0969BF6F6914A86A1B299808E8ED0EB996E429D4A08F50C224B42D15B5A65032ADE86A854AB16909315B08D5DE026115CCEA614CF1B1B8F8268508B5EEA56BC4895AB5BC1A1E80F46B499FB0E42D5125143153754B5C37EF1C3E245C9EC07787BEA1E431A82E90C2E6946E199B51D062DF98ECCFE3EC6479ECE7CA2E450D791C7BB39DE35DE0B8977478EECACE4F86C8E8A8CA8EF37E3C3A7F7D6FB589FD79323A192AE377A0128F3B0363DBC03BBAE77E58C6278365F23E58E2C9FF0C99C931C8000BB48625D7ED5C4DC0EDC331E3E94127D530789A79059E81116B665A1870ED3CCAB3D412375C6FA3F99264F264683F76C2FC90A4A9652AD03F74EEDA9F39D3D3E3930480E25F4E81D16898EFC5683C7D3D632579D03F1623C0ACF5C1005F5D7067F0DBFC53C37D20BCD0F86CC664DBEEEC140EE6A069AEFD95991BD63A9BB9DED8D9CC3590CE668E613B9B3906EA6CE6CAB3B399CBDA9D664DAAD80B7017E1FED579FD0F000000FFFF0300504B03041400060008000000210006FC73AA390200004E07000012000000776F72642F666F6E745461626C652E786D6CBC94CF729B3010C6EF9DE93B68746F1098F8DF04671C3BDC9C43933C808C85D10C92188998E4257AEEA17D849E7ACDF3E49A57C822612689ED8969A785C1633E56CBF2D3EE77767E2F72B461DA702523EC9F108C984CD48ACB75846F6FE22F438C4C49E58AE64AB2083F3083CF279F3F9D55E354C9D220582FCD5847382BCB62EC7926C998A0E644154CC2B35469414BB8D56B4FA5294FD85C257782C9D20B08E97B9AE5B484779B8C170637D9AA63B2554AAF0AAD12660C142B72974F502EF1A4A90E55634905547DC30533E88A55E8AB12D40514542AC37C88D9D03CC22480B34F7AE494847005F02FC45E9D29C9A836AC6C038993532A78FEB055B5CD6BE30B5E26D956DF50CDE932676E8DE16B7870679624C2978490601AC7D8297E8467A00C86A1DF280114E58E51A3F45A05B6090AB3796C88EFF28002799A55B64ECFEDD30E9119CDF952738B6A97446C09D44442E000BF1D48988A1BE3E28F25E143C5C16B122108D359AB742231B2448F2731850DCA0F70B8808E08E1FBB7E73FE65063D8D711BDFFD1119603BA951CA69FA1C5F55F2119EE1D92EEAD110FE21888BC1A92CBD11CEE5BA56D8DDE36E6C090F462D2794816D768C1659229CB82E6E515B8C976B29F1F7F3D3FFE464FDFBF3DFDF8D9F4FB5E4B19D9163A25C38396B29F96807DD072CF24A5FC9EAD9CFEDE50DE8E517F3A1BC4F3F8E27DFBF8C1078602D6DC758C6654809FD0035D535BAAB3D6DA62BB19CA9F59EB5B12B5A19070B76B88355230E4035D03ABFC0F49341E6B262F000000FFFF0300504B0304140006000800000021009D325B1479010000CA02000010000801646F6350726F70732F6170702E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009C52CB4EC33010BC23F10F51EED469A9CA435B23548438F0A8D40067CBDE24168E6DD906B57FCF86B46910377CDA99B5C7B363C3CDB635D91786A89D5DE6D349916768A553DAD6CBFCB5BC3FBBCCB3988455C2388BCB7C8731BFE1A727B00ECE63481A634612362EF326257FCD58940DB6224EA86DA953B9D08A4430D4CC55959678E7E4678B36B159512C186E135A85EACC0F8279AF78FD95FE2BAA9CECFCC5B772E7C93087125B6F4442FEDCD93113E5520B6C60A174499852B7C8A7440F00D6A2C6D8717D01EF2EA8C82FE6C0FA0A568D0842260A90CF67E7C046186EBD375A8A44D1F2272D838BAE4AD9CB4F0859771ED8780B50301B949F41A71D2F808D213C6A4B46E882BE206341D441F866EF6E40B091C2E08AA6E7953011811D0958B9D60BBBE3E4F35091DE477CF5A5BBEBE2D91FF94D8E867CD7A9D97821C9CBFC6A311E77D4810D85828AFC1FF48E043CD08B04D35D4A51D91AD561CFDF4617E05BFF35F974362968FD2476E0E855863FC3BF010000FFFF0300504B01022D00140006000800000021001046FA0E7F010000250600001300000000000000000000000000000000005B436F6E74656E745F54797065735D2E786D6C504B01022D00140006000800000021001E911AB7F30000004E0200000B00000000000000000000000000B80300005F72656C732F2E72656C73504B01022D0014000600080000002100C2EB431D18010000360400001C00000000000000000000000000DC060000776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C73504B01022D0014000600080000002100D75E291BDF04000041180000110000000000000000000000000036090000776F72642F646F63756D656E742E786D6C504B01022D0014000600080000002100F31A36B56F010000300300001000000000000000000000000000440E0000776F72642F666F6F746572312E786D6C504B01022D001400060008000000210096B5ADE296060000501B00001500000000000000000000000000E10F0000776F72642F7468656D652F7468656D65312E786D6C504B01022D0014000600080000002100596D05DC37030000040800001100000000000000000000000000AA160000776F72642F73657474696E67732E786D6C504B01022D00140006000800000021004AD88A92BB000000040100001400000000000000000000000000101A0000776F72642F77656253657474696E67732E786D6C504B01022D0014000600080000002100535A6A3D400B0000E95800000F00000000000000000000000000FD1A0000776F72642F7374796C65732E786D6C504B01022D00140006000800000021007FE821BF4C0100007F02000011000000000000000000000000006A260000646F6350726F70732F636F72652E786D6C504B01022D0014000600080000002100F4C7F3D92B040000311500001200000000000000000000000000ED280000776F72642F6E756D626572696E672E786D6C504B01022D001400060008000000210006FC73AA390200004E0700001200000000000000000000000000482D0000776F72642F666F6E745461626C652E786D6C504B01022D00140006000800000021009D325B1479010000CA0200001000000000000000000000000000B12F0000646F6350726F70732F6170702E786D6C504B0506000000000D000D003F030000603200000000, NULL)
INSERT [dbo].[File] ([ID], [Name], [Type], [Content], [Length]) VALUES (5, N'TapCon.docx', N'.docx', 0x504B0304140006000800000021004A9274E9930100002D070000130008025B436F6E74656E745F54797065735D2E786D6C20A2040228A000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B455C94EC33010BD23F10F91AF2871CB012194A407962354A27C806B4F5A8BC4B6ECE9F6F74CD236428826A225974851346F9979334927DBAA8CD6E083B62663E364C42230D22A6D1619FB98BDC4F72C0A288C12A53590B11D0436C9AFAFD2D9CE4188A8DA848C2D11DD03E7412EA11221B10E0C7D29ACAF04D2AB5F7027E4A75800BF1D8DEEB8B406C1608C3506CBD33712E0B582682A3CBE8A8A78F8C67AC50B6BD1588490101C8B1EF7753575C68473A5960249385F1BF58334B645A125282B57155125359CF356420864AD2A9316FAA686E679FA04855895183D6F49DBBE1D1ECAF037D683CD842A1B6561A95DE860E8B6755076B23DADBB6E9833BAD32257429BA3FE933ACCAA9A83A7BEFEFF985AE85E110177E51041D9E3F6D283510325F588DC2581E635F5D6054E5B71F110A0DE00052AA68571E051431BE19311088048011860518FC85DF6DB63017E7CB1FD5F4F05F85E7EA4E307BC795E2EA281E9A52CE820CEC4BC84214C1FA07B456C60FE3ED8F4BF81770969F32FAD3FA319C7B35D57FF927ADEFCECF22F000000FFFF0300504B0304140006000800000021001E911AB7F30000004E0200000B0008025F72656C732F2E72656C7320A2040228A0000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C92DB4A03410C86EF05DF61C87D37DB0A22D2D9DE48A17722EB038499EC01770ECCA4DABEBDA320BA50DB5EE6F4E7CB4FD69B839BD43BA73C06AF6159D5A0D89B6047DF6B786DB78B075059C85B9A82670D47CEB0696E6FD62F3C9194A13C8C31ABA2E2B38641243E226633B0A35C85C8BE54BA901C4909538F91CC1BF58CABBABEC7F457039A99A6DA590D6967EF40B5C758365FD60E5D371A7E0A66EFD8CB8915C807616FD92E622A6C49C6728D6A29F52C1A6C30CF259D9162AC0A36E069A2D5F544FF5F8B8E852C09A10989CFF37C759C035A5E0F74D9A279C7AF3B1F21592C167D7BFB4383B32F683E010000FFFF0300504B030414000600080000002100E51C87B6310100003E0500001C000801776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C7320A2040128A0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AC94CB4EC3301045F748FC43E43D7152A03CD4A41B84D42D840F7093C94324E3C89E02F97B86564D52A8CCC61B4B732DDF7BE4B167B5FEEADAE0038C6D3426220E231100E6BA68B04AC45BF67C752F024B0A0BD56A84440C60C53ABDBC58BD40AB880FD9BAE96DC02E68135113F58F52DABC864ED950F780BC536AD329E2D254B257F9BBAA402EA26829CDDC43A4279EC1A64884D9149C9F0D3D27FFEFADCBB2C9E149E7BB0E90CE44C85223656ADB029B2A5301256294422615F23CC4B54F080B447CBD7662382A2E843B9F08A5D604660238D4B12B7FE133DFD2D0F2431A9B70A85DF1B1CF78DC755B30DC838960945C104B9F108005721766B770545C08B73E117EDAFE8B61945C10373E213E61FBFAE747CC4417C8834F10E2A1351B0CFB52EED7F163C893A9977E030000FFFF0300504B03041400060008000000210006E7CB633D0500000817000011000000776F72642F646F63756D656E742E786D6CD4584F6FE34414BF23F11D463E2090D22476FED66CBC121B0AAB8510755B0447C776E2A1B6C78CC7C986AA270E1C38F5C0815BABD50A51B642AB5D09293970F07E117F13DE8CEDD44E9A3674059BBDC419CFCC6FDE9FDF1BBFF7EEDD7FE23A686CD10013AF23C9E5AA842CCF2026F6461DE9F0606FA72DA180E99EA93BC4B33AD2D40AA4FBDAFBEFDD9BA8263142D7F21802082F50C7306B33E6AB954A60D896AB0765E25B1E4C0E09757506433AAAB83A3D0AFD1D83B8BECEF0003B984D2B4AB5DA945218D29142EAA929C48E8B0D4A0232647C8B4A86436C58E923DB41373937D9D94D45162756A8E5800CC40B6CEC07199A7B573450D1CE40C6372931769D6CDDC4DFE43493EA13F087EB24624F08357D4A0C2B08E06D37995C20CAD59BCE4E0DC821163B3611A178662689AB636F01C3D9B1E4FF85F3CAE0BC4A727685435D2902B6D0804B03624EF9D3471315B868EE77A46AB5D690DB7257CA5EF5C1D1D56AFB41ADBDB7BB78D9B5867AE8B0D5E5FDDC6281DCA7FCF19D017063DDE9480650D7A25285BFA5C9E4400C821FB22535854F57D27978FAC93A7AAD481B034D54A61DC4B34B1F19C4E3F02C3944FCFA42D8EC8055BDF613332CD9E66633A48B858019720186CF303D515FC4B31AF8BA010EF5A91558746C49DA37D1EF0C3121750F05F1FC1406F317C8B37174E1A1D7A7F1ECB710313E3896CBE5DE49196D9F665A2F9EFD1DA25EA756424C4746F412B9F1FC5706FFCE0D1B1936D65315BDE86C8A981D9D793652D277E02C14E8049611AEFB2FDE48EC4B8D41098CF34B05C4209EBD80F79EAD876AC11EC0A9DB3DA11DCB25E5E42EFB6AC55D9CBA6F9D570BEBD7D75AFF8E36AA17B5DDD0B64A69ABADD4403689677F1928E5505358EDC88E5E09E2BDCC91B684C6D1F3759CB4759C27B5139D21B9011BCE902297508AC7EC78FE631200AF4FA357B85C20DD76D1A795C56E3D67822273B642609ED0ACDEA3C740BB52BDD43829DE8F1B72562E354BAD22DBB7595759E8DABC9BAE4AA9F16EE9CA05BEA3AE9C12DBE857EDB826942A5C071B7355D92EAD72591E044D3A5AA43DDAB7D145880C9EC7142F931BD5BD3EC8D103C81146383A478CC6F39F97433D802A881DE823C800428A37C8D7C506A68FA04A99A89663F1B20B9233077234913EDF904B68BD32FA3C7A3A2D7810D4CF64B825295CA31F8B2E21331269E055EE54468F92AF9383E3F94F0C1D451788F234EBDCC8DDD4DBF369B9850FDD78FE2712AA8405E3E5F8C0D3F356A3B1DBDD4BDC705546E408B6C684F00526EA3233168E5C425E93947BB648C8211BFD030D205945BE1D5DBA69522BBCB34EF2D5F4FF7A31F349FE3AACCD6435C329E4C1F1EC195BABF4AA505A0F7DA87CE0B08F7BFC47AE563F7A67E8F3086A0D86BE0FE3D9D337BF4FDECCF44F4008303BC4A2CB496247CF2178D7415EE384A4485A29FA782134C0424D5E4A0DA03612E520DCA28B7AEAFF765756A1AF4622CF93AE2DDFF3D5F1EAB65C61AC7D1D5D22339E3F2BFA9303DF565C6D5C9FA72262CF849B7E8869C0BEC0BCB3D252AA692F225342D4ECDAC35EFFF0608BE4691768F5564DF3D5E101D8E65FCB53E07F56A3FF07FECBA00BE7254E6D5D2B746019AC5FF8402C35810A4829FC63D8C4EFE74F3E6DEED576C5576A480834BEF6ADA145A1D56BC14236F5816266D24A931055B1D991E843B3C52907EC1E3DE62DB109F48715A50E1DE2896AC3FF461BFEA70BBED4B9608C403F53AE274B281ED97074361C10C6083457B3B1630D73B3B6A59B16F4F738CD01281171311C850C24063592E30CE204B0286D51A59121FAD19F51CCE3C68190E963668094B566163789F9346EDAA4DB087FB216B6F60F000000FFFF0300504B0304140006000800000021001F720A90A20100006B04000012000000776F72642F666F6F746E6F7465732E786D6CC453CD4EE33010BE23ED3B44BEB776AB5D40515304AA38A3B2FB00C671A885EDB16CA7D9BE3DE3B80EB0A0AADA0B97469E9FEF6766BABAF96B74B5973E28B00D59CC19A9A415D02AFBDC903FBFEF67D7A40A91DB966BB0B2210719C8CDFAC7C56AA83B806821CA5021860DF51ED3BB185D4D69103B697898839316931D78C3233EFD3335DCBFF46E26C0381ED593D22A1EE892B14B72848186F4DED647889951C243802EA6961ABA4E0979FC940E7F0E6FEEDC80E88DB47164A45E6AD40036EC940B05CDFC2F1A5ADC1590FD29137BA34BDDE0CE616B3D1F70214667D903F8D6791032048C6E7272425CB053DCC7012688A9E31C091F398B12C3959D60D279FCB3FF6979735C1ECDDC3441BD19C159ACDF1D5335D4F1E0102948C73D8FE0098654DB90D9622C74F8C46B6DB70D616C79B9609BFB54318636B2E3BD8E9F330F29F4EB8E5D5DDD6690079F4883E3022788EDBC8B12CF08AF7FA8B54A4E963FA7C7B6D718E07D0442D72B3AD42EB7678CA233A730960AC6DFF207F9D29F001B95EDC7FB7B2C18C52BCB2A8BAFCF86B6DF61F54BC9A76CE324CA0CC2FA150000FFFF0300504B030414000600080000002100A3BB4621A30100006504000011000000776F72642F656E646E6F7465732E786D6CC4544D8FDB2010BD57EA7FB0B82790A8DDADAC3851AB28E755DAFE008AF106151804386EFE7D0763BC6AB38AA2BDECC5D67CBD376F66ECCDEE8FD1D559FAA0C03664B564A4925640ABEC73437EFE382CBE902A446E5BAEC1CA865C6420BBEDC70F9BA196B6B51065A810C286FA8CD1538CAEA6348893343C2CC1498BC10EBCE1114DFF4C0DF7BF7BB710601C8FEA97D22A5EE89AB10732C140437A6FEB09626194F010A08BA9A486AE53424EAF52E1EFE1CD957B10BD91368E8CD44B8D3D800D27E54241336F454389A70272BE25E26C74C91BDC3D6CADE703EEC3E8DCF600BE751E840C01BDFB1C9C1157EC16F734C0043157DCD3C2BF9CA513C3959D61D275FCB7FF79794B5C1ECDDC3441BD08C1596C5F6EA91AEA78710814A4E39E47F0045DAA6DC86235E63934F156DB6343185B3FACD8FE903246D75E76BCD7F13AF2945C9FBFB1C7C7AF19E4C927CEE0B8C0016239EFA2C42BC2DB1F6AAD9290F5A7D938F61A1DBC8F40E8764387DAE5F28C51FACC21F4A584F1397D1EAFA91360A3B2FD787CDF0B4251CA728F45D5B59CE37B087DB5E51BA2710CE5FFB0FD0B0000FFFF0300504B0304140006000800000021007282F90A9E010000B303000010000000776F72642F666F6F746572312E786D6C9C52CD8ED33010BE23F10E91EFAD93AD80126DB25A51CAB562E101BC89D3186C8F359E26F4EDB1E32488455A559C127FE3EF673C73FFF0CBE86C90E815D88A15DB9C65D236D02A7BAED8F76FC7CD9E659E846D85062B2B76959E3DD46FDFDC8F65479805B6F5E5100A3D912B39F74D2F8DF05B70D2866207680485239EB911F8F3E2360D1827483D2BADE8CAEFF2FC3D9B65A06217B4E52CB131AA41F0D051A494D075AA91F36761E02DBE897980E662A4A5C991A3D4210358DF2BE71735F3BF6AA1C57E11195E6B62307AB937BA5BDC5A14631885D129F608D83A84467A1FD0432AAE8A45FE9AF7FC80516265DC12E16FCF258911CAAE3271315ECC7F1DDE360C8F276F1EA5FE3412DEA20E6BE4B2B10CEBD77EAD589EEFDE15FBE2C016E8203B71D1F46FE514A1BBE2C3F1B14822279CB49EE8AA65600F4257EC084012198F951FCD82A23AF714411EBC136DE292784EE074EA74FBA48C9BC494F514362D3B3D7EF99C4D76B8048C31F69F76FBE3C784273D0B2704E866B984515D44479A7C8345F85F3D62C0C9956ABECB9C384BFFF2AE4B0CC2FA37000000FFFF0300504B03041400060008000000210096B5ADE296060000501B000015000000776F72642F7468656D652F7468656D65312E786D6CEC594F6FDB3614BF0FD87720746F6327761A07758AD8B19B2D4D1BC46E871E698996D850A240D2497D1BDAE38001C3BA618715D86D87615B8116D8A5FB34D93A6C1DD0AFB0475292C5585E9236D88AAD3E2412F9E3FBFF1E1FA9ABD7EEC70C1D1221294FDA5EFD72CD4324F1794093B0EDDD1EF62FAD79482A9C0498F184B4BD2991DEB58DF7DFBB8AD755446282607D22D771DB8B944AD79796A40FC3585EE62949606ECC458C15BC8A702910F808E8C66C69B9565B5D8A314D3C94E018C8DE1A8FA94FD05093F43672E23D06AF89927AC06762A049136785C10607758D9053D965021D62D6F6804FC08F86E4BEF210C352C144DBAB999FB7B4717509AF678B985AB0B6B4AE6F7ED9BA6C4170B06C788A705430ADF71BAD2B5B057D03606A1ED7EBF5BABD7A41CF00B0EF83A6569632CD467FADDEC9699640F6719E76B7D6AC355C7C89FECA9CCCAD4EA7D36C65B258A206641F1B73F8B5DA6A6373D9C11B90C537E7F08DCE66B7BBEAE00DC8E257E7F0FD2BADD5868B37A088D1E4600EAD1DDAEF67D40BC898B3ED4AF81AC0D76A197C86826828A24BB318F3442D8AB518DFE3A20F000D6458D104A9694AC6D88728EEE2782428D60CF03AC1A5193BE4CBB921CD0B495FD054B5BD0F530C1931A3F7EAF9F7AF9E3F45C70F9E1D3FF8E9F8E1C3E3073F5A42CEAA6D9C84E5552FBFFDECCFC71FA33F9E7EF3F2D117D57859C6FFFAC327BFFCFC793510D26726CE8B2F9FFCF6ECC98BAF3EFDFDBB4715F04D814765F890C644A29BE408EDF3181433567125272371BE15C308D3F28ACD249438C19A4B05FD9E8A1CF4CD296699771C393AC4B5E01D01E5A30A787D72CF1178108989A2159C77A2D801EE72CE3A5C545A6147F32A99793849C26AE66252C6ED637C58C5BB8B13C7BFBD490A75330F4B47F16E441C31F7184E140E494214D273FC80900AEDEE52EAD87597FA824B3E56E82E451D4C2B4D32A423279A668BB6690C7E9956E90CFE766CB37B077538ABD27A8B1CBA48C80ACC2A841F12E698F13A9E281C57911CE298950D7E03ABA84AC8C154F8655C4F2AF074481847BD804859B5E696007D4B4EDFC150B12ADDBECBA6B18B148A1E54D1BC81392F23B7F84137C2715A851DD0242A633F900710A218ED715505DFE56E86E877F0034E16BAFB0E258EBB4FAF06B769E888340B103D3311DA9750AA9D0A1CD3E4EFCA31A3508F6D0C5C5C398602F8E2EBC71591F5B616E24DD893AA3261FB44F95D843B5974BB5C04F4EDAFB95B7892EC1108F3F98DE75DC97D5772BDFF7CC95D94CF672DB4B3DA0A6557F70DB629362D72BCB0431E53C6066ACAC80D699A6409FB44D08741BDCE9C0E4971624A2378CCEABA830B05366B90E0EA23AAA241845368B0EB9E2612CA8C742851CA251CECCC70256D8D87265DD96361531F186C3D9058EDF2C00EAFE8E1FC5C509031BB4D680E9F39A3154DE0ACCC56AE644441EDD76156D7429D995BDD88664A9DC3AD50197C38AF1A0C16D684060441DB02565E85F3B9660D0713CC48A0ED6EF7DEDC2DC60B17E92219E180643ED27ACFFBA86E9C94C78AB90980D8A9F0913EE49D62B512B79626FB06DCCEE2A432BBC60276B9F7DEC44B7904CFBCA4F3F6443AB2A49C9C2C41476DAFD55C6E7AC8C769DB1BC399161EE314BC2E75CF8759081743BE1236EC4F4D6693E5336FB672C5DC24A8C33585B5FB9CC24E1D4885545B58463634CC5416022CD19CACFCCB4D30EB45296023FD35A458598360F8D7A4003BBAAE25E331F155D9D9A5116D3BFB9A95523E51440CA2E0088DD844EC6370BF0E55D027A012AE264C45D02F708FA6AD6DA6DCE29C255DF9F6CAE0EC38666984B372AB5334CF640B37795CC860DE4AE2816E95B21BE5CEAF8A49F90B52A51CC6FF3355F47E0237052B81F6800FD7B802239DAF6D8F0B1571A8426944FDBE80C6C1D40E8816B88B8569082AB84C36FF0539D4FF6DCE591A26ADE1C0A7F669880485FD484582903D284B26FA4E2156CFF62E4B9265844C4495C495A9157B440E091BEA1AB8AAF7760F4510EAA69A6465C0E04EC69FFB9E65D028D44D4E39DF9C1A52ECBD3607FEE9CEC7263328E5D661D3D0E4F62F44ACD855ED7AB33CDF7BCB8AE889599BD5C8B3029895B6825696F6AF29C239B75A5BB1E6345E6EE6C28117E73586C1A2214AE1BE07E93FB0FF51E133FB65426FA843BE0FB515C187064D0CC206A2FA926D3C902E907670048D931DB4C1A44959D366AD93B65ABE595F70A75BF03D616C2DD959FC7D4E6317CD99CBCEC9C58B34766661C7D6766CA1A9C1B327531486C6F941C638C67CD22A7F75E2A37BE0E82DB8DF9F30254D30C1372581A1F51C983C80E4B71CCDD28DBF000000FFFF0300504B030414000600080000002100E94A7F78A80300007209000011000000776F72642F73657474696E67732E786D6C9C56DB6EE336107D2FD07F30F45CC7D4C5922CACB2B06CABDD22698B3AFB019444DB44445220693BEED7772889ABB86517419F449E337338C3CB8C3E7D7E63EDEC42A4A282E79EFF80BC19E1B568283FE6DED797729E7A33A5316F702B38C9BD1B51DEE7C71F7FF874CD14D11ACCD40C24B8CA44EE9D25CF547D220CAB39A3B5144A1CF4BC162C138703ADC9F8F1460F997B27ADBB6CB1189D1E444738A81D846458AB07218F8BC1732BEA33235C2F0284E285242DD610B03AD14E5935F67FD560A99315B97C2F890B6BADDDD547DFB31CD3BD0AD97CF3F84878C6A193A2264AC1CEB276489761CAAD8C6A3FA233ECE713AD2496B777228F706C7F09C166D7AC23B2860D85330F91B73044430EF8DCEA175CEDB5E8C0E48261B12418E9FA8425AE3591FB0ED710DD46702D456BED1AF19BD01BC13A09C10F82072134179AFC218DBC9D81036D726FEEDF1B8D70BFD862B21E7C096F26A171F20F9D7BD4CADC39C245ECB0EE7385FBDE28139519FC0971DA34100A977EEA6F87E00C3B312842CB3472329B305EAD5D8C1FA37235A67AAFE6EF42E4560B621F6D4B975AB08ECBA27031A19F4461E264FE339FA858A69BD4E5131571B47646B02C509238334D96CB953BEA749DA0B57347D34D98962B57046919C4EBD0C5AC8A24089DA7B0DA06DB9D739D629B6C02E7BE15BBB80C9D1114BB64E3663608158973DF3628F123E7696F519406CEA877898F0A37B34E92D879A66510A19D3382B208FCB4CF071ED178CB59664A9C7949C3A884973B63C3F3DE6056498A67CFA608C2D36059255F0BCA2D5F1128C6E43DB33F57969CCF074231DCB62554074B40FD1B9886AA6E4B0EBD70FB8CE57152EE9F28CBA413855AF4EB373553A788FC598A7337A85E25EEBEF00660BBA01F45A31EE5FA89328BAB73B5B75E1C6AE13BEACC9BDF2FD2082EA60DBA661ADA17313BF484F9D1BE7DC2E75FF7C6F49AD5ADDC9B16479E71D741190493EAE8E75E4B8F27ED7B30D5306BB07CED27D53118B9A0E76066B87E826B9319588F0363300CC16A1C4C5868B170C2228B4513B6B4D872C2628BC5063BDDA0F8B794BF422BB143831F44DB8A2B697EB160EEFD0B1A36010E5C42A338BE80253872CC8882AE40CE927EA02DF6DE1A1FA1750FBEB9D7B5E03D6A9F7047E0CE985E04255A64CA00637352B34B46DEA06B91866AF833E968C3F05BEE8528E99FD068DDE29B38EB3B5BA3648CBB3B74D6608DA107F6D7E0CE19AE05FCE2DCC7627A644DE1B2EF6FAC9A5ADFC310784B95DE930EBAA4161232EBDBE74FBDF2F4B3F4F837000000FFFF0300504B0304140006000800000021004AD88A92BB0000000401000014000000776F72642F77656253657474696E67732E786D6C8CCEC16AC3300CC6F17B61EF10745F9DF5304A485228A32FD0F5015C47690CB164246DDEF6F4356C97DD7A149FF8F1EF0F5F696D3E5134320DF0B26DA1410A3C45BA0D70793F3DEFA151F334F9950907F84685C3F8B4E94B57F07A46B3FAA94D55483B196031CB9D731A164C5EB79C91EA36B3246FF5949BE3798E01DF387C242473BBB67D7582ABB75AA04BCC0A7F5A79442B2C53160EA85A43D2FAEB251F09C6DAC8D9628A3F7862390A17457163EFFEB58F77000000FFFF0300504B030414000600080000002100DC867DE1E60A0000A15800000F000000776F72642F7374796C65732E786D6CCC5C5D73DBB6127DEF4CFF0387EFA9AD0F4B8EA74AC7B1EBC633899B46F6DC678A822CD614A992541CF7D7DFC502842092101722E4FAC532410007D85D9CC5825CFEFADB8F55EC7D67591EA5C9C4EFFD72EA7B2C09D379943C4EFC87FB9B77E7BE971741320FE2346113FF85E5FE6F1F7EFEE9D7E78BBC788959EE4107497E914DFC6551AC2F4E4EF270C95641FE4BBA6609DC5BA4D92A28E0327B3C49178B2864D769B859B1A438E99F9E8E4E3216070580E7CB689DFBB2B7674A6FCF69365F6769C8F21C46BB8A457FAB204AFC0F30BC791A5EB345B0898B9C5F665F337929AFF0E7264D8ADC7BBE08F2308AEE61E030C55594A4D9A7CB248F7CB8C382BCB8CCA360E2DF472B98EE1D7BF6BEA5AB20E13797BC5663B3302FB4DE3E46F3C83FE188F9BFD0EC7B104FFC7EBF2CB9E223D8298B83E4B12C63C9BB87E9EE4854D10CFA9DF841F66E7AC93B3BC16996BFDA74D73B93872B1CCA3A08417080132C0A060A047D709C38E28AEE8F47E5C5B74D0C05C1A64825087600607AB770599138E815B43C15560277D9E2731A3EB1F9B4801B131FB1A0F0E1F66B16A55954BC4CFCF7EF3926144ED92AFA14CDE78C1BA52C7B4896D19CFD6FC992879CCDB7E57FDDA089C91EC374931430FCD118AD20CEE7BFFF08D99A9B18749D045CC377BC41CCBBCD351C1CD026DA8E46145450B1F09F12B22774D888B264015F461E8EFF3580FA7C46B509588D75D0BD8B61F72ECEBA7781C6DB4D16E3EA28D038ADC409E4B9AB11FB2EB0853E117A17451A0AE3D39B0FDEEF3159DEA26645AD2D6A46D3DAA26623AD2D6A26D1DAA26601AD2D6A0A6F6D51D36F6B8B9A3AF7B6080324AEAA150D501A244BBC8F8A98F1F67B09A8D791EAA4ABF1BE0659F09805EBA5C71D6B75D8FBC872BA9915B4A1229D6E0E66E56991A5C963AB44C03BF3A57B30CCEFABF532C823D8D1B488BEDF51F4F7C12C66DE1F59346F853A13C6579B136E4C1A5DD8D73808D9328DE72CF3EED90FA1518BF677A93715BB8CD6C17554EBE7E8715978D325BADC56B09141E8664988FE3F4739CA60EF621A19A6D2D639498723835D9A3BFFC2E6D166558A86B01B19093EB75073050287B85F4443AEA2FAEA6A9D055700650AC25DD84F01FB278C5F3817FBFEB98E29E317AEE8C0FE09E3178EEBC0FED13EF6EBD79A69AE83ECC9232DAFB1F5DABD4AE3345B6CE2720DB4D2C3D87A052B08DA14AC17B1EA9F441263EB15BC439FDE651842E446B1536B5D6C79D402C55A1D0205171B7D2ED64AA9D05ECF6246D60AAA60F52DB0BA71AD059035E97E63DF237EF064EB0C90A5D55EB375390F0C12001744DA43FFB5498BF63D74DFC0795494DB048E4B72E6D1D0068695474593F624FC9D858EBB393E0BA06E1ED002A89B2BB40032D88779CFA37C221DA4BB73B4C0B2A665E5C5D0ECC8CC3CB666660564E7021CF94DC2FECBB07ACDB650F79B04146B05D5FD2601C55A3B155FA6FC2601CB99DF246019BC8659473AA7DA4CCADA6FEA406A274098911BF22600B9216F02901BF226007527EF761077E44DC0B2E606C5A93A791380B08A4DA8AF8074F22600597383603B796654FA3DEC657F70EB80BC0928D60AAA933701C55A3B26F2266061151B4BA86029AA2360B9216F02901BF22600B9216F02901BF22600B9216F025077F26E077147DE042C6B6E509CAA933701C89A1E14904EDE0420AC62C30D8DE48DABFEE8E44D40B156509DBC0928D6DAA910AADAA412B0AC1554C152E44DC0C22A36C620B1D0B86D26E586BC09337243DE042037E44D007243DE04A0EEE4DD0EE28EBC0958D6DCA03855276F0290353D28209DBC0940D6DCD048DEB8188F4EDE04146B05D5C99B8062AD9D0AA12A9E2360592BA882A5C89B8085F6D299BC094058E550209B19B9216FC28CDC903701C80D791380BA93773B883BF22660597383E2549DBC0940D6F4A08074F226005973432379E31A393A791350AC1554276F028AB5762A84AAC89B8065ADA00A96A23A02961BF22600A16176266F02105639000857918D9ADC903761466EC89B00D49DBCDB41DC913701CB9A1B14A7EAE44D00B2A60705A4933701C89A1BF87BB6F0BE28F9F5D49EC108A8EF19946F359001FB06255101E504BFB105CB209389B5BF1DD211B09CA105A2C13CA853FC98A64F1EEDC5EE81C140C850D12C8E527CA5FB05DFD2D1D26306E33D9904F77F5E799F44024CAD1D9AD4EE9B37903DA4A70B617A124F1C8271162F6B48D959976F96F3DE204188E775C91420CC43BB85842099D6C31BF33C1FA8884955B2189FDB4A54FC1F72DEE6659DD3D3E1C7D1F0F246CC0872C57827D94E76983901ACF14E98D78B1156CB001B72382D690B67D23277355B29DD1EA639E9F3DDE61D21DE2C806CA93F79F2534D1A09BCD2DD540E19604F65790973B50C32211DB30CCF2FC7A797D7A2964C327B626C7D0730389464B31292857F6E95ECD18C400AEA6EAE12D3660CD20741FBFD213E7393796AE2ED6D91A636D85EECA6A93D5FFC1D9673E06F333239FA7453F0969FBFC7E5DD53A905396283F22FB348A48C61CEDFC457D75CD1E242885BFCBDCAF1F789654AF20395F05722C38B69582BFF779B02286A75348ABED128E418DC1845DFA95144F156273255E495ED6496164BA191BA95E088402DC7B09208AD209236B32588ADC56CEDA37F2ECD15ED14067408690C8CF63110F377631F83A3D98734E337641F38A223D98766114856A0748D31FA23071631345A84E4283716313C9A4548C37D43168123AA59C46CC73FB468D6C55A3F336AF6CCE55A3F3B50B3CAEBEBF42F6DEE0D291347D4A24C138D0BCA3EC2A21D19558B94F07CE166D18E5CAA561ADDABA8B6EEC511BDA6C6EA461FB773DE4312C1873098F765CA630E7DDBA7DF12CB595BD4D07B17D72C3E5BD0B49F97E1961B9D8EB73ADD668797FB5299226EB5D16F5CC7D20C5F45D9DBEDFEBE6D5CE92BF76FE3AE82389A6591A677ADC4FC690F6D9756F2458B2984105505210F4E40F686B0562657AB7C174CADAE06B9860C6CB4CBBA82E5F67A7B5E2FEAEDE403421198B2617759F0ACE33D63C6ACE4BDF1B887558407AA0F103E0482436A1BA1CAE0C1DAC52C16F125FC739BF000133E248391A3384498FF0844B770FF8AC5F19720E3722CD2B5B96ACC163C46868E7AA778F25AE90A8CAD4857E6F61926261B3B0011EB8311977C1266D9C36A9AB10CBE2CB247FE77293FB1ACB907C8C7C672A16E759603A3C7B301AAD4CD63DBB1E770938368A6FC1CA77A54B373AA50B56579D3EB795B92AAB05EE39AC059359D5D08A5EF9EF7E867156D217FFB3780CA230090E47F741E60297911BA9B24DF77247919A6BD05C99B36675D626C4B998B70D824F3812399CB40E82DC8BC25BA297DB18D8F6CE71411629AA43C74246519A1584BB9E1236214766968663C609E210FCEEAA7494D6707C408D3D2D2453068D2C199231DC850E2EDEBC0C43D5D02434B8D8818CEA49191238DC8FDBEB5469A022ECAB2686A67BD2EFA87ECD5DB7948445826898F1D495C06850D3BE803373D5AA02343DEB20469654BE9426C95530D498BDDBF5F68883B761E03621DFEE0EF268504FDACB6DB5D88624187E6A760FA8E51F474A59E7535C8951C99ECAE82C159EFBC772D9422834F08A2F0D394F05BEEC0E5932AB85CA7F05C69383A97A4ADD5C18882EFFDB1CA7BFE040CA6C82307D9DFF6F9997C60862190785E269FA4F18BDDE765D01E87D57D6FAFC9B06AFDE25657D317BD0851921564D68661F7DFE072E58268B863249DEA7A01F1B66C779A4DFC6310C7699AE047B8AA5295F7C417BA6CAC5DEBF4954CBE93694AD1353C980F96F04556BE244A0DA902548CB8AAF0574F3A2BFD518A286BD711D5F95605BC4F735D57858675F4A5A1C47B24799724947FF83F000000FFFF0300504B0304140006000800000021005073ACAF8E0300004610000012000000776F72642F6E756D626572696E672E786D6CCC57DB4EDB3018BE9FB477A822E592E6D0F4B08A8038A81A134268630FE0260EB5F021B29D06F6F4FB1DC70102EADA52A471419AFF687FFF31C7A78F8C0ED6582A2278EA45C3D01B609E899CF0FBD4FB7DB7389A7903A511CF11151CA7DE1356DEE9C9D72FC7F59C576C8925080EC00657F335B0575A97F32050D90A33A486A2C41C9885900C697895F70143F2A12A8F32C14AA4C99250A29F82380C275E6B46A45E25F9BC3571C44826851285362A73511424C3EDC369C86DFC5ACD4B91550C73DD780C24A67006C1D58A94CA5963FB5A832BAE9C91F5A64BAC19757275B98DB75CA21A7066D41EBB16322FA5C8B05240BDB4CCCE62146EF2DD02684C741ADB1CE1B54F77128608EFCC98F4E8C5BF0BDE10821758DF8131F57C11C0E20492092D959628D337151BBC7ABBCA532F6C44B82239F0D688A65E7C3E8BE26972EE0546995554936BBCC6F4EEA9C44EA6A15243B5529A95D4F1A6F1C5D968349A590E5D1B068187F305292FB5138EAC14E4FB8275C41C6784A1D674F94B3FD1CEF1778C4CFDB46AAA2A0A67499528C39DCF3BFCD899F3A36147FF9139798A0B6DC9E5AD343725DC4060C8E6A4F0B32052E96B62B00F8D6450CF5B516935E44270AD4072453828E5B8408096359A092AA4F3B568FE2C43FD71D4B835DA5803E3809139C74BC4A2263A8740AC7156CFB746CC8F77066D3469605B217E0F214A3DF3BE1B6C00C20630E28381316A43B16DFA0018FEE8F3F1C854EADD1186D5E006D7839F8221E800EF66D7D2E55083703D5F5E98346CCAB7A590FEFB1B890C957D250555472FDEA16B491EBA1A6C3DE4D055DE5245A529944CCFBB5AA15CD43D22664BA1FA4720AC84B9D7D56EEB8B8B5B294457EB2D758D3851AB9E55D30720FD7AD4072C798F540A45CC84EA912BF7CE6128DB3C8119AECF28B9EF44974861734BCBC6A6AD36D83B95CD793C3A581E277BE5B1DFAA41A3D9B21D7E766527074364BC2722437FFCF9F5FD664C6CCE93F1C150997C00157FB233301F9D9E9B61991C0C96E9C760F1A7FF1932D37D90812ED05B96ECB4F3135313107DB8A63FDBEAA61A364DB3C1C0B3EB881533230C7A6DEA25A3B869DC105E27F972E74AA23069C69DDB1FA2386E3A15C86FBB776DCE9CD9E1F1893A80FC6F87C0681C261B319ACC5EEF5851D2C9EF8B1160F6E20BC1C40FB6718819FC371F0876057D217165D6E4E75503D441F28D9A5DD67656B3B37167353B407656B31D766735DB817656B3E5F96F358BA8FDFE3FF90B0000FFFF0300504B03041400060008000000210039F0804A4E0100007F02000011000801646F6350726F70732F636F72652E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C92CD4EC3301084EF48BC43E47BE224A50545492A01EA892210AD40DC2C7B9B5AC43FB2DDA67D7B9CA40DA9E0C0713DE36F67D7CEE70751077B30962B59A0248A5100922AC66555A0F56A11DEA1C03A2219A99584021DC1A279797D95539D5165E0C5280DC671B08127499B515DA0AD733AC3D8D22D086223EF905EDC282388F3A5A9B026F48B5480D3389E61018E30E2086E81A11E88E884647440EA9DA93B00A3186A10209DC54994E01FAF0323EC9F173A65E414DC1DB59FE91477CC66B41707F7C1F2C1D8344DD44CBA183E7F823F964F6FDDA82197EDAE28A0326734A3068853A67CDD11593D578AE67874DA6EB026D62DFDB2371CD8FD716CFC2DB67E037BDEBE5499E6785CFA6EDD707D4B60818F9BF5C39D95F7C9C3E36A81CA344ED2309E86E96C954CB3E4268BE3CF36D7C5FD367E7F204EE9FE4D4C6F2F896740D925BEFC32E537000000FFFF0300504B030414000600080000002100592C69FDFC0100002B07000012000000776F72642F666F6E745461626C652E786D6CBC94DB6E9B401086EF2BF51DD0DE372C8738B6151C398EB96B2F5AE701D678312BED01ED10D3BC7D875D8CA23A6E4CA3C4C8087E6687E1DB99FFF6EEB792C1815B10466724BAA224E0BA303BA1F71979DCE4DFA6248086E91D9346F38C3C7320778BAF5F6EDB7969740301AED730B719A99AA69E87211415570CAE4CCD353E2B8D55ACC15BBB0F4D598A823F98E24971DD8431A593D072C91A7C3754A206D2676B2FC9D61ABBABAD29380016ABA4CFA798D064D15717B473CD1456BD118A43F083B7C14FA3980FA89936C0238C393099111AE331A109BDA629FE63BC4A49D8652A2A6681374320F572C99490CF47D5BABC2EBE164D511DF503B3826D25F76B40ECF1C1136C6946D694D27899E7C42B514656A8DC4CD3A857622CCAFF66BD920C0A6E1316E6F2B890C8E74105F3F4AB5C9DA1DFA713222B26C5D60A87EA9444EE08744452E480E71124A015003EFE521211561CBF2491A2B05C0DCA28123347F472124BDC207986C33D76448ADF7F3C3E984387E1B58E483EA3231C87E0510B9C7E1E7CFFF52E24D35787647C6BE437798E445E0CC97AF680F78332B446728C393324494E470FC9865538D6FF04E1FDA2EB910FEE0D9C91783D7C76EF16137A7DFF776FC46FB945341EC48A29348B73243ABFF41C3AFF1C47E2FF7CF3D42D683AB0195A823A9744B73DD312386ED19B6ED11B282CFE000000FFFF0300504B03041400060008000000210029E9723BE0010000DD03000010000801646F6350726F70732F6170702E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009C534D6FDB300CBD0FD87F307C6FE404FD180246C59062E8615B0BC46DCF9A4C27C2644990D8A0D9AF1F65378EB3ED349FDE2369F2F99186DBB7CE167B8CC978B72AE7B3AA2CD069DF18B75D954FF5978B4F659148B94659EF70551E3095B7F2E307788C3E602483A9E0162EADCA1D51580A91F40E3B95669C769C697DEC14318D5BE1DBD668BCF3FAB54347625155D702DF085D83CD45181B9643C7E59EFEB769E375D6979EEB4360C1126AEC825584F27B9663678DA70EC41885DA93B2B5E950CE171C1F193CAA2D263907310078F1B1615E55200608EB9D8A4A135B28AF6EAE404C387C0EC11AAD88CD95DF8C8E3EF9968A87DE8622BF0F625A026CCD06F56B3474903C614AE1AB71ACE412C400585954DBA8C2EE5DDEC860A395C5357FBF6C954D08E214807B5479B78FCAB05ED8D3728F9A7C2C92F9C5DB5D94C50F9530BBB62AF72A1AE588DDCB6503E9B10D89A2AC0D59EECDB981F7705A36C5E6327BC8B50CCE0B7370D0C0897375FD84F4D0F297D23FC4CEA7627B0D83D4899C091C67FCD175EDBBA0DC81878F880DFE999E42EDEFF2C5BC7B781E9C6CFDC5D06E1394E6E55CDFF07A4EFB9F6460C357820D2FF4D8EF14807BB63BDA3C94DF755B6C8E357F27F2453D0F7F2B5FEAACE2A73FA1638CEF74FC8DE46F000000FFFF0300504B01022D00140006000800000021004A9274E9930100002D0700001300000000000000000000000000000000005B436F6E74656E745F54797065735D2E786D6C504B01022D00140006000800000021001E911AB7F30000004E0200000B00000000000000000000000000CC0300005F72656C732F2E72656C73504B01022D0014000600080000002100E51C87B6310100003E0500001C00000000000000000000000000F0060000776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C73504B01022D001400060008000000210006E7CB633D05000008170000110000000000000000000000000063090000776F72642F646F63756D656E742E786D6C504B01022D00140006000800000021001F720A90A20100006B0400001200000000000000000000000000CF0E0000776F72642F666F6F746E6F7465732E786D6C504B01022D0014000600080000002100A3BB4621A3010000650400001100000000000000000000000000A1100000776F72642F656E646E6F7465732E786D6C504B01022D00140006000800000021007282F90A9E010000B3030000100000000000000000000000000073120000776F72642F666F6F746572312E786D6C504B01022D001400060008000000210096B5ADE296060000501B000015000000000000000000000000003F140000776F72642F7468656D652F7468656D65312E786D6C504B01022D0014000600080000002100E94A7F78A8030000720900001100000000000000000000000000081B0000776F72642F73657474696E67732E786D6C504B01022D00140006000800000021004AD88A92BB000000040100001400000000000000000000000000DF1E0000776F72642F77656253657474696E67732E786D6C504B01022D0014000600080000002100DC867DE1E60A0000A15800000F00000000000000000000000000CC1F0000776F72642F7374796C65732E786D6C504B01022D00140006000800000021005073ACAF8E030000461000001200000000000000000000000000DF2A0000776F72642F6E756D626572696E672E786D6C504B01022D001400060008000000210039F0804A4E0100007F02000011000000000000000000000000009D2E0000646F6350726F70732F636F72652E786D6C504B01022D0014000600080000002100592C69FDFC0100002B070000120000000000000000000000000022310000776F72642F666F6E745461626C652E786D6C504B01022D001400060008000000210029E9723BE0010000DD03000010000000000000000000000000004E330000646F6350726F70732F6170702E786D6C504B0506000000000F000F00BE030000643600000000, NULL)
INSERT [dbo].[File] ([ID], [Name], [Type], [Content], [Length]) VALUES (6, N'CapSo.docx', N'.docx', 0x504B03041400060008000000210030C9280C72010000A5050000130008025B436F6E74656E745F54797065735D2E786D6C20A2040228A000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B454C96EC23010BD57EA3F44BE5689A187AAAA081CBA1C5BA4D20F30F604AC7A93C76C7FDF49A051D542900A5C2225E3B7F8E5D983D1DA9A6C0911B57725EB173D9681935E69372BD9C7E425BF671926E19430DE41C936806C34BCBE1A4C36013023B4C392CD530A0F9CA39C831558F8008E26958F56247A8D331E84FC1433E0B7BDDE1D97DE2570294F35071B0E9EA0120B93B2E7357DDE3A896090658FDB85B556C94408464B91C8295F3AF54B25DF2914846CD6E05C07BC211B8CEF55A827870576B8378A266A05D958C4F42A2CD9E02B1F15575E2E2CEDA1E8A6D9E3D3579596D0E26BB610BD0444CADC9AA29D58A1DDB7FF833EDCC24E2112F2FC465AEAA326306D0CE0F91D6C79BBE429AC71F4013995E3647DA8EBA740E5F43F02C4A4A1EDCFC1FC1152A2F42FB1F91D73D7F69B2A263A74C09B67FFE40C1A9AA392159DCB89981A3859EF4FFD5BEAA32656307DBF58FA3FC8BB8CB4FD933EFE238CEF3BAB46EF691D6F2ED9E117000000FFFF0300504B0304140006000800000021001E911AB7F30000004E0200000B0008025F72656C732F2E72656C7320A2040228A0000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C92DB4A03410C86EF05DF61C87D37DB0A22D2D9DE48A17722EB038499EC01770ECCA4DABEBDA320BA50DB5EE6F4E7CB4FD69B839BD43BA73C06AF6159D5A0D89B6047DF6B786DB78B075059C85B9A82670D47CEB0696E6FD62F3C9194A13C8C31ABA2E2B38641243E226633B0A35C85C8BE54BA901C4909538F91CC1BF58CABBABEC7F457039A99A6DA590D6967EF40B5C758365FD60E5D371A7E0A66EFD8CB8915C807616FD92E622A6C49C6728D6A29F52C1A6C30CF259D9162AC0A36E069A2D5F544FF5F8B8E852C09A10989CFF37C759C035A5E0F74D9A279C7AF3B1F21592C167D7BFB4383B32F683E010000FFFF0300504B030414000600080000002100B3BE8B1D09010000B60300001C000801776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C7320A2040128A0000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000AC93CF4AC43010C6EF82EF10E66ED3AEBA886CBA1711F6AAF501D276FA079BA424B36ADFDEA1B0DB2E2EF5D24B60BE90EFFBCD30D9ED7F4C27BED087D65905491483405BB8B2B5B5828FECF5EE0944206D4BDD398B0A060CB04F6F6F766FD869E247A169FB20D8C506050D51FF2C65281A343A44AE47CB3795F3461397BE96BD2E3E758D7213C75BE9E71E905E788A43A9C01FCA7B10D9D073F2FFDEAEAADA025F5C713468E94A840C48C49D05F6D4BE4652705222E604791D61B32A020D1DCF700218EBA5F864CD787B34397A9EC14470969620B66B4210AF074E006329C7335962785C93A17296329D77338EB3B404F1B026C437E6EF7F5672269E40E4C56F4B7F010000FFFF0300504B0304140006000800000021006A099EFE0C0600000419000011000000776F72642F646F63756D656E742E786D6CEC58CF6FDB3614BE0FD8FF40E830AC4062D99913045AEDC271B626E8E0186B929D658AB6B448A4465176BCDBB0C38E5BB0C330ECD222288AFD08BA6EC506D8871D14ECFFD07FB2475272A246491337415BAC3D9432A9F7F8F8BD8FEF7BCAED3BFB818F8684471EA30DA356A91A8850CC1C8F0E1AC6CEF6C78BAB068A844D1DDB6794348C31898C3BCD77DFB93DB21C86E3805081C0058DAC21ACBA4284966946D825811D555848282CF6190F6C013FF9C00C6CBE17878B9805A12DBC9EE77B626C2E55AB2B46E686358C98532B73B1187898B388F58534B158BFEF61920DB905BFCCBEDA723D0B59ED6872E2430C8C46AE1746B9B7605E6F7044377732BCE810C3C0CFDF1B8597D9CDE1F608F211F83AEC11E34EC819265104B3EB7A71E6B156BD68EF0C40E962667199108A7BE69104B647676E243B9ECBFF2C7915489EA9F736A5AB938300164DE0528F39633986686401179D4F1B46B5DAAEAE2CD7978C7CAA0B893E33B94EFA76EC8BB32BDD5353CA7397CBE1730CEE86B6DF3030509770C394B35C2FF6D48F5E3B82D1CC66610CF52A2F0DE405E6234B34DBE9E4AF2EBA9F4EBF935E85F6ADFE0F5564B9DF5311E753D772E6FC74739FAB60A84EE43224F8BFBFA7D39F300AD2E98F0245E9F400D1413C4E7EA1A883DEAFBDE78B0FE1410DABD55B15B4911C8E91487E0B9048278F04C2E9E410E1E421964F7F87450F38F9132D23ECA6D3277AA1B580D69080DFDFDADAE8F8C04BA75FC5680F866F288AECD87A35F0D238D004F1FCA19FB3ABAA89056B9B4E3EB72AE7800133836B4F8CACA15614DA18EE62C84944F890184DD432D750432605B50052CF06248F0F92091DA05E3A790A43E756E52D76E5D8B515414F7888D3E9631B70DC73E50275ED18E83CFD154004489F79FA36BC45F31C2696A3B9F65AA2F9D2B7B3444DA0789623B3D9E9EE6C5BA8700B41814EABCB992ADC71D3C951A8E8877AC9038A4237390A16D0E0792FA56A72A1EB74FA7D00E4D615D649FE007A4399FFC143FAD94F1E5C54F63BB2E8CB9A5F08442AE98BF4EEAA72FEA21C9D3E64793A9A5B3BDB007D215200FEEA90596817E4501500C0A903FAC800B54D1AC66201EDC74AF2B87D8EF6B51640DCA4341E1F48553DC42075043416EACECF32C14F9138FE1ADC39E9E43105BDD43548A744ABA7E052786BC805220CB435BCFC109EF7E53F646663A353419D74F20F08A79B3C8365A9B427E161375679BEB7B1D5B98BDA5B15740F5E16E80B3800A8B5DA586F2B48041A0E45D0D55550B7019A1F82A793277470F5FCBFA6FDCE6E7204D04F1F957718A2E74B9EC1A0FB0078F80CF833827E4E36AF621C821CDBB160BA2780E535E881E19B4B5931D9F3AA8E54B6F33E9126D1970DA3AE1EB4962B3F98F90C5AE013473EE98B796D7B4C0816CC6BCDBD813BF7D61E85069F6CCCBBB736DF9DCF5CF6DF45F87BFE278CEDE5DEAAF596EADCF47BB374DEE59E23933580B1CD649307C9ADD797544777CEB476915B8A5945B96497BFADBE76D657563EAAAFAB4F2491D53AC137C869F83FA82F677DE5EC0DAC8885B3F0714646152F84AEF9E8ECDBB959F6E28D7F7BE5C5BAA4104B6DD0E1CE702A940279A00BCCE150CD76AB7B7FAB023A5A28E5D27153CD64A0FC7FA101A13B1F1AC956D56DDC1C516BB5E5378DA98596EB2A1C2D184A76AED44AB0076EC27DBCD1BF77E497A610D0CB9D64A9E424923E6FC405BB3E1CF20EA9048D6BC9EB7F000000FFFFD452DB6E83300CFD15C40F94863B2A3CACBB3C4D42EB1770091789362818A1EDEBE738B0A56AFBB2B7BDC439767CEC63C75A1239F5759EDA8E737402DF63767658923197CA486DCAE3B4CB0EBB15A3A5B0B2F476E5F8303836572EEF389F7953CC03DC46FED2053675B7D8C3F69704B230F6BDC0DA59CE9E45AE955A0153EA406BA4F3BF2A8BBDD0D5CA7C163D52A6B456241370CD0A95C3CD269F5E825737B6B7E11A4BBB8E984BC35FB22413AF20FF598ADAF275C209E386970AB7A72F2CB4A4F69E31CF51453BBCFB11DE89736CDF0B45096244BFA79FC8BEED906983A50010E75F3CF0C68876BCA839FEC690117D230418B09D81E05AAE12C384D5A6B1A8B84EA12E6A51BDC9BEC6C8D05F78DE43855DBA0125E114B5701A6829EA4FBA60CA7CE617C8BE010000FFFF0300504B03041400060008000000210096B5ADE296060000501B000015000000776F72642F7468656D652F7468656D65312E786D6CEC594F6FDB3614BF0FD87720746F6327761A07758AD8B19B2D4D1BC46E871E698996D850A240D2497D1BDAE38001C3BA618715D86D87615B8116D8A5FB34D93A6C1DD0AFB0475292C5585E9236D88AAD3E2412F9E3FBFF1E1FA9ABD7EEC70C1D1221294FDA5EFD72CD4324F1794093B0EDDD1EF62FAD79482A9C0498F184B4BD2991DEB58DF7DFBB8AD755446282607D22D771DB8B944AD79796A40FC3585EE62949606ECC458C15BC8A702910F808E8C66C69B9565B5D8A314D3C94E018C8DE1A8FA94FD05093F43672E23D06AF89927AC06762A049136785C10607758D9053D965021D62D6F6804FC08F86E4BEF210C352C144DBAB999FB7B4717509AF678B985AB0B6B4AE6F7ED9BA6C4170B06C788A705430ADF71BAD2B5B057D03606A1ED7EBF5BABD7A41CF00B0EF83A6569632CD467FADDEC9699640F6719E76B7D6AC355C7C89FECA9CCCAD4EA7D36C65B258A206641F1B73F8B5DA6A6373D9C11B90C537E7F08DCE66B7BBEAE00DC8E257E7F0FD2BADD5868B37A088D1E4600EAD1DDAEF67D40BC898B3ED4AF81AC0D76A197C86826828A24BB318F3442D8AB518DFE3A20F000D6458D104A9694AC6D88728EEE2782428D60CF03AC1A5193BE4CBB921CD0B495FD054B5BD0F530C1931A3F7EAF9F7AF9E3F45C70F9E1D3FF8E9F8E1C3E3073F5A42CEAA6D9C84E5552FBFFDECCFC71FA33F9E7EF3F2D117D57859C6FFFAC327BFFCFC793510D26726CE8B2F9FFCF6ECC98BAF3EFDFDBB4715F04D814765F890C644A29BE408EDF3181433567125272371BE15C308D3F28ACD249438C19A4B05FD9E8A1CF4CD296699771C393AC4B5E01D01E5A30A787D72CF1178108989A2159C77A2D801EE72CE3A5C545A6147F32A99793849C26AE66252C6ED637C58C5BB8B13C7BFBD490A75330F4B47F16E441C31F7184E140E494214D273FC80900AEDEE52EAD87597FA824B3E56E82E451D4C2B4D32A423279A668BB6690C7E9956E90CFE766CB37B077538ABD27A8B1CBA48C80ACC2A841F12E698F13A9E281C57911CE298950D7E03ABA84AC8C154F8655C4F2AF074481847BD804859B5E696007D4B4EDFC150B12ADDBECBA6B18B148A1E54D1BC81392F23B7F84137C2715A851DD0242A633F900710A218ED715505DFE56E86E877F0034E16BAFB0E258EBB4FAF06B769E888340B103D3311DA9750AA9D0A1CD3E4EFCA31A3508F6D0C5C5C398602F8E2EBC71591F5B616E24DD893AA3261FB44F95D843B5974BB5C04F4EDAFB95B7892EC1108F3F98DE75DC97D5772BDFF7CC95D94CF672DB4B3DA0A6557F70DB629362D72BCB0431E53C6066ACAC80D699A6409FB44D08741BDCE9C0E4971624A2378CCEABA830B05366B90E0EA23AAA241845368B0EB9E2612CA8C742851CA251CECCC70256D8D87265DD96361531F186C3D9058EDF2C00EAFE8E1FC5C509031BB4D680E9F39A3154DE0ACCC56AE644441EDD76156D7429D995BDD88664A9DC3AD50197C38AF1A0C16D684060441DB02565E85F3B9660D0713CC48A0ED6EF7DEDC2DC60B17E92219E180643ED27ACFFBA86E9C94C78AB90980D8A9F0913EE49D62B512B79626FB06DCCEE2A432BBC60276B9F7DEC44B7904CFBCA4F3F6443AB2A49C9C2C41476DAFD55C6E7AC8C769DB1BC399161EE314BC2E75CF8759081743BE1236EC4F4D6693E5336FB672C5DC24A8C33585B5FB9CC24E1D4885545B58463634CC5416022CD19CACFCCB4D30EB45296023FD35A458598360F8D7A4003BBAAE25E331F155D9D9A5116D3BFB9A95523E51440CA2E0088DD844EC6370BF0E55D027A012AE264C45D02F708FA6AD6DA6DCE29C255DF9F6CAE0EC38666984B372AB5334CF640B37795CC860DE4AE2816E95B21BE5CEAF8A49F90B52A51CC6FF3355F47E0237052B81F6800FD7B802239DAF6D8F0B1571A8426944FDBE80C6C1D40E8816B88B8569082AB84C36FF0539D4FF6DCE591A26ADE1C0A7F669880485FD484582903D284B26FA4E2156CFF62E4B9265844C4495C495A9157B440E091BEA1AB8AAF7760F4510EAA69A6465C0E04EC69FFB9E65D028D44D4E39DF9C1A52ECBD3607FEE9CEC7263328E5D661D3D0E4F62F44ACD855ED7AB33CDF7BCB8AE889599BD5C8B3029895B6825696F6AF29C239B75A5BB1E6345E6EE6C28117E73586C1A2214AE1BE07E93FB0FF51E133FB65426FA843BE0FB515C187064D0CC206A2FA926D3C902E907670048D931DB4C1A44959D366AD93B65ABE595F70A75BF03D616C2DD959FC7D4E6317CD99CBCEC9C58B34766661C7D6766CA1A9C1B327531486C6F941C638C67CD22A7F75E2A37BE0E82DB8DF9F30254D30C1372581A1F51C983C80E4B71CCDD28DBF000000FFFF0300504B0304140006000800000021009C60E67F370300000408000011000000776F72642F73657474696E67732E786D6C9C55DB8EA338107D5F69FF01F1BCE918422041931E0512F6A2EEDDD166E6030C3889D5F822DB493AFBF55B063C746BBCA3D13E619F53755CE572151F3EBEB22EB812A5A9E09B307A40614078235ACA4F9BF0CBE76AB60A036D306F712738D98477A2C38F8F3FFFF4E1966B620C98E90024B8CEC526BC289EEBE64C18D633461B25B4389A5923582E8E47DA90F1138E1E6A139E8D91F97C3E3A3D084938A81D8562D8E807A14EF3C173279A0B23DCCC6384D2B9221D3610B03E53A99D1AFBBF6A70D4D9895CBF97C49575CEEE16A1EF598EE9DE846ABF7AFC4878D6412AD110ADE1665937A4CB30E54E46773FA233DCE713AD1556F737228F50B67F8460C12D97443570A150F3050AE79668C9115F3AF319D7072324985C311C96C523DD9CB1C28D21EA207103D195821B253A67D78A3F852905930A821F04A1F0129B5E1BDE57ABED2176F1B710C6B92154A27499C483876527062568B94ABC4CB948D75B1F13A5A85A475E66BF407EB5789B5645E1F349B2B85CA65EA658AECA959F49936DE56356DB0C6D775EA68AD3EDC2C7AC8B2C5E78EF60BD8B777BAF5AB1CBCAD89B4FB14FABC5DA774EB1CF4A3F53225464DE4CFFBB723B94AC626FD4FB2C42859FD966599AF962ABE204EDBD1154451CADFA7CE6C3D38237C672DBD09F945B55F04E03363CE612B35A511C3CDB968787C9F25ABD14943BBE26307AC85BE670A91D399B0D8466B8EB2AE8054740B70F4C4BB5DC91632FDC3D63759A94FB2662B9F2A2D0797F7C55B35D49D4AF4A5CE4A07A5358FECE5B80DD8151928C7A949B27CA1CAE2FF5C17971E8FC37D485B77F5D95159C4F1774CB0D0C6B626FE809F393EB3CC2675F0ED6F496379D3AD8814E9EB194D0F460529FA24DD8D1D3D944216C0DEC5AAC5EFA4D7D8A472EEE39D859AEDFE0C66606D6E3C21A0C4BB01A1713B670D862C212872513B674D872C25287A5163BDF61D47594BFC0E0744B8B1F45D7891B697F73E026FC061A2E419FB12450573B1DE18189BC07C671A9836B4E5E618E92961AF8574ADA32FCBA0963B4EC6B345A77F82E2EE69DAD55B2C6F21D1AB4D86098CA7DA9DE3943E9E0A7FB3E163BB51B0A0FF27067F5348C1F86C03BAACD814898DB462848B91FE8BFF4CAD3EFFBF15F000000FFFF0300504B0304140006000800000021004AD88A92BB0000000401000014000000776F72642F77656253657474696E67732E786D6C8CCEC16AC3300CC6F17B61EF10745F9DF5304A485228A32FD0F5015C47690CB164246DDEF6F4356C97DD7A149FF8F1EF0F5F696D3E5134320DF0B26DA1410A3C45BA0D70793F3DEFA151F334F9950907F84685C3F8B4E94B57F07A46B3FAA94D55483B196031CB9D731A164C5EB79C91EA36B3246FF5949BE3798E01DF387C242473BBB67D7582ABB75AA04BCC0A7F5A79442B2C53160EA85A43D2FAEB251F09C6DAC8D9628A3F7862390A17457163EFFEB58F77000000FFFF0300504B0304140006000800000021000F74B7A9FD0900009B5200000F000000776F72642F7374796C65732E786D6CCC5CD172DBB6127DEF4CFF81A3F7D4B6244B89A74AC7719AC633899B46F6DC678A822CD614A992541CF7EBEF620142102988BB229CFAC536410207D83D380BC05CFEFADBF755127C13791167E9A477F6CB692F106994CDE3F47ED2BBBBFDF0EA752F28CA309D8749968A49EF4914BDDFDEFEFCD3AF8F1745F99488228006D2E2229FF49665B9BE383929A2A55885C52FD95AA4706F91E5ABB084CBFCFE245B2CE248BCCFA2CD4AA4E549FFF47474928B242C01BC58C6EBA2A75B7BA4B4F698E5F3759E45A228A0B7AB44B5B70AE3B4F716BA37CFA2F762116E92B29097F9975C5FEA2BFCF5214BCB2278BC088B288E6FA1E330C4559C66F9C7CBB4887B704784457959C4E1A4771BAF60B837E231F89AADC254DE5CCAA7F6568B8AD26AED5D3C8F7B2712B1F817AA7D0B9349AFDFAF4AAE640F76CA9230BDAFCA44FAEA6EBADB135334837627BD307F35BD948D9DE030ABDFD670D73B83872BECCA3A8CC07080132E4A010E047F489C24968EEE8F47D5C5D74D0205E1A6CC340836006076B37059B338F815BC3C552C81BB62F1298B1EC47C5AC28D490FB1A0F0EEFA4B1E67795C3E4D7A6FDE484C289C8A55FC319ECF8524A52EBB4B97F15CFC6F29D2BB42CCB7E57F7D408AE916A36C9396D0FDD118599014F3DFBF47622D29064DA7A1F4F08DAC90C8660B0B073BB489B7BD510535542CFCA7823C533EDC8BB214A19C4601F6FF4700F5E5881A0360F575D0BD8961F726CEBB3781E4ED668B71BD17484E9639413C773DC26F026BD803A137516691229F5D7DF0E60065658D068B5A6B3448D35AA3C191D61A0D4AB4D66830A0B546C3E1AD351AFE6DADD170E7C11A5188C25567D100AD4162E26D5C2642D63F2840671DA54E879AE04B9887F779B85E0632B0D6BB7D482CA79B5949EB2ACAE9E668559E967996DEB75A04A2B39CBA47C3FCBE5A2FC32286154D8BE9FB1D4D7F1BCE1211FC91C7F356A87345BEC6987061B237847D49C2482CB3642EF2E0567C571E65D4BFC982A95A65B476AEA35B3FC5F7CB32982E31E4B6828D1C46775B42B5FF292ED0060727D3C83194B6C6493E1C3978E96EFCB398C79B55651AC26A64A4F49CE1E61A0476F1B08986D245CDD9D53A0AE900CA1054B8E00F01DB27F45F05177EFBD2C794FEAB507464FB84FEABC07564FBC88FC3FE652BCDFB307F0848D36BCC9EBB575992E58B4D52CD81567918B367B081A00D813D894DFB249118B367F08E7C069751043B370A4FD9BED8EA280385ED0E8582938D3E16B6536AB277C61811DB4135AC3E03AB9BD63280D8A2FB557C8BE5C1133718A04A9BB566EB741E382C002188B486FE6B9395ED6BE8BE43F3A828D7291C971422A0A10D1C338F8AA6F9A4E21DC3C7DD021F03A85B046400750B850C20073FDC6B1E1313E920DD8323038B2DCB268A21EDC8CA3C662BB301E285004F7193B0FE72CC5E37179A719380C27650336E1250D8DEA9C53213370958DEE22601CB1135DC3EB23595332876DCB481CC4A8030223FE24D00F223DE04203FE24D00EA2EDEED20FEC49B80C5D606A3A9B6781380F011CE56DF00D9E24D00626B83523B7D6654C53D6CE5F0E6D683781350D80E6A8A370185ED1D977813B0F0110E136A5846EA08587EC49B00E447BC09407EC49B00E447BC09407EC49B00D45DBCDB41FC8937018BAD0D46536DF12600B1E5C100D9E24D00C24738DAB057BC71D63FBB781350D80E6A8A370185ED9D9AA09A452A018BEDA01A96116F02163EC22183C642727306E547BC0923F223DE04203FE24D00F223DE04A0EEE2DD0EE24FBC09586C6D309A6A8B3701882D0F06C8166F02105B1BF68A374EC667176F020ADB414DF126A0B0BD531354A373042CB6836A5846BC0958C897CEE24D00C2478E05E28CC88F781346E447BC09407EC49B00D45DBCDB41FC8937018BAD0D46536DF12600B1E5C100D9E24D00626BC35EF1C639F2ECE24D40613BA829DE0414B6776A826AC49B80C576500DCB481D01CB8F78138090989DC59B00848F1C0184B388E3263FE24D18911FF126007517EF76107FE24DC0626B83D1545BBC09406C793040B6781380D8DA20DFB385F745C9AFA79E3948407DCFA07AAB810CD87738890AA807F8552C440E994CA2FDED908E80D50819880E7A5087F82ECB1E02DA8BDD030741C850F12C89337CA5FB09DFD2B1D26306E3039904B77F5E051F55024CA31E526AF7CD1BC81EB2D385303D49260E413FCBA735A4ECACAB37CB656B902024F3BA740A10E6A15D4342904EEB9195659E0F3C884955BA18FF6FAB51F16FC8799B57CF9C9E0EDF8D86971FD48820574C3692EF6487B913C0F6DE898A6631C25A1960430967256DE1485AC66E46ABAD7B86694EF678B7794788370B215BEA4F99FCD4B0460AAF74EF2B870CB087AABC82B95A86B9B28EDB86AF2FC7A797EFD5533AC9EC4188F50DC06057D2CD4A5916FEB836B6471A8115CCDDC224A6CD04A40F82F7FB43FC9F9BCE53536F6FAB34B5C1F662374DEDF1E2EFA81A837C9B51E8DE679B52D6FCF42DA9EE9E6A2FE81E3B9C7F99C72A650C73FE263D732D1DAD2E94B9D5CFAB027F3F88DC587E6012FE2A6478310D9F2AFEDDA600AAA73A92A2EF2485EE831F52F4BD92224EB63ED1A9223F9827B3AC5C2A8F3459823D02B73C074B626441AC39B315882D63B6FCE8BFD674459E42878E118D81931F03357E3FFC183C1B3F348D5F103FB047CFC40F8B112856E0744B31FA230F8C183A19A135CA0F2386CFC6084DDC17C408EC518311B39DF8D0E2591F73FDDCE9D9739F73FDFC48CF9AA86FCBBFE6DC0B7226F6A8C5992E195792FD0C9376E4742D4AC2E3859F493BF2E95A4DBA1FE2DA661447F4861BEB0B7D5CCE0577690C1FC210C1E7A9DC73D8CB3EFB969ACED6A486D6BB8466F5D9827DEB79BDDDF2E3D3F1D6A7DBECF06A5DAA53C4590BFDBDF358D3F087387BBBDC3FB48CAB62E5E165DC5598C4B33CB6FC6E95B83FED61ADD22ABD68A14204BBAA30929B13B0BD635BAB93AB4DBE0BA656D737B98E0C6CE465D3C17A79BD7B2C0ACF02771DCBC952A6191FE824A6211FDC8007F8880A39CD1EC1973FB0AFDB7F21A8AEEFA4286291CDCA7296A80D25FC719DCA1D257C3906B78AEAD460FE3D54CDC2FD2B91249FC35C1AAECCD6EE4713B1909B6268E8EC148F5A6B4D01BBCA6CE5AE9F6326B2B30130B1DD19752907E1B63D4C9F99C8E1532207EC7F93C923CA463C80046C2C57C6348737D07B3C0CA05ADDDDB71D02479B024C33950737F5B3999D63843A79F5CDE02CD8AA524DE6F64E021CD5BEC30AE5F4DD031EFB70A26D8FDFFED19F6ACF0F96FC8F0E009896577B7597E5FB9E2CAFF7652FC1F2AED558974D35D3E66AFFEBB2F9C093CDF5CEE725D8BC653B53055F4E506CD714B5A7745979E8C9CA7A4BC2B6F29EAF8651D4654F35E789F20C7570D63C3EDA775840DC523299AE767F2E1F9C7BF281DE3BBC7C1FB8B4A7CB4E90E911B569737964E4C9237A81CFF6C8BE1D16655AECABC79E17FD6316E7ED3AA4B6542E8B8F3D595CEF02F7ACA08F5CF4583B1BBDC7AD4A5056B692AECC563BC6D0B2D8FD83857ADF51AD348BB7FF070000FFFF0300504B0304140006000800000021006FF815064E0100007F02000011000801646F6350726F70732F636F72652E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C925F4FC32014C5DF4DFC0E0DEF2DA5CB9685B45DA2664FCE689CD1F846E0AE23164A80FDFBF6D276AB5DF4C1C7CB39FCEEB917F2C551D5D11EAC938D2E1049521481E68D90BA2AD0DB7A19CF51E43CD382D58D86029DC0A145797B9373437963E1D93606AC97E0A240D28E7253A0ADF78662ECF81614734970E8206E1AAB980FA5ADB061FC8B5580B3349D61059E09E6196E81B11988E88C147C409A9DAD3B80E0186A50A0BDC32421F8C7EBC12AF7E7854E193995F42713663AC71DB305EFC5C17D7472301E0E87E430E96284FC047FAC1E5FBB5163A9DB5D7140652E38E516986F6CF9B263BA7AAA1A9EE3D169BBC19A39BF0ACBDE481077A7B1F1B7D8FA2DEC65FB5225C9F1B80CDDBAE1FA9620A21097F6C35D94F7C9FDC37A89CA2C25599C4EE36CB626533A9DD334FD6C735DDD6FE3F707EA9CEE9FC4194DC935F10228BBC4D75FA6FC060000FFFF0300504B03041400060008000000210057370648E7040000551B000012000000776F72642F6E756D626572696E672E786D6CCC59CD6EE33610BE17E83B18027C4CAC3FFFC458679175D6688BED62B19B45CFB444C744445220297BDDE3BE4C1FA18FB5AFD0A12829169DBA92A2A0C9210A87F3437E9C19CE306FDE7EA3C9608785249C2D1CEFD2750698453C26EC7EE17CBD5B5DCC9C815488C528E10C2F9C0396CEDBEB9F7F7AB39FB38CAEB100C601E86072BE83E9AD52E97C3492D11653242F798A194C6EB8A048C150DC8F28120F597A11719A2245D62421EA30F25D77E2146AF8C2C9049B172A2E288904977CA3B4C89C6F3624C2C5A794104DEC1AC95B1E651433955B1C099CC01A38935B92CA521BEDAA0DB6B82D95ECCE6D624793926F9F36B1160BB4079C696296BDE7224E058FB09440BD35939546CF3D67BB0050ABA8249A2CA16EB35C094584556AB47B58E75F1DDE251CDEC8D81E69558F1B012CAEC199D05A2A8122F531A383DAE8D778E1B8390B932486B91D4A168EFF6EE6F9D3F09D33D2C2344B14F9807738B93BA4B8E4C9A989A61A2E45D3A49C9BFACB9B2008666626D9E909029FD216B8BC5025B367B8C0DF57B422C638221415AAD32FEA9054867FC148C74F2126B3CDA6D4245314E1CAE61DFE56A91B7A9715FDB7A8E44FF0461972FA49E89D12A621D064BD52F8734384541F88C6DED59CA3FDBC60154642AC38531238B78481508C3708D0324A239E7051DA5AE53F6642FE5952FD4269AE0D9403467A1DC78879F9E9F481586E6C3F6F8CD8D06F0D5A30C961DB22760F47B470F4B81D6C00C21930FCDEC0088AA368EA3E00C63078793C22B970EE08C572F011EF079F394590019EF4AE75E94339C2FBF97AA9DD300FDF8242ECF1094784525B4842D425CB27E84A90872A060B0B316495532ACF5402216359975B14F3BD45C474CDA5BD044253B8F7AAD82D6C31FE49705EC57A41DD2146E4D6D2AAF300B89F457DC08259A4944BA26F288B9C95630697B2F113B8C3D54D42EE2BD6359258EFD24C639D5673EC4B91F37E1CF4E6C761273F1E166290681AA6C3978EECB03744C61D11B91C8E5F3EBE4FAE89F37E32EE0D95C93350194E5A03F3DCDBF33C2C93DE60993E0F96E1F4952133ED820C6401AB5832B7DD30D43101A70FDB1CCE1AED5441A5A92B18F8561931A3FA0A835CBB70C2C0CF13371C6FC9795C73859E1BE6D75D593F78BE9F672AE06F5A779DF79C59FFF8781540C3AB3E301ABBE1598C26B37A8DE585157F578C00B3A30E419FDFD110CEEE68A41B0653921E370C13DF9F06EF272B134D4F370CDBC35A90F877DD4CFC4BDBB00C6FDD5B2F786FB41C17C1F98E559A44508787EE95EBBA4DCBE2759624B828C82D3FFFF1FDEFCA52C35B706A61FF9FF52D9211210BE7CB010A1D684BA192BB01DC6A04BB7138EFC09E56524322C829D07543B3AD1F097A4086B7C5C51BBB75A76C0ACC92678260A1ABDD23742CAA2E8A2D52CB7BD43F416DDC3F6A3FBEFFD51637DF877CA8BDA24C784D71FB03EA5BDD05C3BB4AE553755A3BB7324E540F30ED68BDBA558780F3AF20B97501A8BF88CB6FA4571771C1A46DAB5DA4223B904C3EB2A8CF8F38135FC70EF53A222E0C3AA6F07A7419D4EAB47611072FB2562237A9FDFF8EB8B1D73195F71771D313685EC31D379E75CCD5566C151580457D7EC4C1BF122C877A1D113719774CE1F5E8EA1271A7752DBC32034AF0FBB18EAD15B730F9F88406E2C0A9CBE19A9879846C2D66DE7C5A8B998791D662E6E5A0B598E9AC5B8B99B6B3B598E9C69E14CB9FF7CB03305FF3EFB0EB7F000000FFFF0300504B030414000600080000002100E6C1EF74570200004209000012000000776F72642F666F6E745461626C652E786D6CBC954D73DA301086EF9DE97FF0E8DE58964DF898980C25F8D61E9A647A164606CD5892473238FCFBAEE58FD0225ADC49820783D6D27AF5E8DDDDBBFB17917B07A60D573246C10D461E93A9DA70B98DD1F353F265823C5352B9A1B9922C464766D0FDFCF3A7BB6A9629591A0FD64B33D331DA956531F37D93EE98A0E646154CC2B34C69414B18EAADAFB28CA7EC41A57BC164E9138C6F7DCD725AC2BBCD8E1706B5DEAA6BBC554A6F0AAD52660C042BF2C69FA05CA2791B9D57CD241510F51317CC78DF59E5FD508236130A2A956101CC39D03C4698C0758B433CC2117C09FC8B905F7B4A77541B56F6137163CEA8E0F9B1B36AEBD7CE2F7899EE3AFB816A4ED7396BD618BE85077BB3C6315A618CC9224950630962B404CB781205AD854050CD67DA5AC2DE02C70481593F764AD0F8010BF86957D938FDE69CCE883C1EC55AE596D49F2046B0FD000004780C40088CC66E10E46D40F4E1F62082D67406C26E1BF039414C4E565D0F62A9F69A335D8BC349830085104F81434D82803886C842A80DD3B2E1F49B2E32FEC2360344119EB1780751FC8444AA33DF38498CBA837AFD1DA00BBA2F9583C3E5FCE8DED26E1C74FDA1B2A0395F6BEE04417062A5504B220271C0DD0DC259294CC58D194462556F9C9C568A080C8B656F195429A6B6E25C9F200B2860EE4241F057281011ECBFBBDE99438DC155313F24392C07EF5972E88ECCFBF678411AD72199BC913492719200919326B29A3EC0B8B7F4D208BB39CEDA897198E0C14D644905E408BD40A26EA34D3BADDBEAB024F9BF767A9E24383A2781FFDA456CD909FE99246D5F35F35F000000FFFF0300504B030414000600080000002100BF1C6AF679010000CA02000010000801646F6350726F70732F6170702E786D6C20A2040128A00001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009C52CB4EC33010BC23F10F51EEADD39622405B57A815E2C04B6A80B3656F120BC7B66C83DABF67436808E2464E3BB3EBC9ECD8B0DEB726FBC010B5B3AB7C362DF20CAD744ADB7A953F9737938B3C8B4958258CB3B8CA0F18F3353F3D81A7E03C86A431662461E32A6F52F2578C45D9602BE294DA963A950BAD480443CD5C5569895B27DF5BB489CD8BE29CE13EA155A8267E10CC7BC5AB8FF45F51E564E72FBE94074F863994D87A2312F287CE8E992A975A60030BA54BC294BA45BE207A00F0246A8C7C06AC2FE0D50515F9250DF5156C1A11844C14205F2E881E61B8F6DE68291245CBEFB50C2EBA2A658F5F2164DD7960E311A0607628DF834E075E001B43B8D3968C9C01EB0B3216441D846FBEDD0D08765218DCD0F6BC122622B01F0236AEF5C21E38F93C56A4F7169F7DE9B65D3CDF477E93A3255F756A765E48F2723E5F8ED71D756047A1A022FF47BD1F026EE94682E97E4A51D91AD571E66FA30BF0A57F9A7C369F16F47D2576E4E8568637C33F010000FFFF0300504B01022D001400060008000000210030C9280C72010000A50500001300000000000000000000000000000000005B436F6E74656E745F54797065735D2E786D6C504B01022D00140006000800000021001E911AB7F30000004E0200000B00000000000000000000000000AB0300005F72656C732F2E72656C73504B01022D0014000600080000002100B3BE8B1D09010000B60300001C00000000000000000000000000CF060000776F72642F5F72656C732F646F63756D656E742E786D6C2E72656C73504B01022D00140006000800000021006A099EFE0C0600000419000011000000000000000000000000001A090000776F72642F646F63756D656E742E786D6C504B01022D001400060008000000210096B5ADE296060000501B00001500000000000000000000000000550F0000776F72642F7468656D652F7468656D65312E786D6C504B01022D00140006000800000021009C60E67F370300000408000011000000000000000000000000001E160000776F72642F73657474696E67732E786D6C504B01022D00140006000800000021004AD88A92BB00000004010000140000000000000000000000000084190000776F72642F77656253657474696E67732E786D6C504B01022D00140006000800000021000F74B7A9FD0900009B5200000F00000000000000000000000000711A0000776F72642F7374796C65732E786D6C504B01022D00140006000800000021006FF815064E0100007F02000011000000000000000000000000009B240000646F6350726F70732F636F72652E786D6C504B01022D001400060008000000210057370648E7040000551B0000120000000000000000000000000020270000776F72642F6E756D626572696E672E786D6C504B01022D0014000600080000002100E6C1EF7457020000420900001200000000000000000000000000372C0000776F72642F666F6E745461626C652E786D6C504B01022D0014000600080000002100BF1C6AF679010000CA0200001000000000000000000000000000BE2E0000646F6350726F70732F6170702E786D6C504B0506000000000C000C00010300006D3100000000, NULL)
SET IDENTITY_INSERT [dbo].[File] OFF
/****** Object:  Table [dbo].[Facuties]    Script Date: 05/28/2012 20:20:16 ******/
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
/****** Object:  Table [dbo].[Classes]    Script Date: 05/28/2012 20:20:16 ******/
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
	[SchoolYear] [nvarchar](100) NOT NULL,
	[LecturerID] [varchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Classes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Classes] ON
INSERT [dbo].[Classes] ([ID], [SubjectID], [Group], [Term], [SchoolYear], [LecturerID], [IsDeleted]) VALUES (2, N'1179011', N'1', N'HK II', N'2011-2012', N'giangvien1', 0)
INSERT [dbo].[Classes] ([ID], [SubjectID], [Group], [Term], [SchoolYear], [LecturerID], [IsDeleted]) VALUES (3, N'1179011', N'2', N'HK II', N'2011-2012', N'tutc', 0)
SET IDENTITY_INSERT [dbo].[Classes] OFF
/****** Object:  Table [dbo].[Exam]    Script Date: 05/28/2012 20:20:16 ******/
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
	[ClassID] [int] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Exam] ON
INSERT [dbo].[Exam] ([ID], [Description], [LecturerID], [ClassID], [IsPublic], [IsDeleted]) VALUES (1, N'Đề kiểm tra quá trình', N'giangvien1', 2, 1, 0)
SET IDENTITY_INSERT [dbo].[Exam] OFF
/****** Object:  Table [dbo].[Problems]    Script Date: 05/28/2012 20:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Problems](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LecturerID] [varchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Content] [ntext] NULL,
	[MemoryLimit] [int] NOT NULL,
	[TimeLimit] [int] NOT NULL,
	[ComparerID] [int] NOT NULL,
	[DifficultyID] [int] NOT NULL,
	[IsHiden] [bit] NOT NULL,
	[AvailableTime] [datetime] NULL,
	[TimeStamp] [timestamp] NULL,
	[ComparerParameter] [ntext] NULL,
	[FileID] [int] NULL,
	[Score] [float] NOT NULL,
	[SubjectID] [varchar](50) NOT NULL,
	[ExamID] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DeBai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Problems] ON
INSERT [dbo].[Problems] ([ID], [LecturerID], [Name], [Content], [MemoryLimit], [TimeLimit], [ComparerID], [DifficultyID], [IsHiden], [AvailableTime], [ComparerParameter], [FileID], [Score], [SubjectID], [ExamID], [IsDeleted]) VALUES (1, N'giangvien1', N'Bai1', NULL, 1000, 1000, 1, 1, 0, CAST(0x0000A05B00B9EF38 AS DateTime), NULL, 1, 35, N'1179011', 1, 0)
INSERT [dbo].[Problems] ([ID], [LecturerID], [Name], [Content], [MemoryLimit], [TimeLimit], [ComparerID], [DifficultyID], [IsHiden], [AvailableTime], [ComparerParameter], [FileID], [Score], [SubjectID], [ExamID], [IsDeleted]) VALUES (2, N'giangvien1', N'Bai2', NULL, 1000, 1000, 1, 1, 0, CAST(0x0000A05B00BA5658 AS DateTime), NULL, 2, 10, N'1179011', 1, 0)
INSERT [dbo].[Problems] ([ID], [LecturerID], [Name], [Content], [MemoryLimit], [TimeLimit], [ComparerID], [DifficultyID], [IsHiden], [AvailableTime], [ComparerParameter], [FileID], [Score], [SubjectID], [ExamID], [IsDeleted]) VALUES (4, N'giangvien1', N'BAI3', NULL, 1000, 1000, 1, 1, 0, CAST(0x0000A05B00BA6210 AS DateTime), NULL, 4, 35, N'1179011', 1, 0)
INSERT [dbo].[Problems] ([ID], [LecturerID], [Name], [Content], [MemoryLimit], [TimeLimit], [ComparerID], [DifficultyID], [IsHiden], [AvailableTime], [ComparerParameter], [FileID], [Score], [SubjectID], [ExamID], [IsDeleted]) VALUES (5, N'tutc', N'TapCon', NULL, 1000, 1000, 1, 3, 0, CAST(0x0000A05D01756A88 AS DateTime), NULL, 5, 50, N'1179011', NULL, 0)
INSERT [dbo].[Problems] ([ID], [LecturerID], [Name], [Content], [MemoryLimit], [TimeLimit], [ComparerID], [DifficultyID], [IsHiden], [AvailableTime], [ComparerParameter], [FileID], [Score], [SubjectID], [ExamID], [IsDeleted]) VALUES (6, N'tutc', N'CapSo', NULL, 1000, 1000, 1, 3, 0, CAST(0x0000A05D017D8718 AS DateTime), NULL, 6, 50, N'1179011', NULL, 0)
SET IDENTITY_INSERT [dbo].[Problems] OFF
/****** Object:  Table [dbo].[User_Role]    Script Date: 05/28/2012 20:20:16 ******/
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
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'08110052', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'08110068', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'08110103', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'08110104', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'08110142', 1)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'08110142', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'10110055', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'10110108', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'10110114', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'11110002', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'11110006', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'11110082', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'11110083', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'11110147', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'giangvien1', 1)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'giangvien1', 2)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'sinhvien', 3)
INSERT [dbo].[User_Role] ([Username], [RoleID]) VALUES (N'tutc', 2)
/****** Object:  Table [dbo].[Class_Student]    Script Date: 05/28/2012 20:20:16 ******/
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
/****** Object:  Table [dbo].[Lecturer_Subject]    Script Date: 05/28/2012 20:20:16 ******/
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
INSERT [dbo].[Lecturer_Subject] ([MaGV], [MaMH]) VALUES (N'tutc', N'1179011')
/****** Object:  Table [dbo].[Contests]    Script Date: 05/28/2012 20:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contests](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NOT NULL,
	[ExamID] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[IsOpen] [bit] NOT NULL,
	[TotalScore] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_NewContest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contests] ON
INSERT [dbo].[Contests] ([ID], [ClassID], [ExamID], [StartTime], [EndTime], [IsOpen], [TotalScore], [Name], [IsDeleted]) VALUES (1, 2, 1, CAST(0x0000A04800735B40 AS DateTime), CAST(0x0000A048009450C0 AS DateTime), 1, 0, N'Thi giữa kỳ cơ sở lập trình 1', 0)
INSERT [dbo].[Contests] ([ID], [ClassID], [ExamID], [StartTime], [EndTime], [IsOpen], [TotalScore], [Name], [IsDeleted]) VALUES (2, 3, 1, CAST(0x00009FCB00000000 AS DateTime), CAST(0x0000A13900000000 AS DateTime), 1, 0, N'Thi thử giữa khì CSLT1', 0)
SET IDENTITY_INSERT [dbo].[Contests] OFF
/****** Object:  Table [dbo].[Contest_Student]    Script Date: 05/28/2012 20:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contest_Student](
	[StudentID] [varchar](50) NOT NULL,
	[ContestID] [int] NOT NULL,
	[Score] [float] NULL,
 CONSTRAINT [PK_Contest_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[ContestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Contest_Student] ([StudentID], [ContestID], [Score]) VALUES (N'08110068', 2, NULL)
INSERT [dbo].[Contest_Student] ([StudentID], [ContestID], [Score]) VALUES (N'10110108', 2, NULL)
INSERT [dbo].[Contest_Student] ([StudentID], [ContestID], [Score]) VALUES (N'11110006', 1, NULL)
INSERT [dbo].[Contest_Student] ([StudentID], [ContestID], [Score]) VALUES (N'11110006', 2, NULL)
INSERT [dbo].[Contest_Student] ([StudentID], [ContestID], [Score]) VALUES (N'11110147', 2, NULL)
INSERT [dbo].[Contest_Student] ([StudentID], [ContestID], [Score]) VALUES (N'sinhvien', 2, NULL)
/****** Object:  Table [dbo].[Student_Submit]    Script Date: 05/28/2012 20:20:16 ******/
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
	[CompilerError] [nvarchar](1000) NULL,
 CONSTRAINT [PK_BaiThi_ThiSinh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Student_Submit] ON
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime], [CompilerError]) VALUES (1, 1, N'sinhvien', NULL, N'//Ho&Ten:Tran Minh Sang
//MSSV:11110113
//Ngay sinh:14-09-1993
//So may:04-3

#include<stdio.h>
#include<conio.h>

int main()
{
	int n,s=0;
	long A[200];
	scanf("%d",&n);
	int i;
	for(i=0;i<n;i++)
		scanf("%ld",&A[i]);
	for(i=0;i<n-1;i++)
	{
		if(A[i]<A[i+1])
		{
			s=s+1;
		}
    }
	if(s==n-1)
		printf("-1");
	else
		for(i=0;i<n-1;i++)
			if(A[i]>A[i+1])
			{
				printf("%d",i+1);
				break;
			}		
  return 0;
}
', 1, 2, 1, CAST(0x0000A05B00BB3F3C AS DateTime), NULL)
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime], [CompilerError]) VALUES (2, 1, N'11110006', NULL, N'#include<conio.h>
#include<stdio.h>
#define max 200
int xuly(long A[max],int m);
void main()
{
	int m;
	long A[max];
	scanf ("%d",&m);
	for (int j=0;j<m;j++)
	{
		scanf ("%ld",&A[j]);
	}
	int i=xuly(A,m);
	printf ("%d",i);
}
int xuly(long A[max],int m)
{
	int i;
	for(i=0;i<m-1;i++)
		if(A[i+1]<=A[i])
			return i+1;
		return -1;
}', 1, 2, 1, CAST(0x0000A05B01713EE1 AS DateTime), NULL)
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime], [CompilerError]) VALUES (3, 2, N'11110006', NULL, N'#include<conio.h>
#include<stdio.h>
#define max 10000
long xuly(long A[max],int m);
long ucnn(long a,long b);
void main()
{
	int m;
	long A[max];
	scanf ("%d",&m);
	for (int j=0;j<m;j++)
	{
		scanf ("%ld",&A[j]);
	}
	long i=xuly(A,m);
	printf ("%ld",i);
}
long xuly(long A[max],int m)
{
	int i,j,c;
	for(i=0;i<m-1;i++)
	{
		for (j=i+1;j<m;j++)
			if(A[i]>A[j])
			{
				c=A[i];
				A[i]=A[j];
				A[j]=c;
			}
	}
	long uc=ucnn(A[0],A[1]);
	return uc;
}
long ucnn(long a,long b)
{
	long r;
	do
	{
		r=a%b;
		a=b;
		b=r;
	}
	while (r!=0);
	return a;
}




', 1, 2, 1, CAST(0x0000A05B0173A591 AS DateTime), NULL)
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime], [CompilerError]) VALUES (4, 1, N'11110147', NULL, N'#include <iostream>
using namespace std;
void nhap(long A[],int &n);
void xuly(long A[],int &n);
void xuat(int n);

void main()
{
	int n;
	long A[100000];
	nhap(A,n);
	xuly(A,n);
	xuat(n);
}
void nhap(long A[],int &n)
{
	cin>>n;
	for (int i=0;i<n;i++)
		cin>>A[i];
}
void xuly(long A[],int &n)
{
	int i,t=-1;
	for (i=1;i<n;i++)
		if (A[i]<=A[i-1])
		{
			t = i;
			break;
		}
	n = t;
}
void xuat(int n)
{
	cout<<n;
}', 0, 2, 1, CAST(0x0000A05C01695B64 AS DateTime), N'Biên dịch quá thời gian 5000ms')
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime], [CompilerError]) VALUES (5, 1, N'11110147', NULL, N'#include <iostream>
using namespace std;
void nhap(long A[],int &n);
void xuly(long A[],int &n);
void xuat(int n);

void main()
{
	int n;
	long A[100000];
	nhap(A,n);
	xuly(A,n);
	xuat(n);
}
void nhap(long A[],int &n)
{
	cin>>n;
	for (int i=0;i<n;i++)
		cin>>A[i];
}
void xuly(long A[],int &n)
{
	int i,t=-1;
	for (i=1;i<n;i++)
		if (A[i]<=A[i-1])
		{
			t = i;
			break;
		}
	n = t;
}
void xuat(int n)
{
	cout<<n;
}', 0, 2, 1, CAST(0x0000A05C01699CB0 AS DateTime), N'Biên dịch quá thời gian 5000ms')
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime], [CompilerError]) VALUES (6, 1, N'11110147', NULL, N'#include <stdio.h>
void nhap(long A[],int &n);
void xuly(long A[],int &n);
void xuat(int n);

void main()
{
	int n;
	long A[100000];
	nhap(A,n);
	xuly(A,n);
	xuat(n);
}
void nhap(long A[],int &n)
{
	scanf ("%d",&n);
	for (int i=0;i<n;i++)
		scanf ("%ld",&A[i]);
}
void xuly(long A[],int &n)
{
	int i,t=-1;
	for (i=1;i<n;i++)
		if (A[i]<=A[i-1])
		{
			t = i;
			break;
		}
	n = t;
}
void xuat(int n)
{
	printf ("%d",n);
}', 1, 2, 1, CAST(0x0000A05C016A390A AS DateTime), NULL)
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime], [CompilerError]) VALUES (7, 2, N'11110147', NULL, N'#include <stdio.h>
void nhap(int &n);
void xuly(float A[],int n);
void xuat(float A[],int n);

void main()
{
	int n;
	float A[51];
	nhap(n);
	xuly(A,n);
	xuat(A,n);
}
void nhap(int &n)
{
	scanf ("%d",&n);
}
void xuly(float A[],int n)
{
	int i;
	A[0] = 0;
	A[1] = 1;
	for (i=2;i<=n;i++)
		A[i] = A[i-1]+A[i-2];
}
void xuat(float A[],int n)
{
	printf ("%.0f",A[n]);
}', 1, 2, 1, CAST(0x0000A05C016B969B AS DateTime), NULL)
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime], [CompilerError]) VALUES (8, 2, N'11110147', NULL, N'#include <stdio.h>
void nhap(int A[],int &n);
void xuly(int A[],int &n);
void xuat(int n);

void main()
{
	int A[10000],n;
	nhap(A,n);
	xuly(A,n);
	xuat(n);
}
void nhap(int A[],int &n)
{
	scanf ("%d",&n);
	for (int i=0;i<n;i++)
		scanf ("%d",&A[i]);
}
void xuly(int A[],int &n)
{
	int i,j,k;
	for (i=0;i<2;i++)
		for (j=i+1;j<n;j++)
			if (A[i]>A[j])
			{
				k = A[i];
				A[i] = A[j];
				A[j] = k;
			}
	while (A[0]!=A[1])
	{
		if (A[0]>A[1])
			A[0] = A[0]-A[1];
		else
			A[1] = A[1]-A[0];
	}
	n = A[0];
}
void xuat(int n)
{
	printf ("%d",n);
}', 1, 2, 1, CAST(0x0000A05C016F011A AS DateTime), NULL)
INSERT [dbo].[Student_Submit] ([ID], [ProblemID], [StudentID], [ContestID], [SourceCode], [TrangThaiBienDich], [TrangThaiCham], [LanguageID], [SubmitTime], [CompilerError]) VALUES (9, 4, N'11110147', NULL, N'#include <stdio.h>
void nhap(long &n);
void xuly(long &n);
void xuat(long n);

void main()
{
	long n;
	nhap(n);
	xuly(n);
	xuat(n);
}
void nhap(long &n)
{
	scanf ("%ld",&n);
}
void xuly(long &n)
{
	if (n<=48)
		n = n*600;
	else if (n<=48*2)
		n = 48*600+(n-48)*1004;
	else if (n<=48*3)
		n = 48*600+48*1004+(n-48*2)*1214;
	else
		n = 48*600+48*1004+48*1214+(n-48*3)*1594;
}
void xuat(long n)
{
	printf ("%ld",n);
}', 1, 2, 1, CAST(0x0000A05C01729DE0 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Student_Submit] OFF
/****** Object:  Table [dbo].[Problem_Class]    Script Date: 05/28/2012 20:20:16 ******/
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
INSERT [dbo].[Problem_Class] ([ProblemID], [ClassID]) VALUES (5, 3)
INSERT [dbo].[Problem_Class] ([ProblemID], [ClassID]) VALUES (6, 3)
/****** Object:  Table [dbo].[TestCases]    Script Date: 05/28/2012 20:20:16 ******/
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
	[Diem] [float] NOT NULL,
	[TimeStamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_TestCase] PRIMARY KEY CLUSTERED 
(
	[MaTestCase] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TestCases] ON
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (1, 1, N'6 	
1 	3 	5 	6 	4 	7', N'4', NULL, 14.29)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (2, 1, N'6 	
1 	3 	5 	6 	7	8', N'-1', NULL, 14.29)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (3, 1, N'6 	
1 	3 	7 	7 	9	10', N'3', NULL, 14.29)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (4, 1, N'6 	
2 	1 	7 	7 	9	10', N'1', NULL, 14.29)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (5, 1, N'6 	
1 	3 	7 	8 	9	8', N'5', NULL, 14.29)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (6, 1, N'8 	
1 	3 	7 	8 	9	10	69000		69100', N'-1', NULL, 14.29)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (7, 1, N'199 	
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 19







', N'198', NULL, 14.29)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (8, 2, N'6
20 6 28 50 15 70', N'3', NULL, 16.67)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (9, 2, N'6
20 6 28 50 7 70', N'1', NULL, 16.67)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (10, 2, N'6
2 4 28 50 7 70', N'2', NULL, 16.67)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (11, 2, N'6
88 50 70 70 30 15', N'15', NULL, 16.67)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (12, 2, N'6
20 50 70 70 21 15', N'5', NULL, 16.67)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (13, 2, N'6
20 50 70 70 21 20', N'20', NULL, 16.67)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (14, 4, N'10', N'6000', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (15, 4, N'48', N'28800', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (16, 4, N'58', N'38840', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (17, 4, N'155', N'152798', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (18, 4, N'140', N'130408', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (19, 4, N'100', N'81848', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (20, 4, N'500', N'702728', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (21, 4, N'145', N'136858', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (22, 4, N'0', N'0', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (23, 4, N'96', N'76992', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (24, 5, N'28', N'1199892', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (25, 5, N'39', N'1512776590', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (26, 5, N'43', N'20965992017', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (27, 5, N'99', N'439276486548176216000000000', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (28, 5, N'98', N'0', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (29, 5, N'4', N'1', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (30, 5, N'8', N'7', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (31, 5, N'11', N'35', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (32, 5, N'19', N'4110', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (33, 5, N'23', N'49910', NULL, 10)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (34, 6, N'2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
27
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
85
76
77
78
79', N'13458 / 06729 = 2
13584 / 06792 = 2
13854 / 06927 = 2
14538 / 07269 = 2
14586 / 07293 = 2
14658 / 07329 = 2
15384 / 07692 = 2
15846 / 07923 = 2
15864 / 07932 = 2
18534 / 09267 = 2
18546 / 09273 = 2
18654 / 09327 = 2
26970 / 13485 = 2
27096 / 13548 = 2
27690 / 13845 = 2
29076 / 14538 = 2
29370 / 14685 = 2
29670 / 14835 = 2
29706 / 14853 = 2
29730 / 14865 = 2
30972 / 15486 = 2
32970 / 16485 = 2
37092 / 18546 = 2
37290 / 18645 = 2
41358 / 20679 = 2
41538 / 20769 = 2
41586 / 20793 = 2
46158 / 23079 = 2
53418 / 26709 = 2
53814 / 26907 = 2
54138 / 27069 = 2
54186 / 27093 = 2
54618 / 27309 = 2
58134 / 29067 = 2
58146 / 29073 = 2
58614 / 29307 = 2
61458 / 30729 = 2
61584 / 30792 = 2
61854 / 30927 = 2
62970 / 31485 = 2
64158 / 32079 = 2
65418 / 32709 = 2
65814 / 32907 = 2
69702 / 34851 = 2
70296 / 35148 = 2
70962 / 35481 = 2
76290 / 38145 = 2
76902 / 38451 = 2
90276 / 45138 = 2
90372 / 45186 = 2
90762 / 45381 = 2
92370 / 46185 = 2
93702 / 46851 = 2
96270 / 48135 = 2
96702 / 48351 = 2
97026 / 48513 = 2
97032 / 48516 = 2
97062 / 48531 = 2
97230 / 48615 = 2
97302 / 48651 = 2

17469 / 05823 = 3
17496 / 05832 = 3
50382 / 16794 = 3
53082 / 17694 = 3
61749 / 20583 = 3
69174 / 23058 = 3
91746 / 30582 = 3
96174 / 32058 = 3

15768 / 03942 = 4
17568 / 04392 = 4
23184 / 05796 = 4
31824 / 07956 = 4
60948 / 15237 = 4
68940 / 17235 = 4
69408 / 17352 = 4
81576 / 20394 = 4
81756 / 20439 = 4
86940 / 21735 = 4
94068 / 23517 = 4
94860 / 23715 = 4

13485 / 02697 = 5
13845 / 02769 = 5
14685 / 02937 = 5
14835 / 02967 = 5
14865 / 02973 = 5
16485 / 03297 = 5
18645 / 03729 = 5
31485 / 06297 = 5
38145 / 07629 = 5
46185 / 09237 = 5
48135 / 09627 = 5
48615 / 09723 = 5
67290 / 13458 = 5
67920 / 13584 = 5
69270 / 13854 = 5
72690 / 14538 = 5
72930 / 14586 = 5
73290 / 14658 = 5
76920 / 15384 = 5
79230 / 15846 = 5
79320 / 15864 = 5
92670 / 18534 = 5
92730 / 18546 = 5
93270 / 18654 = 5

17658 / 02943 = 6
27918 / 04653 = 6
34182 / 05697 = 6

16758 / 02394 = 7
18459 / 02637 = 7
31689 / 04527 = 7
36918 / 05274 = 7
37926 / 05418 = 7
41832 / 05976 = 7
53298 / 07614 = 7
98532 / 14076 = 7

25496 / 03187 = 8
36712 / 04589 = 8
36728 / 04591 = 8
37512 / 04689 = 8
37528 / 04691 = 8
38152 / 04769 = 8
41896 / 05237 = 8
42968 / 05371 = 8
46312 / 05789 = 8
46328 / 05791 = 8
46712 / 05839 = 8
47136 / 05892 = 8
47328 / 05916 = 8
47368 / 05921 = 8
51832 / 06479 = 8
53928 / 06741 = 8
54312 / 06789 = 8
54328 / 06791 = 8
54712 / 06839 = 8
56984 / 07123 = 8
58496 / 07312 = 8
58912 / 07364 = 8
59328 / 07416 = 8
59368 / 07421 = 8
63152 / 07894 = 8
63528 / 07941 = 8
65392 / 08174 = 8
65432 / 08179 = 8
67152 / 08394 = 8
67352 / 08419 = 8
67512 / 08439 = 8
71456 / 08932 = 8
71536 / 08942 = 8
71624 / 08953 = 8
71632 / 08954 = 8
73248 / 09156 = 8
73264 / 09158 = 8
73456 / 09182 = 8
74528 / 09316 = 8
74568 / 09321 = 8
74816 / 09352 = 8
75328 / 09416 = 8
75368 / 09421 = 8
76184 / 09523 = 8
76248 / 09531 = 8
76328 / 09541 = 8
83672 / 10459 = 8
83752 / 10469 = 8
84296 / 10537 = 8
84632 / 10579 = 8
84736 / 10592 = 8
85392 / 10674 = 8
85432 / 10679 = 8
85936 / 10742 = 8
86352 / 10794 = 8
87456 / 10932 = 8
87536 / 10942 = 8
87624 / 10953 = 8
87632 / 10954 = 8
96584 / 12073 = 8
98456 / 12307 = 8
98760 / 12345 = 8

57429 / 06381 = 9
58239 / 06471 = 9
75249 / 08361 = 9
95742 / 10638 = 9
95823 / 10647 = 9
97524 / 10836 = 9

KHONG CO

KHONG CO

45792 / 03816 = 12
73548 / 06129 = 12
89532 / 07461 = 12
91584 / 07632 = 12

67392 / 05184 = 13
81549 / 06273 = 13
94653 / 07281 = 13

25746 / 01839 = 14
27384 / 01956 = 14
41538 / 02967 = 14
46158 / 03297 = 14
51492 / 03678 = 14
54768 / 03912 = 14
61572 / 04398 = 14
65982 / 04713 = 14

27945 / 01863 = 15
92745 / 06183 = 15

45936 / 02871 = 16
73296 / 04581 = 16
98352 / 06147 = 16

26843 / 01579 = 17
28543 / 01679 = 17
29546 / 01738 = 17
36958 / 02174 = 17
45713 / 02689 = 17
45781 / 02693 = 17
54689 / 03217 = 17
59126 / 03478 = 17
64957 / 03821 = 17
65297 / 03841 = 17
67184 / 03952 = 17
67218 / 03954 = 17
76823 / 04519 = 17
76891 / 04523 = 17
78132 / 04596 = 17
78523 / 04619 = 17
78591 / 04623 = 17
81532 / 04796 = 17
83572 / 04916 = 17
83657 / 04921 = 17
89437 / 05261 = 17
89471 / 05263 = 17
89641 / 05273 = 17
91426 / 05378 = 17
92837 / 05461 = 17
92871 / 05463 = 17
93126 / 05478 = 17

28674 / 01593 = 18

51984 / 02736 = 19
81567 / 04293 = 19

KHONG CO

KHONG CO

51678 / 02349 = 22

36294 / 01578 = 23
81627 / 03549 = 23
81972 / 03564 = 23

39528 / 01647 = 24
46872 / 01953 = 24

KHONG CO

42978 / 01653 = 26
56498 / 02173 = 26
61854 / 02379 = 26
67314 / 02589 = 26
67418 / 02593 = 26
76518 / 02943 = 26
82654 / 03179 = 26
89726 / 03451 = 26
92846 / 03571 = 26

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

37584 / 01296 = 29
73689 / 02541 = 29

KHONG CO

KHONG CO

75168 / 02349 = 32

KHONG CO

KHONG CO

48265 / 01379 = 35
63945 / 01827 = 35
64295 / 01837 = 35
74865 / 02139 = 35
93485 / 02671 = 35

KHONG CO

65934 / 01782 = 37

65892 / 01734 = 38
74328 / 01956 = 38

KHONG CO

KHONG CO

KHONG CO

KHONG CO

93654 / 02178 = 43

58476 / 01329 = 44
59268 / 01347 = 44
67892 / 01543 = 44
69432 / 01578 = 44
95348 / 02167 = 44

KHONG CO

58374 / 01269 = 46

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

95472 / 01836 = 52

65879 / 01243 = 53
75896 / 01432 = 53
84376 / 01592 = 53
92538 / 01746 = 53

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

73986 / 01254 = 59

KHONG CO

KHONG CO

79546 / 01283 = 62
94736 / 01528 = 62

KHONG CO

KHONG CO

KHONG CO

83754 / 01269 = 66

KHONG CO

98736 / 01452 = 68

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO', NULL, 12.5)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (35, 6, N'2
3
4
5
6
7
8
9
10', N'KHONG CO

13458 / 06729 = 2
13584 / 06792 = 2
13854 / 06927 = 2
14538 / 07269 = 2
14586 / 07293 = 2
14658 / 07329 = 2
15384 / 07692 = 2
15846 / 07923 = 2
15864 / 07932 = 2
18534 / 09267 = 2
18546 / 09273 = 2
18654 / 09327 = 2
26970 / 13485 = 2
27096 / 13548 = 2
27690 / 13845 = 2
29076 / 14538 = 2
29370 / 14685 = 2
29670 / 14835 = 2
29706 / 14853 = 2
29730 / 14865 = 2
30972 / 15486 = 2
32970 / 16485 = 2
37092 / 18546 = 2
37290 / 18645 = 2
41358 / 20679 = 2
41538 / 20769 = 2
41586 / 20793 = 2
46158 / 23079 = 2
53418 / 26709 = 2
53814 / 26907 = 2
54138 / 27069 = 2
54186 / 27093 = 2
54618 / 27309 = 2
58134 / 29067 = 2
58146 / 29073 = 2
58614 / 29307 = 2
61458 / 30729 = 2
61584 / 30792 = 2
61854 / 30927 = 2
62970 / 31485 = 2
64158 / 32079 = 2
65418 / 32709 = 2
65814 / 32907 = 2
69702 / 34851 = 2
70296 / 35148 = 2
70962 / 35481 = 2
76290 / 38145 = 2
76902 / 38451 = 2
90276 / 45138 = 2
90372 / 45186 = 2
90762 / 45381 = 2
92370 / 46185 = 2
93702 / 46851 = 2
96270 / 48135 = 2
96702 / 48351 = 2
97026 / 48513 = 2
97032 / 48516 = 2
97062 / 48531 = 2
97230 / 48615 = 2
97302 / 48651 = 2

17469 / 05823 = 3
17496 / 05832 = 3
50382 / 16794 = 3
53082 / 17694 = 3
61749 / 20583 = 3
69174 / 23058 = 3
91746 / 30582 = 3
96174 / 32058 = 3

15768 / 03942 = 4
17568 / 04392 = 4
23184 / 05796 = 4
31824 / 07956 = 4
60948 / 15237 = 4
68940 / 17235 = 4
69408 / 17352 = 4
81576 / 20394 = 4
81756 / 20439 = 4
86940 / 21735 = 4
94068 / 23517 = 4
94860 / 23715 = 4

13485 / 02697 = 5
13845 / 02769 = 5
14685 / 02937 = 5
14835 / 02967 = 5
14865 / 02973 = 5
16485 / 03297 = 5
18645 / 03729 = 5
31485 / 06297 = 5
38145 / 07629 = 5
46185 / 09237 = 5
48135 / 09627 = 5
48615 / 09723 = 5
67290 / 13458 = 5
67920 / 13584 = 5
69270 / 13854 = 5
72690 / 14538 = 5
72930 / 14586 = 5
73290 / 14658 = 5
76920 / 15384 = 5
79230 / 15846 = 5
79320 / 15864 = 5
92670 / 18534 = 5
92730 / 18546 = 5
93270 / 18654 = 5

17658 / 02943 = 6
27918 / 04653 = 6
34182 / 05697 = 6

16758 / 02394 = 7
18459 / 02637 = 7
31689 / 04527 = 7
36918 / 05274 = 7
37926 / 05418 = 7
41832 / 05976 = 7
53298 / 07614 = 7
98532 / 14076 = 7

25496 / 03187 = 8
36712 / 04589 = 8
36728 / 04591 = 8
37512 / 04689 = 8
37528 / 04691 = 8
38152 / 04769 = 8
41896 / 05237 = 8
42968 / 05371 = 8
46312 / 05789 = 8
46328 / 05791 = 8
46712 / 05839 = 8
47136 / 05892 = 8
47328 / 05916 = 8
47368 / 05921 = 8
51832 / 06479 = 8
53928 / 06741 = 8
54312 / 06789 = 8
54328 / 06791 = 8
54712 / 06839 = 8
56984 / 07123 = 8
58496 / 07312 = 8
58912 / 07364 = 8
59328 / 07416 = 8
59368 / 07421 = 8
63152 / 07894 = 8
63528 / 07941 = 8
65392 / 08174 = 8
65432 / 08179 = 8
67152 / 08394 = 8
67352 / 08419 = 8
67512 / 08439 = 8
71456 / 08932 = 8
71536 / 08942 = 8
71624 / 08953 = 8
71632 / 08954 = 8
73248 / 09156 = 8
73264 / 09158 = 8
73456 / 09182 = 8
74528 / 09316 = 8
74568 / 09321 = 8
74816 / 09352 = 8
75328 / 09416 = 8
75368 / 09421 = 8
76184 / 09523 = 8
76248 / 09531 = 8
76328 / 09541 = 8
83672 / 10459 = 8
83752 / 10469 = 8
84296 / 10537 = 8
84632 / 10579 = 8
84736 / 10592 = 8
85392 / 10674 = 8
85432 / 10679 = 8
85936 / 10742 = 8
86352 / 10794 = 8
87456 / 10932 = 8
87536 / 10942 = 8
87624 / 10953 = 8
87632 / 10954 = 8
96584 / 12073 = 8
98456 / 12307 = 8
98760 / 12345 = 8

57429 / 06381 = 9
58239 / 06471 = 9
75249 / 08361 = 9
95742 / 10638 = 9
95823 / 10647 = 9
97524 / 10836 = 9

KHONG CO', NULL, 12.5)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (36, 6, N'2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20', N'13458 / 06729 = 2
13584 / 06792 = 2
13854 / 06927 = 2
14538 / 07269 = 2
14586 / 07293 = 2
14658 / 07329 = 2
15384 / 07692 = 2
15846 / 07923 = 2
15864 / 07932 = 2
18534 / 09267 = 2
18546 / 09273 = 2
18654 / 09327 = 2
26970 / 13485 = 2
27096 / 13548 = 2
27690 / 13845 = 2
29076 / 14538 = 2
29370 / 14685 = 2
29670 / 14835 = 2
29706 / 14853 = 2
29730 / 14865 = 2
30972 / 15486 = 2
32970 / 16485 = 2
37092 / 18546 = 2
37290 / 18645 = 2
41358 / 20679 = 2
41538 / 20769 = 2
41586 / 20793 = 2
46158 / 23079 = 2
53418 / 26709 = 2
53814 / 26907 = 2
54138 / 27069 = 2
54186 / 27093 = 2
54618 / 27309 = 2
58134 / 29067 = 2
58146 / 29073 = 2
58614 / 29307 = 2
61458 / 30729 = 2
61584 / 30792 = 2
61854 / 30927 = 2
62970 / 31485 = 2
64158 / 32079 = 2
65418 / 32709 = 2
65814 / 32907 = 2
69702 / 34851 = 2
70296 / 35148 = 2
70962 / 35481 = 2
76290 / 38145 = 2
76902 / 38451 = 2
90276 / 45138 = 2
90372 / 45186 = 2
90762 / 45381 = 2
92370 / 46185 = 2
93702 / 46851 = 2
96270 / 48135 = 2
96702 / 48351 = 2
97026 / 48513 = 2
97032 / 48516 = 2
97062 / 48531 = 2
97230 / 48615 = 2
97302 / 48651 = 2

17469 / 05823 = 3
17496 / 05832 = 3
50382 / 16794 = 3
53082 / 17694 = 3
61749 / 20583 = 3
69174 / 23058 = 3
91746 / 30582 = 3
96174 / 32058 = 3

15768 / 03942 = 4
17568 / 04392 = 4
23184 / 05796 = 4
31824 / 07956 = 4
60948 / 15237 = 4
68940 / 17235 = 4
69408 / 17352 = 4
81576 / 20394 = 4
81756 / 20439 = 4
86940 / 21735 = 4
94068 / 23517 = 4
94860 / 23715 = 4

13485 / 02697 = 5
13845 / 02769 = 5
14685 / 02937 = 5
14835 / 02967 = 5
14865 / 02973 = 5
16485 / 03297 = 5
18645 / 03729 = 5
31485 / 06297 = 5
38145 / 07629 = 5
46185 / 09237 = 5
48135 / 09627 = 5
48615 / 09723 = 5
67290 / 13458 = 5
67920 / 13584 = 5
69270 / 13854 = 5
72690 / 14538 = 5
72930 / 14586 = 5
73290 / 14658 = 5
76920 / 15384 = 5
79230 / 15846 = 5
79320 / 15864 = 5
92670 / 18534 = 5
92730 / 18546 = 5
93270 / 18654 = 5

17658 / 02943 = 6
27918 / 04653 = 6
34182 / 05697 = 6

16758 / 02394 = 7
18459 / 02637 = 7
31689 / 04527 = 7
36918 / 05274 = 7
37926 / 05418 = 7
41832 / 05976 = 7
53298 / 07614 = 7
98532 / 14076 = 7

25496 / 03187 = 8
36712 / 04589 = 8
36728 / 04591 = 8
37512 / 04689 = 8
37528 / 04691 = 8
38152 / 04769 = 8
41896 / 05237 = 8
42968 / 05371 = 8
46312 / 05789 = 8
46328 / 05791 = 8
46712 / 05839 = 8
47136 / 05892 = 8
47328 / 05916 = 8
47368 / 05921 = 8
51832 / 06479 = 8
53928 / 06741 = 8
54312 / 06789 = 8
54328 / 06791 = 8
54712 / 06839 = 8
56984 / 07123 = 8
58496 / 07312 = 8
58912 / 07364 = 8
59328 / 07416 = 8
59368 / 07421 = 8
63152 / 07894 = 8
63528 / 07941 = 8
65392 / 08174 = 8
65432 / 08179 = 8
67152 / 08394 = 8
67352 / 08419 = 8
67512 / 08439 = 8
71456 / 08932 = 8
71536 / 08942 = 8
71624 / 08953 = 8
71632 / 08954 = 8
73248 / 09156 = 8
73264 / 09158 = 8
73456 / 09182 = 8
74528 / 09316 = 8
74568 / 09321 = 8
74816 / 09352 = 8
75328 / 09416 = 8
75368 / 09421 = 8
76184 / 09523 = 8
76248 / 09531 = 8
76328 / 09541 = 8
83672 / 10459 = 8
83752 / 10469 = 8
84296 / 10537 = 8
84632 / 10579 = 8
84736 / 10592 = 8
85392 / 10674 = 8
85432 / 10679 = 8
85936 / 10742 = 8
86352 / 10794 = 8
87456 / 10932 = 8
87536 / 10942 = 8
87624 / 10953 = 8
87632 / 10954 = 8
96584 / 12073 = 8
98456 / 12307 = 8
98760 / 12345 = 8

57429 / 06381 = 9
58239 / 06471 = 9
75249 / 08361 = 9
95742 / 10638 = 9
95823 / 10647 = 9
97524 / 10836 = 9

KHONG CO

KHONG CO

45792 / 03816 = 12
73548 / 06129 = 12
89532 / 07461 = 12
91584 / 07632 = 12

67392 / 05184 = 13
81549 / 06273 = 13
94653 / 07281 = 13

25746 / 01839 = 14
27384 / 01956 = 14
41538 / 02967 = 14
46158 / 03297 = 14
51492 / 03678 = 14
54768 / 03912 = 14
61572 / 04398 = 14
65982 / 04713 = 14

27945 / 01863 = 15
92745 / 06183 = 15

45936 / 02871 = 16
73296 / 04581 = 16
98352 / 06147 = 16

26843 / 01579 = 17
28543 / 01679 = 17
29546 / 01738 = 17
36958 / 02174 = 17
45713 / 02689 = 17
45781 / 02693 = 17
54689 / 03217 = 17
59126 / 03478 = 17
64957 / 03821 = 17
65297 / 03841 = 17
67184 / 03952 = 17
67218 / 03954 = 17
76823 / 04519 = 17
76891 / 04523 = 17
78132 / 04596 = 17
78523 / 04619 = 17
78591 / 04623 = 17
81532 / 04796 = 17
83572 / 04916 = 17
83657 / 04921 = 17
89437 / 05261 = 17
89471 / 05263 = 17
89641 / 05273 = 17
91426 / 05378 = 17
92837 / 05461 = 17
92871 / 05463 = 17
93126 / 05478 = 17

28674 / 01593 = 18

51984 / 02736 = 19
81567 / 04293 = 19

KHONG CO', NULL, 12.5)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (37, 6, N'2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
27
29
30', N'13458 / 06729 = 2
13584 / 06792 = 2
13854 / 06927 = 2
14538 / 07269 = 2
14586 / 07293 = 2
14658 / 07329 = 2
15384 / 07692 = 2
15846 / 07923 = 2
15864 / 07932 = 2
18534 / 09267 = 2
18546 / 09273 = 2
18654 / 09327 = 2
26970 / 13485 = 2
27096 / 13548 = 2
27690 / 13845 = 2
29076 / 14538 = 2
29370 / 14685 = 2
29670 / 14835 = 2
29706 / 14853 = 2
29730 / 14865 = 2
30972 / 15486 = 2
32970 / 16485 = 2
37092 / 18546 = 2
37290 / 18645 = 2
41358 / 20679 = 2
41538 / 20769 = 2
41586 / 20793 = 2
46158 / 23079 = 2
53418 / 26709 = 2
53814 / 26907 = 2
54138 / 27069 = 2
54186 / 27093 = 2
54618 / 27309 = 2
58134 / 29067 = 2
58146 / 29073 = 2
58614 / 29307 = 2
61458 / 30729 = 2
61584 / 30792 = 2
61854 / 30927 = 2
62970 / 31485 = 2
64158 / 32079 = 2
65418 / 32709 = 2
65814 / 32907 = 2
69702 / 34851 = 2
70296 / 35148 = 2
70962 / 35481 = 2
76290 / 38145 = 2
76902 / 38451 = 2
90276 / 45138 = 2
90372 / 45186 = 2
90762 / 45381 = 2
92370 / 46185 = 2
93702 / 46851 = 2
96270 / 48135 = 2
96702 / 48351 = 2
97026 / 48513 = 2
97032 / 48516 = 2
97062 / 48531 = 2
97230 / 48615 = 2
97302 / 48651 = 2

17469 / 05823 = 3
17496 / 05832 = 3
50382 / 16794 = 3
53082 / 17694 = 3
61749 / 20583 = 3
69174 / 23058 = 3
91746 / 30582 = 3
96174 / 32058 = 3

15768 / 03942 = 4
17568 / 04392 = 4
23184 / 05796 = 4
31824 / 07956 = 4
60948 / 15237 = 4
68940 / 17235 = 4
69408 / 17352 = 4
81576 / 20394 = 4
81756 / 20439 = 4
86940 / 21735 = 4
94068 / 23517 = 4
94860 / 23715 = 4

13485 / 02697 = 5
13845 / 02769 = 5
14685 / 02937 = 5
14835 / 02967 = 5
14865 / 02973 = 5
16485 / 03297 = 5
18645 / 03729 = 5
31485 / 06297 = 5
38145 / 07629 = 5
46185 / 09237 = 5
48135 / 09627 = 5
48615 / 09723 = 5
67290 / 13458 = 5
67920 / 13584 = 5
69270 / 13854 = 5
72690 / 14538 = 5
72930 / 14586 = 5
73290 / 14658 = 5
76920 / 15384 = 5
79230 / 15846 = 5
79320 / 15864 = 5
92670 / 18534 = 5
92730 / 18546 = 5
93270 / 18654 = 5

17658 / 02943 = 6
27918 / 04653 = 6
34182 / 05697 = 6

16758 / 02394 = 7
18459 / 02637 = 7
31689 / 04527 = 7
36918 / 05274 = 7
37926 / 05418 = 7
41832 / 05976 = 7
53298 / 07614 = 7
98532 / 14076 = 7

25496 / 03187 = 8
36712 / 04589 = 8
36728 / 04591 = 8
37512 / 04689 = 8
37528 / 04691 = 8
38152 / 04769 = 8
41896 / 05237 = 8
42968 / 05371 = 8
46312 / 05789 = 8
46328 / 05791 = 8
46712 / 05839 = 8
47136 / 05892 = 8
47328 / 05916 = 8
47368 / 05921 = 8
51832 / 06479 = 8
53928 / 06741 = 8
54312 / 06789 = 8
54328 / 06791 = 8
54712 / 06839 = 8
56984 / 07123 = 8
58496 / 07312 = 8
58912 / 07364 = 8
59328 / 07416 = 8
59368 / 07421 = 8
63152 / 07894 = 8
63528 / 07941 = 8
65392 / 08174 = 8
65432 / 08179 = 8
67152 / 08394 = 8
67352 / 08419 = 8
67512 / 08439 = 8
71456 / 08932 = 8
71536 / 08942 = 8
71624 / 08953 = 8
71632 / 08954 = 8
73248 / 09156 = 8
73264 / 09158 = 8
73456 / 09182 = 8
74528 / 09316 = 8
74568 / 09321 = 8
74816 / 09352 = 8
75328 / 09416 = 8
75368 / 09421 = 8
76184 / 09523 = 8
76248 / 09531 = 8
76328 / 09541 = 8
83672 / 10459 = 8
83752 / 10469 = 8
84296 / 10537 = 8
84632 / 10579 = 8
84736 / 10592 = 8
85392 / 10674 = 8
85432 / 10679 = 8
85936 / 10742 = 8
86352 / 10794 = 8
87456 / 10932 = 8
87536 / 10942 = 8
87624 / 10953 = 8
87632 / 10954 = 8
96584 / 12073 = 8
98456 / 12307 = 8
98760 / 12345 = 8

57429 / 06381 = 9
58239 / 06471 = 9
75249 / 08361 = 9
95742 / 10638 = 9
95823 / 10647 = 9
97524 / 10836 = 9

KHONG CO

KHONG CO

45792 / 03816 = 12
73548 / 06129 = 12
89532 / 07461 = 12
91584 / 07632 = 12

67392 / 05184 = 13
81549 / 06273 = 13
94653 / 07281 = 13

25746 / 01839 = 14
27384 / 01956 = 14
41538 / 02967 = 14
46158 / 03297 = 14
51492 / 03678 = 14
54768 / 03912 = 14
61572 / 04398 = 14
65982 / 04713 = 14

27945 / 01863 = 15
92745 / 06183 = 15

45936 / 02871 = 16
73296 / 04581 = 16
98352 / 06147 = 16

26843 / 01579 = 17
28543 / 01679 = 17
29546 / 01738 = 17
36958 / 02174 = 17
45713 / 02689 = 17
45781 / 02693 = 17
54689 / 03217 = 17
59126 / 03478 = 17
64957 / 03821 = 17
65297 / 03841 = 17
67184 / 03952 = 17
67218 / 03954 = 17
76823 / 04519 = 17
76891 / 04523 = 17
78132 / 04596 = 17
78523 / 04619 = 17
78591 / 04623 = 17
81532 / 04796 = 17
83572 / 04916 = 17
83657 / 04921 = 17
89437 / 05261 = 17
89471 / 05263 = 17
89641 / 05273 = 17
91426 / 05378 = 17
92837 / 05461 = 17
92871 / 05463 = 17
93126 / 05478 = 17

28674 / 01593 = 18

51984 / 02736 = 19
81567 / 04293 = 19

KHONG CO

KHONG CO

51678 / 02349 = 22

36294 / 01578 = 23
81627 / 03549 = 23
81972 / 03564 = 23

39528 / 01647 = 24
46872 / 01953 = 24

KHONG CO

42978 / 01653 = 26
56498 / 02173 = 26
61854 / 02379 = 26
67314 / 02589 = 26
67418 / 02593 = 26
76518 / 02943 = 26
82654 / 03179 = 26
89726 / 03451 = 26
92846 / 03571 = 26

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

37584 / 01296 = 29
73689 / 02541 = 29

KHONG CO', NULL, 12.5)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (38, 6, N'2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
27
29
30
31
32
33
34
35
36
37
38
39
40', N'13458 / 06729 = 2
13584 / 06792 = 2
13854 / 06927 = 2
14538 / 07269 = 2
14586 / 07293 = 2
14658 / 07329 = 2
15384 / 07692 = 2
15846 / 07923 = 2
15864 / 07932 = 2
18534 / 09267 = 2
18546 / 09273 = 2
18654 / 09327 = 2
26970 / 13485 = 2
27096 / 13548 = 2
27690 / 13845 = 2
29076 / 14538 = 2
29370 / 14685 = 2
29670 / 14835 = 2
29706 / 14853 = 2
29730 / 14865 = 2
30972 / 15486 = 2
32970 / 16485 = 2
37092 / 18546 = 2
37290 / 18645 = 2
41358 / 20679 = 2
41538 / 20769 = 2
41586 / 20793 = 2
46158 / 23079 = 2
53418 / 26709 = 2
53814 / 26907 = 2
54138 / 27069 = 2
54186 / 27093 = 2
54618 / 27309 = 2
58134 / 29067 = 2
58146 / 29073 = 2
58614 / 29307 = 2
61458 / 30729 = 2
61584 / 30792 = 2
61854 / 30927 = 2
62970 / 31485 = 2
64158 / 32079 = 2
65418 / 32709 = 2
65814 / 32907 = 2
69702 / 34851 = 2
70296 / 35148 = 2
70962 / 35481 = 2
76290 / 38145 = 2
76902 / 38451 = 2
90276 / 45138 = 2
90372 / 45186 = 2
90762 / 45381 = 2
92370 / 46185 = 2
93702 / 46851 = 2
96270 / 48135 = 2
96702 / 48351 = 2
97026 / 48513 = 2
97032 / 48516 = 2
97062 / 48531 = 2
97230 / 48615 = 2
97302 / 48651 = 2

17469 / 05823 = 3
17496 / 05832 = 3
50382 / 16794 = 3
53082 / 17694 = 3
61749 / 20583 = 3
69174 / 23058 = 3
91746 / 30582 = 3
96174 / 32058 = 3

15768 / 03942 = 4
17568 / 04392 = 4
23184 / 05796 = 4
31824 / 07956 = 4
60948 / 15237 = 4
68940 / 17235 = 4
69408 / 17352 = 4
81576 / 20394 = 4
81756 / 20439 = 4
86940 / 21735 = 4
94068 / 23517 = 4
94860 / 23715 = 4

13485 / 02697 = 5
13845 / 02769 = 5
14685 / 02937 = 5
14835 / 02967 = 5
14865 / 02973 = 5
16485 / 03297 = 5
18645 / 03729 = 5
31485 / 06297 = 5
38145 / 07629 = 5
46185 / 09237 = 5
48135 / 09627 = 5
48615 / 09723 = 5
67290 / 13458 = 5
67920 / 13584 = 5
69270 / 13854 = 5
72690 / 14538 = 5
72930 / 14586 = 5
73290 / 14658 = 5
76920 / 15384 = 5
79230 / 15846 = 5
79320 / 15864 = 5
92670 / 18534 = 5
92730 / 18546 = 5
93270 / 18654 = 5

17658 / 02943 = 6
27918 / 04653 = 6
34182 / 05697 = 6

16758 / 02394 = 7
18459 / 02637 = 7
31689 / 04527 = 7
36918 / 05274 = 7
37926 / 05418 = 7
41832 / 05976 = 7
53298 / 07614 = 7
98532 / 14076 = 7

25496 / 03187 = 8
36712 / 04589 = 8
36728 / 04591 = 8
37512 / 04689 = 8
37528 / 04691 = 8
38152 / 04769 = 8
41896 / 05237 = 8
42968 / 05371 = 8
46312 / 05789 = 8
46328 / 05791 = 8
46712 / 05839 = 8
47136 / 05892 = 8
47328 / 05916 = 8
47368 / 05921 = 8
51832 / 06479 = 8
53928 / 06741 = 8
54312 / 06789 = 8
54328 / 06791 = 8
54712 / 06839 = 8
56984 / 07123 = 8
58496 / 07312 = 8
58912 / 07364 = 8
59328 / 07416 = 8
59368 / 07421 = 8
63152 / 07894 = 8
63528 / 07941 = 8
65392 / 08174 = 8
65432 / 08179 = 8
67152 / 08394 = 8
67352 / 08419 = 8
67512 / 08439 = 8
71456 / 08932 = 8
71536 / 08942 = 8
71624 / 08953 = 8
71632 / 08954 = 8
73248 / 09156 = 8
73264 / 09158 = 8
73456 / 09182 = 8
74528 / 09316 = 8
74568 / 09321 = 8
74816 / 09352 = 8
75328 / 09416 = 8
75368 / 09421 = 8
76184 / 09523 = 8
76248 / 09531 = 8
76328 / 09541 = 8
83672 / 10459 = 8
83752 / 10469 = 8
84296 / 10537 = 8
84632 / 10579 = 8
84736 / 10592 = 8
85392 / 10674 = 8
85432 / 10679 = 8
85936 / 10742 = 8
86352 / 10794 = 8
87456 / 10932 = 8
87536 / 10942 = 8
87624 / 10953 = 8
87632 / 10954 = 8
96584 / 12073 = 8
98456 / 12307 = 8
98760 / 12345 = 8

57429 / 06381 = 9
58239 / 06471 = 9
75249 / 08361 = 9
95742 / 10638 = 9
95823 / 10647 = 9
97524 / 10836 = 9

KHONG CO

KHONG CO

45792 / 03816 = 12
73548 / 06129 = 12
89532 / 07461 = 12
91584 / 07632 = 12

67392 / 05184 = 13
81549 / 06273 = 13
94653 / 07281 = 13

25746 / 01839 = 14
27384 / 01956 = 14
41538 / 02967 = 14
46158 / 03297 = 14
51492 / 03678 = 14
54768 / 03912 = 14
61572 / 04398 = 14
65982 / 04713 = 14

27945 / 01863 = 15
92745 / 06183 = 15

45936 / 02871 = 16
73296 / 04581 = 16
98352 / 06147 = 16

26843 / 01579 = 17
28543 / 01679 = 17
29546 / 01738 = 17
36958 / 02174 = 17
45713 / 02689 = 17
45781 / 02693 = 17
54689 / 03217 = 17
59126 / 03478 = 17
64957 / 03821 = 17
65297 / 03841 = 17
67184 / 03952 = 17
67218 / 03954 = 17
76823 / 04519 = 17
76891 / 04523 = 17
78132 / 04596 = 17
78523 / 04619 = 17
78591 / 04623 = 17
81532 / 04796 = 17
83572 / 04916 = 17
83657 / 04921 = 17
89437 / 05261 = 17
89471 / 05263 = 17
89641 / 05273 = 17
91426 / 05378 = 17
92837 / 05461 = 17
92871 / 05463 = 17
93126 / 05478 = 17

28674 / 01593 = 18

51984 / 02736 = 19
81567 / 04293 = 19

KHONG CO

KHONG CO

51678 / 02349 = 22

36294 / 01578 = 23
81627 / 03549 = 23
81972 / 03564 = 23

39528 / 01647 = 24
46872 / 01953 = 24

KHONG CO

42978 / 01653 = 26
56498 / 02173 = 26
61854 / 02379 = 26
67314 / 02589 = 26
67418 / 02593 = 26
76518 / 02943 = 26
82654 / 03179 = 26
89726 / 03451 = 26
92846 / 03571 = 26

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

37584 / 01296 = 29
73689 / 02541 = 29

KHONG CO

KHONG CO

75168 / 02349 = 32

KHONG CO

KHONG CO

48265 / 01379 = 35
63945 / 01827 = 35
64295 / 01837 = 35
74865 / 02139 = 35
93485 / 02671 = 35

KHONG CO

65934 / 01782 = 37

65892 / 01734 = 38
74328 / 01956 = 38

KHONG CO

KHONG CO', NULL, 12.5)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (39, 6, N'2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
27
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50', N'13458 / 06729 = 2
13584 / 06792 = 2
13854 / 06927 = 2
14538 / 07269 = 2
14586 / 07293 = 2
14658 / 07329 = 2
15384 / 07692 = 2
15846 / 07923 = 2
15864 / 07932 = 2
18534 / 09267 = 2
18546 / 09273 = 2
18654 / 09327 = 2
26970 / 13485 = 2
27096 / 13548 = 2
27690 / 13845 = 2
29076 / 14538 = 2
29370 / 14685 = 2
29670 / 14835 = 2
29706 / 14853 = 2
29730 / 14865 = 2
30972 / 15486 = 2
32970 / 16485 = 2
37092 / 18546 = 2
37290 / 18645 = 2
41358 / 20679 = 2
41538 / 20769 = 2
41586 / 20793 = 2
46158 / 23079 = 2
53418 / 26709 = 2
53814 / 26907 = 2
54138 / 27069 = 2
54186 / 27093 = 2
54618 / 27309 = 2
58134 / 29067 = 2
58146 / 29073 = 2
58614 / 29307 = 2
61458 / 30729 = 2
61584 / 30792 = 2
61854 / 30927 = 2
62970 / 31485 = 2
64158 / 32079 = 2
65418 / 32709 = 2
65814 / 32907 = 2
69702 / 34851 = 2
70296 / 35148 = 2
70962 / 35481 = 2
76290 / 38145 = 2
76902 / 38451 = 2
90276 / 45138 = 2
90372 / 45186 = 2
90762 / 45381 = 2
92370 / 46185 = 2
93702 / 46851 = 2
96270 / 48135 = 2
96702 / 48351 = 2
97026 / 48513 = 2
97032 / 48516 = 2
97062 / 48531 = 2
97230 / 48615 = 2
97302 / 48651 = 2

17469 / 05823 = 3
17496 / 05832 = 3
50382 / 16794 = 3
53082 / 17694 = 3
61749 / 20583 = 3
69174 / 23058 = 3
91746 / 30582 = 3
96174 / 32058 = 3

15768 / 03942 = 4
17568 / 04392 = 4
23184 / 05796 = 4
31824 / 07956 = 4
60948 / 15237 = 4
68940 / 17235 = 4
69408 / 17352 = 4
81576 / 20394 = 4
81756 / 20439 = 4
86940 / 21735 = 4
94068 / 23517 = 4
94860 / 23715 = 4

13485 / 02697 = 5
13845 / 02769 = 5
14685 / 02937 = 5
14835 / 02967 = 5
14865 / 02973 = 5
16485 / 03297 = 5
18645 / 03729 = 5
31485 / 06297 = 5
38145 / 07629 = 5
46185 / 09237 = 5
48135 / 09627 = 5
48615 / 09723 = 5
67290 / 13458 = 5
67920 / 13584 = 5
69270 / 13854 = 5
72690 / 14538 = 5
72930 / 14586 = 5
73290 / 14658 = 5
76920 / 15384 = 5
79230 / 15846 = 5
79320 / 15864 = 5
92670 / 18534 = 5
92730 / 18546 = 5
93270 / 18654 = 5

17658 / 02943 = 6
27918 / 04653 = 6
34182 / 05697 = 6

16758 / 02394 = 7
18459 / 02637 = 7
31689 / 04527 = 7
36918 / 05274 = 7
37926 / 05418 = 7
41832 / 05976 = 7
53298 / 07614 = 7
98532 / 14076 = 7

25496 / 03187 = 8
36712 / 04589 = 8
36728 / 04591 = 8
37512 / 04689 = 8
37528 / 04691 = 8
38152 / 04769 = 8
41896 / 05237 = 8
42968 / 05371 = 8
46312 / 05789 = 8
46328 / 05791 = 8
46712 / 05839 = 8
47136 / 05892 = 8
47328 / 05916 = 8
47368 / 05921 = 8
51832 / 06479 = 8
53928 / 06741 = 8
54312 / 06789 = 8
54328 / 06791 = 8
54712 / 06839 = 8
56984 / 07123 = 8
58496 / 07312 = 8
58912 / 07364 = 8
59328 / 07416 = 8
59368 / 07421 = 8
63152 / 07894 = 8
63528 / 07941 = 8
65392 / 08174 = 8
65432 / 08179 = 8
67152 / 08394 = 8
67352 / 08419 = 8
67512 / 08439 = 8
71456 / 08932 = 8
71536 / 08942 = 8
71624 / 08953 = 8
71632 / 08954 = 8
73248 / 09156 = 8
73264 / 09158 = 8
73456 / 09182 = 8
74528 / 09316 = 8
74568 / 09321 = 8
74816 / 09352 = 8
75328 / 09416 = 8
75368 / 09421 = 8
76184 / 09523 = 8
76248 / 09531 = 8
76328 / 09541 = 8
83672 / 10459 = 8
83752 / 10469 = 8
84296 / 10537 = 8
84632 / 10579 = 8
84736 / 10592 = 8
85392 / 10674 = 8
85432 / 10679 = 8
85936 / 10742 = 8
86352 / 10794 = 8
87456 / 10932 = 8
87536 / 10942 = 8
87624 / 10953 = 8
87632 / 10954 = 8
96584 / 12073 = 8
98456 / 12307 = 8
98760 / 12345 = 8

57429 / 06381 = 9
58239 / 06471 = 9
75249 / 08361 = 9
95742 / 10638 = 9
95823 / 10647 = 9
97524 / 10836 = 9

KHONG CO

KHONG CO

45792 / 03816 = 12
73548 / 06129 = 12
89532 / 07461 = 12
91584 / 07632 = 12

67392 / 05184 = 13
81549 / 06273 = 13
94653 / 07281 = 13

25746 / 01839 = 14
27384 / 01956 = 14
41538 / 02967 = 14
46158 / 03297 = 14
51492 / 03678 = 14
54768 / 03912 = 14
61572 / 04398 = 14
65982 / 04713 = 14

27945 / 01863 = 15
92745 / 06183 = 15

45936 / 02871 = 16
73296 / 04581 = 16
98352 / 06147 = 16

26843 / 01579 = 17
28543 / 01679 = 17
29546 / 01738 = 17
36958 / 02174 = 17
45713 / 02689 = 17
45781 / 02693 = 17
54689 / 03217 = 17
59126 / 03478 = 17
64957 / 03821 = 17
65297 / 03841 = 17
67184 / 03952 = 17
67218 / 03954 = 17
76823 / 04519 = 17
76891 / 04523 = 17
78132 / 04596 = 17
78523 / 04619 = 17
78591 / 04623 = 17
81532 / 04796 = 17
83572 / 04916 = 17
83657 / 04921 = 17
89437 / 05261 = 17
89471 / 05263 = 17
89641 / 05273 = 17
91426 / 05378 = 17
92837 / 05461 = 17
92871 / 05463 = 17
93126 / 05478 = 17

28674 / 01593 = 18

51984 / 02736 = 19
81567 / 04293 = 19

KHONG CO

KHONG CO

51678 / 02349 = 22

36294 / 01578 = 23
81627 / 03549 = 23
81972 / 03564 = 23

39528 / 01647 = 24
46872 / 01953 = 24

KHONG CO

42978 / 01653 = 26
56498 / 02173 = 26
61854 / 02379 = 26
67314 / 02589 = 26
67418 / 02593 = 26
76518 / 02943 = 26
82654 / 03179 = 26
89726 / 03451 = 26
92846 / 03571 = 26

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

37584 / 01296 = 29
73689 / 02541 = 29

KHONG CO

KHONG CO

75168 / 02349 = 32

KHONG CO

KHONG CO

48265 / 01379 = 35
63945 / 01827 = 35
64295 / 01837 = 35
74865 / 02139 = 35
93485 / 02671 = 35

KHONG CO

65934 / 01782 = 37

65892 / 01734 = 38
74328 / 01956 = 38

KHONG CO

KHONG CO

KHONG CO

KHONG CO

93654 / 02178 = 43

58476 / 01329 = 44
59268 / 01347 = 44
67892 / 01543 = 44
69432 / 01578 = 44
95348 / 02167 = 44

KHONG CO

58374 / 01269 = 46

KHONG CO

KHONG CO

KHONG CO

KHONG CO', NULL, 12.5)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (40, 6, N'2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
27
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60', N'13458 / 06729 = 2
13584 / 06792 = 2
13854 / 06927 = 2
14538 / 07269 = 2
14586 / 07293 = 2
14658 / 07329 = 2
15384 / 07692 = 2
15846 / 07923 = 2
15864 / 07932 = 2
18534 / 09267 = 2
18546 / 09273 = 2
18654 / 09327 = 2
26970 / 13485 = 2
27096 / 13548 = 2
27690 / 13845 = 2
29076 / 14538 = 2
29370 / 14685 = 2
29670 / 14835 = 2
29706 / 14853 = 2
29730 / 14865 = 2
30972 / 15486 = 2
32970 / 16485 = 2
37092 / 18546 = 2
37290 / 18645 = 2
41358 / 20679 = 2
41538 / 20769 = 2
41586 / 20793 = 2
46158 / 23079 = 2
53418 / 26709 = 2
53814 / 26907 = 2
54138 / 27069 = 2
54186 / 27093 = 2
54618 / 27309 = 2
58134 / 29067 = 2
58146 / 29073 = 2
58614 / 29307 = 2
61458 / 30729 = 2
61584 / 30792 = 2
61854 / 30927 = 2
62970 / 31485 = 2
64158 / 32079 = 2
65418 / 32709 = 2
65814 / 32907 = 2
69702 / 34851 = 2
70296 / 35148 = 2
70962 / 35481 = 2
76290 / 38145 = 2
76902 / 38451 = 2
90276 / 45138 = 2
90372 / 45186 = 2
90762 / 45381 = 2
92370 / 46185 = 2
93702 / 46851 = 2
96270 / 48135 = 2
96702 / 48351 = 2
97026 / 48513 = 2
97032 / 48516 = 2
97062 / 48531 = 2
97230 / 48615 = 2
97302 / 48651 = 2

17469 / 05823 = 3
17496 / 05832 = 3
50382 / 16794 = 3
53082 / 17694 = 3
61749 / 20583 = 3
69174 / 23058 = 3
91746 / 30582 = 3
96174 / 32058 = 3

15768 / 03942 = 4
17568 / 04392 = 4
23184 / 05796 = 4
31824 / 07956 = 4
60948 / 15237 = 4
68940 / 17235 = 4
69408 / 17352 = 4
81576 / 20394 = 4
81756 / 20439 = 4
86940 / 21735 = 4
94068 / 23517 = 4
94860 / 23715 = 4

13485 / 02697 = 5
13845 / 02769 = 5
14685 / 02937 = 5
14835 / 02967 = 5
14865 / 02973 = 5
16485 / 03297 = 5
18645 / 03729 = 5
31485 / 06297 = 5
38145 / 07629 = 5
46185 / 09237 = 5
48135 / 09627 = 5
48615 / 09723 = 5
67290 / 13458 = 5
67920 / 13584 = 5
69270 / 13854 = 5
72690 / 14538 = 5
72930 / 14586 = 5
73290 / 14658 = 5
76920 / 15384 = 5
79230 / 15846 = 5
79320 / 15864 = 5
92670 / 18534 = 5
92730 / 18546 = 5
93270 / 18654 = 5

17658 / 02943 = 6
27918 / 04653 = 6
34182 / 05697 = 6

16758 / 02394 = 7
18459 / 02637 = 7
31689 / 04527 = 7
36918 / 05274 = 7
37926 / 05418 = 7
41832 / 05976 = 7
53298 / 07614 = 7
98532 / 14076 = 7

25496 / 03187 = 8
36712 / 04589 = 8
36728 / 04591 = 8
37512 / 04689 = 8
37528 / 04691 = 8
38152 / 04769 = 8
41896 / 05237 = 8
42968 / 05371 = 8
46312 / 05789 = 8
46328 / 05791 = 8
46712 / 05839 = 8
47136 / 05892 = 8
47328 / 05916 = 8
47368 / 05921 = 8
51832 / 06479 = 8
53928 / 06741 = 8
54312 / 06789 = 8
54328 / 06791 = 8
54712 / 06839 = 8
56984 / 07123 = 8
58496 / 07312 = 8
58912 / 07364 = 8
59328 / 07416 = 8
59368 / 07421 = 8
63152 / 07894 = 8
63528 / 07941 = 8
65392 / 08174 = 8
65432 / 08179 = 8
67152 / 08394 = 8
67352 / 08419 = 8
67512 / 08439 = 8
71456 / 08932 = 8
71536 / 08942 = 8
71624 / 08953 = 8
71632 / 08954 = 8
73248 / 09156 = 8
73264 / 09158 = 8
73456 / 09182 = 8
74528 / 09316 = 8
74568 / 09321 = 8
74816 / 09352 = 8
75328 / 09416 = 8
75368 / 09421 = 8
76184 / 09523 = 8
76248 / 09531 = 8
76328 / 09541 = 8
83672 / 10459 = 8
83752 / 10469 = 8
84296 / 10537 = 8
84632 / 10579 = 8
84736 / 10592 = 8
85392 / 10674 = 8
85432 / 10679 = 8
85936 / 10742 = 8
86352 / 10794 = 8
87456 / 10932 = 8
87536 / 10942 = 8
87624 / 10953 = 8
87632 / 10954 = 8
96584 / 12073 = 8
98456 / 12307 = 8
98760 / 12345 = 8

57429 / 06381 = 9
58239 / 06471 = 9
75249 / 08361 = 9
95742 / 10638 = 9
95823 / 10647 = 9
97524 / 10836 = 9

KHONG CO

KHONG CO

45792 / 03816 = 12
73548 / 06129 = 12
89532 / 07461 = 12
91584 / 07632 = 12

67392 / 05184 = 13
81549 / 06273 = 13
94653 / 07281 = 13

25746 / 01839 = 14
27384 / 01956 = 14
41538 / 02967 = 14
46158 / 03297 = 14
51492 / 03678 = 14
54768 / 03912 = 14
61572 / 04398 = 14
65982 / 04713 = 14

27945 / 01863 = 15
92745 / 06183 = 15

45936 / 02871 = 16
73296 / 04581 = 16
98352 / 06147 = 16

26843 / 01579 = 17
28543 / 01679 = 17
29546 / 01738 = 17
36958 / 02174 = 17
45713 / 02689 = 17
45781 / 02693 = 17
54689 / 03217 = 17
59126 / 03478 = 17
64957 / 03821 = 17
65297 / 03841 = 17
67184 / 03952 = 17
67218 / 03954 = 17
76823 / 04519 = 17
76891 / 04523 = 17
78132 / 04596 = 17
78523 / 04619 = 17
78591 / 04623 = 17
81532 / 04796 = 17
83572 / 04916 = 17
83657 / 04921 = 17
89437 / 05261 = 17
89471 / 05263 = 17
89641 / 05273 = 17
91426 / 05378 = 17
92837 / 05461 = 17
92871 / 05463 = 17
93126 / 05478 = 17

28674 / 01593 = 18

51984 / 02736 = 19
81567 / 04293 = 19

KHONG CO

KHONG CO

51678 / 02349 = 22

36294 / 01578 = 23
81627 / 03549 = 23
81972 / 03564 = 23

39528 / 01647 = 24
46872 / 01953 = 24

KHONG CO

42978 / 01653 = 26
56498 / 02173 = 26
61854 / 02379 = 26
67314 / 02589 = 26
67418 / 02593 = 26
76518 / 02943 = 26
82654 / 03179 = 26
89726 / 03451 = 26
92846 / 03571 = 26

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

37584 / 01296 = 29
73689 / 02541 = 29

KHONG CO

KHONG CO

75168 / 02349 = 32

KHONG CO

KHONG CO

48265 / 01379 = 35
63945 / 01827 = 35
64295 / 01837 = 35
74865 / 02139 = 35
93485 / 02671 = 35

KHONG CO

65934 / 01782 = 37

65892 / 01734 = 38
74328 / 01956 = 38

KHONG CO

KHONG CO

KHONG CO

KHONG CO

93654 / 02178 = 43

58476 / 01329 = 44
59268 / 01347 = 44
67892 / 01543 = 44
69432 / 01578 = 44
95348 / 02167 = 44

KHONG CO

58374 / 01269 = 46

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

95472 / 01836 = 52

65879 / 01243 = 53
75896 / 01432 = 53
84376 / 01592 = 53
92538 / 01746 = 53

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

73986 / 01254 = 59

KHONG CO', NULL, 12.5)
INSERT [dbo].[TestCases] ([MaTestCase], [MaDB], [Input], [Output], [MoTa], [Diem]) VALUES (41, 6, N'2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
27
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70', N'13458 / 06729 = 2
13584 / 06792 = 2
13854 / 06927 = 2
14538 / 07269 = 2
14586 / 07293 = 2
14658 / 07329 = 2
15384 / 07692 = 2
15846 / 07923 = 2
15864 / 07932 = 2
18534 / 09267 = 2
18546 / 09273 = 2
18654 / 09327 = 2
26970 / 13485 = 2
27096 / 13548 = 2
27690 / 13845 = 2
29076 / 14538 = 2
29370 / 14685 = 2
29670 / 14835 = 2
29706 / 14853 = 2
29730 / 14865 = 2
30972 / 15486 = 2
32970 / 16485 = 2
37092 / 18546 = 2
37290 / 18645 = 2
41358 / 20679 = 2
41538 / 20769 = 2
41586 / 20793 = 2
46158 / 23079 = 2
53418 / 26709 = 2
53814 / 26907 = 2
54138 / 27069 = 2
54186 / 27093 = 2
54618 / 27309 = 2
58134 / 29067 = 2
58146 / 29073 = 2
58614 / 29307 = 2
61458 / 30729 = 2
61584 / 30792 = 2
61854 / 30927 = 2
62970 / 31485 = 2
64158 / 32079 = 2
65418 / 32709 = 2
65814 / 32907 = 2
69702 / 34851 = 2
70296 / 35148 = 2
70962 / 35481 = 2
76290 / 38145 = 2
76902 / 38451 = 2
90276 / 45138 = 2
90372 / 45186 = 2
90762 / 45381 = 2
92370 / 46185 = 2
93702 / 46851 = 2
96270 / 48135 = 2
96702 / 48351 = 2
97026 / 48513 = 2
97032 / 48516 = 2
97062 / 48531 = 2
97230 / 48615 = 2
97302 / 48651 = 2

17469 / 05823 = 3
17496 / 05832 = 3
50382 / 16794 = 3
53082 / 17694 = 3
61749 / 20583 = 3
69174 / 23058 = 3
91746 / 30582 = 3
96174 / 32058 = 3

15768 / 03942 = 4
17568 / 04392 = 4
23184 / 05796 = 4
31824 / 07956 = 4
60948 / 15237 = 4
68940 / 17235 = 4
69408 / 17352 = 4
81576 / 20394 = 4
81756 / 20439 = 4
86940 / 21735 = 4
94068 / 23517 = 4
94860 / 23715 = 4

13485 / 02697 = 5
13845 / 02769 = 5
14685 / 02937 = 5
14835 / 02967 = 5
14865 / 02973 = 5
16485 / 03297 = 5
18645 / 03729 = 5
31485 / 06297 = 5
38145 / 07629 = 5
46185 / 09237 = 5
48135 / 09627 = 5
48615 / 09723 = 5
67290 / 13458 = 5
67920 / 13584 = 5
69270 / 13854 = 5
72690 / 14538 = 5
72930 / 14586 = 5
73290 / 14658 = 5
76920 / 15384 = 5
79230 / 15846 = 5
79320 / 15864 = 5
92670 / 18534 = 5
92730 / 18546 = 5
93270 / 18654 = 5

17658 / 02943 = 6
27918 / 04653 = 6
34182 / 05697 = 6

16758 / 02394 = 7
18459 / 02637 = 7
31689 / 04527 = 7
36918 / 05274 = 7
37926 / 05418 = 7
41832 / 05976 = 7
53298 / 07614 = 7
98532 / 14076 = 7

25496 / 03187 = 8
36712 / 04589 = 8
36728 / 04591 = 8
37512 / 04689 = 8
37528 / 04691 = 8
38152 / 04769 = 8
41896 / 05237 = 8
42968 / 05371 = 8
46312 / 05789 = 8
46328 / 05791 = 8
46712 / 05839 = 8
47136 / 05892 = 8
47328 / 05916 = 8
47368 / 05921 = 8
51832 / 06479 = 8
53928 / 06741 = 8
54312 / 06789 = 8
54328 / 06791 = 8
54712 / 06839 = 8
56984 / 07123 = 8
58496 / 07312 = 8
58912 / 07364 = 8
59328 / 07416 = 8
59368 / 07421 = 8
63152 / 07894 = 8
63528 / 07941 = 8
65392 / 08174 = 8
65432 / 08179 = 8
67152 / 08394 = 8
67352 / 08419 = 8
67512 / 08439 = 8
71456 / 08932 = 8
71536 / 08942 = 8
71624 / 08953 = 8
71632 / 08954 = 8
73248 / 09156 = 8
73264 / 09158 = 8
73456 / 09182 = 8
74528 / 09316 = 8
74568 / 09321 = 8
74816 / 09352 = 8
75328 / 09416 = 8
75368 / 09421 = 8
76184 / 09523 = 8
76248 / 09531 = 8
76328 / 09541 = 8
83672 / 10459 = 8
83752 / 10469 = 8
84296 / 10537 = 8
84632 / 10579 = 8
84736 / 10592 = 8
85392 / 10674 = 8
85432 / 10679 = 8
85936 / 10742 = 8
86352 / 10794 = 8
87456 / 10932 = 8
87536 / 10942 = 8
87624 / 10953 = 8
87632 / 10954 = 8
96584 / 12073 = 8
98456 / 12307 = 8
98760 / 12345 = 8

57429 / 06381 = 9
58239 / 06471 = 9
75249 / 08361 = 9
95742 / 10638 = 9
95823 / 10647 = 9
97524 / 10836 = 9

KHONG CO

KHONG CO

45792 / 03816 = 12
73548 / 06129 = 12
89532 / 07461 = 12
91584 / 07632 = 12

67392 / 05184 = 13
81549 / 06273 = 13
94653 / 07281 = 13

25746 / 01839 = 14
27384 / 01956 = 14
41538 / 02967 = 14
46158 / 03297 = 14
51492 / 03678 = 14
54768 / 03912 = 14
61572 / 04398 = 14
65982 / 04713 = 14

27945 / 01863 = 15
92745 / 06183 = 15

45936 / 02871 = 16
73296 / 04581 = 16
98352 / 06147 = 16

26843 / 01579 = 17
28543 / 01679 = 17
29546 / 01738 = 17
36958 / 02174 = 17
45713 / 02689 = 17
45781 / 02693 = 17
54689 / 03217 = 17
59126 / 03478 = 17
64957 / 03821 = 17
65297 / 03841 = 17
67184 / 03952 = 17
67218 / 03954 = 17
76823 / 04519 = 17
76891 / 04523 = 17
78132 / 04596 = 17
78523 / 04619 = 17
78591 / 04623 = 17
81532 / 04796 = 17
83572 / 04916 = 17
83657 / 04921 = 17
89437 / 05261 = 17
89471 / 05263 = 17
89641 / 05273 = 17
91426 / 05378 = 17
92837 / 05461 = 17
92871 / 05463 = 17
93126 / 05478 = 17

28674 / 01593 = 18

51984 / 02736 = 19
81567 / 04293 = 19

KHONG CO

KHONG CO

51678 / 02349 = 22

36294 / 01578 = 23
81627 / 03549 = 23
81972 / 03564 = 23

39528 / 01647 = 24
46872 / 01953 = 24

KHONG CO

42978 / 01653 = 26
56498 / 02173 = 26
61854 / 02379 = 26
67314 / 02589 = 26
67418 / 02593 = 26
76518 / 02943 = 26
82654 / 03179 = 26
89726 / 03451 = 26
92846 / 03571 = 26

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

39852 / 01476 = 27
49572 / 01836 = 27
69741 / 02583 = 27
96714 / 03582 = 27

37584 / 01296 = 29
73689 / 02541 = 29

KHONG CO

KHONG CO

75168 / 02349 = 32

KHONG CO

KHONG CO

48265 / 01379 = 35
63945 / 01827 = 35
64295 / 01837 = 35
74865 / 02139 = 35
93485 / 02671 = 35

KHONG CO

65934 / 01782 = 37

65892 / 01734 = 38
74328 / 01956 = 38

KHONG CO

KHONG CO

KHONG CO

KHONG CO

93654 / 02178 = 43

58476 / 01329 = 44
59268 / 01347 = 44
67892 / 01543 = 44
69432 / 01578 = 44
95348 / 02167 = 44

KHONG CO

58374 / 01269 = 46

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

95472 / 01836 = 52

65879 / 01243 = 53
75896 / 01432 = 53
84376 / 01592 = 53
92538 / 01746 = 53

KHONG CO

KHONG CO

KHONG CO

KHONG CO

KHONG CO

73986 / 01254 = 59

KHONG CO

KHONG CO

79546 / 01283 = 62
94736 / 01528 = 62

KHONG CO

KHONG CO

KHONG CO

83754 / 01269 = 66

KHONG CO

98736 / 01452 = 68

KHONG CO

KHONG CO', NULL, 12.5)
SET IDENTITY_INSERT [dbo].[TestCases] OFF
/****** Object:  Table [dbo].[TestCaseResult]    Script Date: 05/28/2012 20:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestCaseResult](
	[StudentSubmitID] [int] NOT NULL,
	[TestCaseID] [int] NOT NULL,
	[ExecutionTime] [int] NULL,
	[ExecutionMemory] [int] NULL,
	[Score] [float] NULL,
	[Comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_TestCaseResult] PRIMARY KEY CLUSTERED 
(
	[StudentSubmitID] ASC,
	[TestCaseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (1, 1, 46, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (1, 2, 0, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (1, 3, 15, NULL, 0, N'Sai')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (1, 4, 0, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (1, 5, 15, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (1, 6, 0, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (1, 7, 15, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (2, 1, 31, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (2, 2, 0, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (2, 3, 0, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (2, 4, 15, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (2, 5, 0, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (2, 6, 15, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (2, 7, 0, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (3, 8, 15, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (3, 9, 15, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (3, 10, 0, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (3, 11, 0, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (3, 12, 0, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (3, 13, 0, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (6, 1, 31, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (6, 2, 0, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (6, 3, 0, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (6, 4, 31, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (6, 5, 0, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (6, 6, 15, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (6, 7, 0, NULL, 5.0015, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (7, 8, 31, NULL, 0, N'Sai')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (7, 9, 15, NULL, 0, N'Sai')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (7, 10, 0, NULL, 0, N'Sai')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (7, 11, 15, NULL, 0, N'Sai')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (7, 12, 0, NULL, 0, N'Sai')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (7, 13, 15, NULL, 0, N'Sai')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (8, 8, 0, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (8, 9, 0, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (8, 10, 15, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (8, 11, 0, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (8, 12, 15, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (8, 13, 0, NULL, 1.6670000000000003, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (9, 14, 31, NULL, 3.5, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (9, 15, 0, NULL, 3.5, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (9, 16, 15, NULL, 3.5, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (9, 17, 0, NULL, 3.5, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (9, 18, 15, NULL, 3.5, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (9, 19, 0, NULL, 3.5, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (9, 20, 0, NULL, 3.5, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (9, 21, 15, NULL, 3.5, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (9, 22, 0, NULL, 3.5, N'Đúng')
INSERT [dbo].[TestCaseResult] ([StudentSubmitID], [TestCaseID], [ExecutionTime], [ExecutionMemory], [Score], [Comment]) VALUES (9, 23, 15, NULL, 3.5, N'Đúng')
/****** Object:  Default [DF_Classes_IsDeleted]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Classes] ADD  CONSTRAINT [DF_Classes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Contests_IsDeleted]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Contests] ADD  CONSTRAINT [DF_Contests_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Exam_IsDeleted]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Exam] ADD  CONSTRAINT [DF_Exam_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Problems_IsDeleted]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Problems] ADD  CONSTRAINT [DF_Problems_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Subjects_IsDeleted]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Subjects] ADD  CONSTRAINT [DF_Subjects_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_Users_IsActived]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsActived]  DEFAULT ((0)) FOR [IsActived]
GO
/****** Object:  Default [DF_Users_IsLocked]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsLocked]  DEFAULT ((1)) FOR [IsLocked]
GO
/****** Object:  ForeignKey [FK_Class_Student_Classes]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Class_Student]  WITH CHECK ADD  CONSTRAINT [FK_Class_Student_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[Class_Student] CHECK CONSTRAINT [FK_Class_Student_Classes]
GO
/****** Object:  ForeignKey [FK_Class_Student_Users]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Class_Student]  WITH CHECK ADD  CONSTRAINT [FK_Class_Student_Users] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Class_Student] CHECK CONSTRAINT [FK_Class_Student_Users]
GO
/****** Object:  ForeignKey [FK_Classes_Subjects]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([ID])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_Subjects]
GO
/****** Object:  ForeignKey [FK_Classes_Users]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Classes]  WITH CHECK ADD  CONSTRAINT [FK_Classes_Users] FOREIGN KEY([LecturerID])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Classes] CHECK CONSTRAINT [FK_Classes_Users]
GO
/****** Object:  ForeignKey [FK_Contest_Student_Contests]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Contest_Student]  WITH CHECK ADD  CONSTRAINT [FK_Contest_Student_Contests] FOREIGN KEY([ContestID])
REFERENCES [dbo].[Contests] ([ID])
GO
ALTER TABLE [dbo].[Contest_Student] CHECK CONSTRAINT [FK_Contest_Student_Contests]
GO
/****** Object:  ForeignKey [FK_Contest_Student_Users]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Contest_Student]  WITH CHECK ADD  CONSTRAINT [FK_Contest_Student_Users] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Contest_Student] CHECK CONSTRAINT [FK_Contest_Student_Users]
GO
/****** Object:  ForeignKey [FK_NewContest_Classes]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Contests]  WITH CHECK ADD  CONSTRAINT [FK_NewContest_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[Contests] CHECK CONSTRAINT [FK_NewContest_Classes]
GO
/****** Object:  ForeignKey [FK_NewContest_Exam]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Contests]  WITH CHECK ADD  CONSTRAINT [FK_NewContest_Exam] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ID])
GO
ALTER TABLE [dbo].[Contests] CHECK CONSTRAINT [FK_NewContest_Exam]
GO
/****** Object:  ForeignKey [FK_Exam_Classes]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Classes]
GO
/****** Object:  ForeignKey [FK_Exam_Users]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Users] FOREIGN KEY([LecturerID])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Users]
GO
/****** Object:  ForeignKey [FK_Lecturer_Subject_Subjects]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Lecturer_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Subject_Subjects] FOREIGN KEY([MaMH])
REFERENCES [dbo].[Subjects] ([ID])
GO
ALTER TABLE [dbo].[Lecturer_Subject] CHECK CONSTRAINT [FK_Lecturer_Subject_Subjects]
GO
/****** Object:  ForeignKey [FK_Lecturer_Subject_Users]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Lecturer_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Subject_Users] FOREIGN KEY([MaGV])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Lecturer_Subject] CHECK CONSTRAINT [FK_Lecturer_Subject_Users]
GO
/****** Object:  ForeignKey [FK_Problem_Class_Classes]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Problem_Class]  WITH CHECK ADD  CONSTRAINT [FK_Problem_Class_Classes] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Classes] ([ID])
GO
ALTER TABLE [dbo].[Problem_Class] CHECK CONSTRAINT [FK_Problem_Class_Classes]
GO
/****** Object:  ForeignKey [FK_Problem_Class_Problems]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Problem_Class]  WITH CHECK ADD  CONSTRAINT [FK_Problem_Class_Problems] FOREIGN KEY([ProblemID])
REFERENCES [dbo].[Problems] ([ID])
GO
ALTER TABLE [dbo].[Problem_Class] CHECK CONSTRAINT [FK_Problem_Class_Problems]
GO
/****** Object:  ForeignKey [FK_Problems_Comparers]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Problems]  WITH CHECK ADD  CONSTRAINT [FK_Problems_Comparers] FOREIGN KEY([ComparerID])
REFERENCES [dbo].[Comparers] ([ID])
GO
ALTER TABLE [dbo].[Problems] CHECK CONSTRAINT [FK_Problems_Comparers]
GO
/****** Object:  ForeignKey [FK_Problems_Difficulties]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Problems]  WITH CHECK ADD  CONSTRAINT [FK_Problems_Difficulties] FOREIGN KEY([DifficultyID])
REFERENCES [dbo].[Difficulties] ([DifficultyID])
GO
ALTER TABLE [dbo].[Problems] CHECK CONSTRAINT [FK_Problems_Difficulties]
GO
/****** Object:  ForeignKey [FK_Problems_Exam]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Problems]  WITH CHECK ADD  CONSTRAINT [FK_Problems_Exam] FOREIGN KEY([ExamID])
REFERENCES [dbo].[Exam] ([ID])
GO
ALTER TABLE [dbo].[Problems] CHECK CONSTRAINT [FK_Problems_Exam]
GO
/****** Object:  ForeignKey [FK_Problems_File]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Problems]  WITH CHECK ADD  CONSTRAINT [FK_Problems_File] FOREIGN KEY([FileID])
REFERENCES [dbo].[File] ([ID])
GO
ALTER TABLE [dbo].[Problems] CHECK CONSTRAINT [FK_Problems_File]
GO
/****** Object:  ForeignKey [FK_Problems_Subjects]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Problems]  WITH CHECK ADD  CONSTRAINT [FK_Problems_Subjects] FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([ID])
GO
ALTER TABLE [dbo].[Problems] CHECK CONSTRAINT [FK_Problems_Subjects]
GO
/****** Object:  ForeignKey [FK_Problems_Users]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Problems]  WITH CHECK ADD  CONSTRAINT [FK_Problems_Users] FOREIGN KEY([LecturerID])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Problems] CHECK CONSTRAINT [FK_Problems_Users]
GO
/****** Object:  ForeignKey [FK_Student_Summit_Contests]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Student_Submit]  WITH CHECK ADD  CONSTRAINT [FK_Student_Summit_Contests] FOREIGN KEY([ContestID])
REFERENCES [dbo].[Contests] ([ID])
GO
ALTER TABLE [dbo].[Student_Submit] CHECK CONSTRAINT [FK_Student_Summit_Contests]
GO
/****** Object:  ForeignKey [FK_Student_Summit_Languages]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Student_Submit]  WITH CHECK ADD  CONSTRAINT [FK_Student_Summit_Languages] FOREIGN KEY([LanguageID])
REFERENCES [dbo].[Languages] ([ID])
GO
ALTER TABLE [dbo].[Student_Submit] CHECK CONSTRAINT [FK_Student_Summit_Languages]
GO
/****** Object:  ForeignKey [FK_Student_Summit_Problems]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Student_Submit]  WITH CHECK ADD  CONSTRAINT [FK_Student_Summit_Problems] FOREIGN KEY([ProblemID])
REFERENCES [dbo].[Problems] ([ID])
GO
ALTER TABLE [dbo].[Student_Submit] CHECK CONSTRAINT [FK_Student_Summit_Problems]
GO
/****** Object:  ForeignKey [FK_Student_Summit_Users]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[Student_Submit]  WITH CHECK ADD  CONSTRAINT [FK_Student_Summit_Users] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[Student_Submit] CHECK CONSTRAINT [FK_Student_Summit_Users]
GO
/****** Object:  ForeignKey [FK_TestCaseResult_Student_Summit]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[TestCaseResult]  WITH CHECK ADD  CONSTRAINT [FK_TestCaseResult_Student_Summit] FOREIGN KEY([StudentSubmitID])
REFERENCES [dbo].[Student_Submit] ([ID])
GO
ALTER TABLE [dbo].[TestCaseResult] CHECK CONSTRAINT [FK_TestCaseResult_Student_Summit]
GO
/****** Object:  ForeignKey [FK_TestCaseResult_TestCases]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[TestCaseResult]  WITH CHECK ADD  CONSTRAINT [FK_TestCaseResult_TestCases] FOREIGN KEY([TestCaseID])
REFERENCES [dbo].[TestCases] ([MaTestCase])
GO
ALTER TABLE [dbo].[TestCaseResult] CHECK CONSTRAINT [FK_TestCaseResult_TestCases]
GO
/****** Object:  ForeignKey [FK_TestCases_Problems]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[TestCases]  WITH CHECK ADD  CONSTRAINT [FK_TestCases_Problems] FOREIGN KEY([MaDB])
REFERENCES [dbo].[Problems] ([ID])
GO
ALTER TABLE [dbo].[TestCases] CHECK CONSTRAINT [FK_TestCases_Problems]
GO
/****** Object:  ForeignKey [FK_User_Role_Roles]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_Roles]
GO
/****** Object:  ForeignKey [FK_User_Role_Users]    Script Date: 05/28/2012 20:20:16 ******/
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD  CONSTRAINT [FK_User_Role_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Users] ([Username])
GO
ALTER TABLE [dbo].[User_Role] CHECK CONSTRAINT [FK_User_Role_Users]
GO
