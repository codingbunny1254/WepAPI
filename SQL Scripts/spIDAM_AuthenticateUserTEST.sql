
Alter procedure [dbo].[spIDAM_AuthenticateUserTEST]
@ApplicationId int,
@LoginId varchar(100),
@Password varchar(100),
@IMEINumber varchar(200) = ''
as
begin 
            select distinct u.[LoginId] as LoginId,
                            u.[UserID] as  UserID,
                            u.[UserFirstName] as UserFirstName,
                            u.[UserMiddleName]as UserMiddleName,
							u.[UserLastName]  as UserLastName,
                            u.[UserPhone] as UserPhone,
                            u.[UserEmail] as UserEmail,
							case
                            when asurl.EnableQAUrl = 1  then QAServiceUrl
                            else ProdServiceUrl END  as ApplicationServiceURLProd , 
							a.[ReleaseVersion] as ReleaseVersion
					        
							from [dbo].[UsersTEST] as u
							Inner Join [dbo].[ApplicationUsersTEST] as au on u.UserID = au.[UserID]
							Inner Join [dbo].[ApplicationsTEST] as a on a.ApplicationId = au.ApplicationId
							Inner join [dbo].[QAUsersTEST] as qa on qa.[UserId] = u.UserId and qa.[ApplicationId] = a.[ApplicationId]
							left join [dbo].[ApplicationServiceUrlTEST] as asurl on asurl.[ApplicationId] = qa.[ApplicationId]
							where au.ApplicationId = @ApplicationId and u.LoginPassword = @Password and u.[LoginId] = @LoginId

end
