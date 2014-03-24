USE [pegasus]
GO

/****** Object:  Table [dbo].[user_role]    Script Date: 03/24/2014 17:00:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[user_role](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[userid] [bigint] NULL,
	[rolename] [nvarchar](100) NULL,
 CONSTRAINT [PK_user_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[user_role]  WITH CHECK ADD  CONSTRAINT [FK_user_role_app_user] FOREIGN KEY([userid])
REFERENCES [dbo].[app_user] ([id])
GO

ALTER TABLE [dbo].[user_role] CHECK CONSTRAINT [FK_user_role_app_user]
GO




USE [pegasus]
GO

/****** Object:  Table [dbo].[app_user]    Script Date: 03/24/2014 17:00:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[app_user](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [PK_app_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


