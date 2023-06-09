Create DataBase HR 
GO
USE [HR]
GO
/****** Object:  Table [dbo].[hr]    Script Date: 05.04.2023 2:10:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hr](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Birthday] [date] NOT NULL,
	[Department] [nvarchar](200) NOT NULL,
	[Post] [nvarchar](100) NOT NULL,
	[Salary] [money] NOT NULL,
	[Datapreception] [date] NOT NULL,
	[DataExtensions] [date] NULL,
 CONSTRAINT [PK_hr] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
