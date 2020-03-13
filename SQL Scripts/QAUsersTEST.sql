

CREATE TABLE [dbo].[QAUsersTEST](
	[UserId] [int] NULL,
	[ApplicationId] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	Foreign Key ([ApplicationId]) references [ApplicationsTEST]([ApplicationID]),
	Foreign key ([UserId]) references [UsersTEST]([UserID])
) 
GO


