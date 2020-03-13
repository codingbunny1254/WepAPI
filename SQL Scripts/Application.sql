

CREATE TABLE [dbo].[ApplicationsTEST](
	[ApplicationID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationName] [varchar](250) NULL,
	[ApplicationDescription] [varchar](250) NULL,
	[ApplicationTypeId] [int] NOT NULL,
	[ApplicationUrlPROD] [varchar](200) NULL,
	[ApplicationUrlQA] [varchar](200) NULL,
	[ApplicationUrlDEV] [varchar](200) NULL,
	[ApplicationITManager] [varchar](50) NULL,
	[ApplicationBusinessOwner] [varchar](50) NULL,
	[ApplicationAdmin] [varchar](100) NULL,
	[ApplicationEmailId] [varchar](100) NULL,
	[IsActive] [bit] Default(1),
	[IsLicensedApp] [bit] Default(1),
	[IsWebApp] [bit] NULL,
	[IsMobileApp] [bit] NULL,
	[IsWindowsApp] [bit] NULL,
	[LaunchDate] [datetime] NULL,
	[ProjectVersion] [varchar](20) NULL,
	[ApplicationStatusId] [int] NULL,
	[Abbrevated] [varchar](50) NULL,
	[Portfolio] [varchar](50) NULL,
	[DeploymentDate] [smalldatetime] NULL,
	[TechnologyArchitecture] [varchar](50) NULL,
	[Disposition] [varchar](50) NULL,
	[ReleaseVersion] [varchar](50) NULL,
	[CreatedDate] [smalldatetime] NULL,
	[CreatedBy] [int] NULL,
	[UpdateDate] [smalldatetime] NULL,
	[UpdatedBy] [int] NULL,
	
PRIMARY KEY CLUSTERED 
(
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) 
GO







