
CREATE TABLE [dbo].[FeatureEmailRecipientTypeTEST](
	[FeatureEmailRecipientTypeId] [int] IDENTITY(1,1) NOT NULL,
	[FeatureEmailRecipientType] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	Primary Key ([FeatureEmailRecipientTypeId])
) 

