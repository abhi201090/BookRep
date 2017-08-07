USE [HandbookNew]
GO

/****** Object:  Table [dbo].[MenuLinks]    Script Date: 8/2/2017 4:31:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MenuLinks](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](max) NOT NULL,
	[URL] [varchar](max) NOT NULL,
	[MenuID] [int] NOT NULL,
 CONSTRAINT [PK_MenuLinks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[MenuLinks]  WITH CHECK ADD  CONSTRAINT [FK_MenuID] FOREIGN KEY([MenuID])
REFERENCES [dbo].[Menu] ([ID])
GO

ALTER TABLE [dbo].[MenuLinks] CHECK CONSTRAINT [FK_MenuID]
GO


