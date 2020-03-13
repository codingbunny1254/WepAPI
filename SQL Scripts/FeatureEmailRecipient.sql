

CREATE TABLE [dbo].[FeatureEmailRecipientTEST](
	[FeatureEmailRecipientId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[AppFeaturesId] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[eMail] [varchar](max) NULL,
	[RecipientType] [varchar](10) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	Primary Key ([FeatureEmailRecipientId]),
	Foreign key ([ApplicationId]) references [ApplicationsTEST]([ApplicationID]),
	Foreign key ([AppFeaturesId]) references [ApplicationFeaturesNew]([AppFeaturesId])

) 

