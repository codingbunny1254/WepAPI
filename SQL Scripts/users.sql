

CREATE TABLE [dbo].[UsersTEST](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserFirstName] [varchar](100) NULL,
	[UserMiddleName] [varchar](100) NULL,
	[UserLastName] [varchar](100) NULL,
	[UserGender] [char](1) NULL,
	[UserPhone] [varchar](100) NULL,
	[UserEmail] [varchar](100) NULL,
	[UserAlternateEmail] [varchar](100) NULL,
	[LoginId] [varchar](100) NULL,
	[LoginPassword] [varchar](100) NULL,
	[UserTypeId] [smallint] NULL,
	[UserGroupId] [smallint] NULL,
	[UserStartDate] [datetime] NULL,
	[UserEndDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[Vendor] [int] NULL,
	[ResetKey] [varchar](100) NULL,
	[KeyExpiredOn] [datetime] NULL,
	[IsKeyUsed] [int] NULL,
	[CompanyName] [varchar](100) NULL,
	[AssignTabletIMEI] [varchar](20) NULL,
	[AssignTabletPhone] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdateDate] [smalldatetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_Users_Email] UNIQUE NONCLUSTERED 
(
	[UserEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


