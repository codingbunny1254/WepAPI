

CREATE TABLE [dbo].[ApplicationRoleFeaturesNewTest](
	[AppRoleFeatureID] [int] IDENTITY(1,1) NOT NULL,
	[AppRoleID] [int] NOT NULL,
	[AppFeaturesID] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL
	Primary Key ([AppRoleFeatureID]),
	Foreign Key ([AppRoleID]) references [ApplicationRolesTEST] ([ApplicationRoleId]),
	Foreign Key ([AppFeaturesID]) references [ApplicationFeaturesNew] ([AppFeaturesId])

)


