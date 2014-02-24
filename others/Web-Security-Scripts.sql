USE [Security]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 02/23/2014 21:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLogin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[ReTypePassword] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[BOD] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[mobile] [varchar](50) NULL,
	[sex] [varchar](50) NULL,
	[Sequrityquestion] [varchar](50) NULL,
	[Answer] [varchar](50) NULL,
	[designation] [varchar](50) NULL,
 CONSTRAINT [PK_UserLogin] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserLogin] ON
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (2, N'ABC', N'Tarade', N'A', N'A', N'A', N'RG@gmail.co.on', N'1/1/2001', N'A', N'11111', N'Male', N'What is your favorite Uncle?', N'1', N'Employee ')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (1, N'Ajay', N'Tarade', N'Ajay', N'1', N'1', N'tarade_ajay@yahoo.co.in', N'1/1/2008', N'2ewe', N'3232323', N'Male', N'Who is your favorite Cricketer?', N'Sachin', N'Employee ')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (19, N'Amit', N'Shah', N'Amit123', N'1', N'1', N'tarade_ajay@yahoo.com', N'1/1/2011', N'd', N'1234567890', N'Male', N'What is your favorite Uncle?', N'1', N'Manager')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (3, N'b', N'b', N'b', N'b', N'b', N'tarade_ajay@yahoo.co.in', N'1/1/2001', N'b', N'323232323', N'Male', N'What is your favorite Uncle?', N'b', N'Employee ')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (4, N'c', N'c', N'c', N'c', N'c', N'tarade_ajay@yahoo.co.in', N'1/1/2008', N'c', N'11111111', N'Male', N'Who is your favorite Cricketer?', N'c', N'Employee ')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (10, N'A', N'A', N'DDD', N'DDD', N'DDD', N'A@Y.com', N'1/1/2001', N'A', N'11111', N'Male', N'What is your favorite Uncle?', N'a', N'Employee ')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (14, N'Kishor', N'Khan', N'Kishor', N'1', N'1', N'tarade_ajay@y.com', N'11/1/1988', N'Mumbai', N'12323232', N'Male', N'What is your favorite Uncle?', N'KK', N'Employee ')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (12, N'A', N'A', N'KK', N'k', N'k', N'A@Y.com', N'1/1/2001', N's', N'11111111', N'Male', N'What is your favorite Uncle?', N'A', N'Employee ')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (18, N'lukesh', N'kadu', N'lukesh_kadu', N'king60', N'king60', N'lukesh_kadu@rediffmail.com', N'12/1/1986', N'airoli', N'9867282852', N'Male', N'Who is your favorite Cricketer?', N'sachin', N'Employee ')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (17, N'P', N'P', N'P', N'P', N'P', N'p@p.com', N'2/2/2011', N'ds', N'1231232121312', N'Male', N'What is your First mobile number?', N'43434343', N'Employee ')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (13, N's', N's', N's', N's', N's', N'RG@gmail.co.on', N'1/1/2007', N's', N'23323', N'Male', N'What is your favorite Uncle?', N's', N'Employee ')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (20, N's', N's', N'ssss', N's', N's', N's@s.com', N'1/1/2003', N's', N'1234567890', N'Male', N'What is your favorite Uncle?', N's', N'Manager')
INSERT [dbo].[UserLogin] ([ID], [FirstName], [lastname], [UserName], [Password], [ReTypePassword], [Email], [BOD], [Address], [mobile], [sex], [Sequrityquestion], [Answer], [designation]) VALUES (21, N'Abcd', N'a', N'zzzzz', N'z', N'z', N'z@z.com', N'1/1/2000', N'z', N'1234567890', N'Male', N'What is your favorite Uncle?', N'z', N'Manager')
SET IDENTITY_INSERT [dbo].[UserLogin] OFF
/****** Object:  Table [dbo].[ToolTest]    Script Date: 02/23/2014 21:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ToolTest](
	[id] [int] NULL,
	[name] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ToolTest] ([id], [name], [password]) VALUES (1, N'A', N'2')
INSERT [dbo].[ToolTest] ([id], [name], [password]) VALUES (2, N'B', N'2')
/****** Object:  Table [dbo].[tbl_users]    Script Date: 02/23/2014 21:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_users](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[secret] [varchar](50) NULL,
	[secret2] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[address] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_users] ([username], [password], [secret], [secret2], [phone], [address]) VALUES (N'test@test.com', N'test1', N'secret1', N'secret2', N'1234567890', N'123 Sesame Street')
INSERT [dbo].[tbl_users] ([username], [password], [secret], [secret2], [phone], [address]) VALUES (N'test2@test.com', N'test2', N'test2 secret', N'test2 secret2', N'999999999', N'999 MsDonald St.')
/****** Object:  Table [dbo].[product]    Script Date: 02/23/2014 21:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(100,1) NOT NULL,
	[product_name] [varchar](100) NULL,
	[image] [varchar](100) NULL,
	[total_like] [int] NULL,
	[total_unlike] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON
INSERT [dbo].[product] ([product_id], [product_name], [image], [total_like], [total_unlike]) VALUES (100, N'sport shoes', N'Image72.png', 7, 2)
INSERT [dbo].[product] ([product_id], [product_name], [image], [total_like], [total_unlike]) VALUES (101, N'formal shoes', N'Image185.png', 1, 2)
INSERT [dbo].[product] ([product_id], [product_name], [image], [total_like], [total_unlike]) VALUES (102, N'casual shoes', N'Image216.png', 2, 2)
SET IDENTITY_INSERT [dbo].[product] OFF
/****** Object:  Table [dbo].[feedback]    Script Date: 02/23/2014 21:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feedback](
	[name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[feedback] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[feedback] ([name], [email], [feedback]) VALUES (N'Aj', N'a@y.cpm', N'hg')
INSERT [dbo].[feedback] ([name], [email], [feedback]) VALUES (N'Ajay', N'a@y.cpm', N'Good Project')
INSERT [dbo].[feedback] ([name], [email], [feedback]) VALUES (N's', N't@yahoo.com', N'HIii')
/****** Object:  Table [dbo].[Emloyee]    Script Date: 02/23/2014 21:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Emloyee](
	[id] [varchar](50) NULL,
	[Message] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Emloyee] ([id], [Message]) VALUES (N'1', N'Today is Meeting on 7.30PM')
