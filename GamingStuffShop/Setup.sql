/****** Object:  Table [dbo].[Category]    Script Date: 6/30/2022 11:46:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 6/30/2022 11:46:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[Category] [int] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Laptops')
GO
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Keyboards')
GO
INSERT [dbo].[Item] ([Id], [Name], [Price], [Description], [Category]) VALUES (N'871a2154-110b-40ae-bef7-6421322ad550', N'Laptop HP', 4200, N'Gaming Laptop', 1)
GO
INSERT [dbo].[Item] ([Id], [Name], [Price], [Description], [Category]) VALUES (N'b6b0eefd-4a24-497d-82eb-804b41291910', N'Roccat Keyboard', 1479, N'Gaming Keyboard', 2)
GO
INSERT [dbo].[Item] ([Id], [Name], [Price], [Description], [Category]) VALUES (N'39c07f00-ec18-4721-9189-dc1da05569bd', N'Razer Keyboard', 1799, N'Gaming Keyboard', 2)
GO
INSERT [dbo].[Item] ([Id], [Name], [Price], [Description], [Category]) VALUES (N'82d52a92-5d52-476a-90cd-f9bc1e05f002', N'Laptop MSI', 6900, N'Gaming Laptop MSI', 1)
GO
USE [master]
GO
ALTER DATABASE [Shop] SET  READ_WRITE 
GO
