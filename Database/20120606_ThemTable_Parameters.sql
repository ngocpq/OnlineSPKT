
USE [OnlineSPKT]
GO
/****** Object:  Table [dbo].[Parameters]    Script Date: 06/06/2012 04:01:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parameters](
	[Ma] [varchar](255) NOT NULL,
	[GiaTri] [nvarchar](255) NOT NULL,
	[KieuDuLieu] [varchar](255) NOT NULL,
	[GiaiThich] [nvarchar](255) NULL,
 CONSTRAINT [PK_Parameters] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Parameters] ([Ma], [GiaTri], [KieuDuLieu], [GiaiThich]) VALUES (N'SO_LUOT_TRUY_CAP', N'0', N'System.Int64', N'Số lượt người truy cập website')
