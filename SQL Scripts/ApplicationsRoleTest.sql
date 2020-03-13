

CREATE TABLE [dbo].[ApplicationRolesTEST](
	[ApplicationRoleId] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[ApplicationRoleName] [varchar](50) NOT NULL,
	[ApplicationRoleDescription] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	PRIMARY KEY ([ApplicationRoleId]),
	FOREIGN KEY([ApplicationId]) REFERENCES [ApplicationsTEST]([ApplicationID]),
	CONSTRAINT UC_ApplicationRolesTEST UNIQUE ([ApplicationId],[ApplicationRoleName])
 )
GO


