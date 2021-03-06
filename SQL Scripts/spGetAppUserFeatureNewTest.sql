

Create  PROCEDURE [dbo].[spGetAppUserFeatureNewTest]
	@ApplicationId	INT,
	@Loginid		VARCHAR(100)
AS
BEGIN
	DECLARE @tblFeature as table (	AppFeaturesID INT)

	
	INSERT INTO @tblFeature (AppFeaturesID)
		SELECT  appRoleFeature.AppFeaturesID 
				FROM [dbo].[UsersTEST] U 
				JOIN [dbo].[UserRolesNewTest] userRole ON  userRole.UserID=U.UserID
				JOIN [dbo].[ApplicationRolesTEST] appRole ON userRole.RoleID=appRole.[ApplicationRoleId]
				JOIN [dbo].[ApplicationRoleFeaturesNewTest]  appRoleFeature ON appRoleFeature.AppRoleID=appRole.[ApplicationRoleId]
				
				WHERE U.[LoginId]=RTRIM(LTRIM(@Loginid)) and appRole.ApplicationId=@ApplicationId
				 
	

			SELECT distinct ApplicationId,FeatureName,Active,FeatureCode	,NavigationPath	,GroupName,	AppFeaturesId,	DependentProjectId,	Description	,FeatureDisplayPosition--, 1 AS Lvl 
			FROM   [dbo].[ApplicationFeaturesNewTest] 
			WHERE @ApplicationId=ApplicationId AND  AppFeaturesId in (Select AppFeaturesID from @tblFeature)--(194,59,54,61,195,60,46) 
			AND Active=1 
			--ORDER BY FeatureDisplayPosition,GroupName ASC
					
		UNION 
			SELECT distinct ApplicationId,FeatureName,Active,FeatureCode	,NavigationPath	,GroupName,	AppFeaturesId,	DependentProjectId,	Description	,FeatureDisplayPosition--, 1 AS Lvl 
			FROM   [dbo].[ApplicationFeaturesNewTest] 
			WHERE @ApplicationId=ApplicationId AND FeatureCode in (SELECT DISTINCT GroupName FROM [ApplicationFeaturesNewTest] WHERE AppFeaturesId in (Select AppFeaturesID from @tblFeature))
			AND Active=1 
			ORDER BY FeatureDisplayPosition,GroupName ASC


			END


			


 
