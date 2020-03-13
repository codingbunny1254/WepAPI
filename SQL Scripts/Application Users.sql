

CREATE TABLE [dbo].[ApplicationUsers](
	[ApplicationUserId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ApplicationRoleId] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	Primary Key ([ApplicationUserId]),
	Foreign Key ([ApplicationId]) references [ApplicationsTEST]([ApplicationID]),
	Foreign Key ([UserId]) references [UsersTEST]([UserID])
)


