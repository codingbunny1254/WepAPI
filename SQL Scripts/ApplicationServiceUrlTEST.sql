

CREATE TABLE [dbo].[ApplicationServiceUrlTEST](
	[ApplicationServiceUrlId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NULL,
	[ServiceName] [varchar](100) NULL,
	[ProdServiceUrl] [varchar](500) NULL,
	[QAServiceUrl] [varchar](500) NULL,
	[EnableQAUrl] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	Foreign key ([ApplicationId]) references [ApplicationsTEST]([ApplicationID])
) 


