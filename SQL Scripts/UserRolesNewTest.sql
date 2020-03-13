

CREATE TABLE [dbo].[UserRolesNewTest](
    [UserRolesId] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	Primary Key (UserRolesId),
	Foreign key ([UserID]) references [dbo].[UsersTEST](UserID),
	Foreign key ([RoleID]) references [dbo].[ApplicationRolesTEST](ApplicationRoleId)
	
) 




