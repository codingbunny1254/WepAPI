Create  PROCEDURE [dbo].[spGetAppUserRole]
	@ApplicationId	INT,
	@Loginid		VARCHAR(100)
As
BEGIN
select distinct ApplicationRoleId = AR.ApplicationRoleId,
                                      ApplicationRoleName = [ApplicationRoleName],
                                      [ApplicationId],
                                      ApplicationRoleDescription = ''
                        from [dbo].[ApplicationRolesTEST] AR
                        inner join [dbo].[UserRolesNewTest] UR on AR.ApplicationRoleId = UR.RoleID
                        inner join [dbo].[UsersTEST] LD on LD.userid = UR.userid
                        where AR.ApplicationId = @ApplicationId
                         and ld.LoginId = @Loginid
                         and isnull(LD.IsActive, 1) = 1
                         

END

