

CREATE TABLE [dbo].[ApplicationFeaturesNew](
    [AppFeaturesId] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[FeatureName] [varchar](100) NOT NULL,
	[Active] [bit] NULL,
	[FeatureCode] [varchar](50) NULL,
	[NavigationPath] [varchar](max) NULL,
	[GroupName] [varchar](100) NULL,
	[DependentProjectId] [int] NULL,
	[Description] [varchar](max) NULL,
	[FeatureDisplayPosition] [int] NULL,
	[SQLObjects] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL
	Primary key ([AppFeaturesId])
	Foreign Key ([ApplicationId]) references [ApplicationsTEST]([ApplicationID])
)


