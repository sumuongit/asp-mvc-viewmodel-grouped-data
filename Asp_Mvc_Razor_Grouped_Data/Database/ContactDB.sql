CREATE DATABASE ContactDB

USE [ContactDB]
GO

SET ANSI_NULLS ON 
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[PersonName] [nvarchar](50) NOT NULL,
CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[ContactNumber] [nvarchar](50) NOT NULL,
	[PersonID] [int] NOT NULL
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactID], [ContactNumber], [PersonID]) VALUES (1, N'8801915521851', 1)
INSERT [dbo].[Contact] ([ContactID], [ContactNumber], [PersonID]) VALUES (2, N'8801915521852', 1)
INSERT [dbo].[Contact] ([ContactID], [ContactNumber], [PersonID]) VALUES (3, N'8801915521853', 1)
INSERT [dbo].[Contact] ([ContactID], [ContactNumber], [PersonID]) VALUES (4, N'8801815521851', 2)
INSERT [dbo].[Contact] ([ContactID], [ContactNumber], [PersonID]) VALUES (5, N'8801815521852', 2)
INSERT [dbo].[Contact] ([ContactID], [ContactNumber], [PersonID]) VALUES (6, N'8801815521853', 2)
INSERT [dbo].[Contact] ([ContactID], [ContactNumber], [PersonID]) VALUES (8, N'8801715521851', 3)
INSERT [dbo].[Contact] ([ContactID], [ContactNumber], [PersonID]) VALUES (9, N'8801715521852', 3)
INSERT [dbo].[Contact] ([ContactID], [ContactNumber], [PersonID]) VALUES (10, N'8801715521853', 3)

SET IDENTITY_INSERT [dbo].[Contact] OFF

SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([PersonID], [PersonName]) VALUES (1, N'Salahuddin')
INSERT [dbo].[Person] ([PersonID], [PersonName]) VALUES (2, N'Jasimuddin')
INSERT [dbo].[Person] ([PersonID], [PersonName]) VALUES (3, N'Shihabuddin')

SET IDENTITY_INSERT [dbo].[Person] OFF

ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Person]
GO
