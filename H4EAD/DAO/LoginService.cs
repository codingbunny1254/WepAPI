using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using H4EAD.Service_Interfaces;
using H4EAD.Models;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using ApplicationLogger;
using System.Transactions;

namespace H4EAD.DAO
{
    public class LoginService : ILoginService
    {
      
        private  string connectionString = ConfigurationManager.ConnectionStrings["Wp14TestConnectionString"].ConnectionString;

       
        public UserRoleFeatureBDO AuthenticateUser(string LoginId, string Password)
        {
            Logger.Debug(DateTime.Now.ToString() + " LoginService - AuthenticateUser() - Start ");
            UserRoleFeatureBDO userRoleFeatureDetails = new UserRoleFeatureBDO();
            try
            {
                userRoleFeatureDetails.UserDetails = ExcuteObject<UserBDO>("[dbo].[spIDAM_AuthenticateUserTEST]", true)!=null&& ExcuteObject<UserBDO>("[dbo].[spIDAM_AuthenticateUserTEST]", true).Count()>0? ExcuteObject<UserBDO>("[dbo].[usp_GetProducts]", true).ToList().FirstOrDefault():null; ;
                userRoleFeatureDetails.AppRoleList = ExcuteObject<ApplicationRoleBDO>("[dbo].[spGetAppUserRole]", true).ToList();
                userRoleFeatureDetails.AppRoleFeatureList = ExcuteObject<ApplicationRoleFeatureBDO>("[dbo].[spGetAppUserFeatureNewTest]", true).ToList();

            }
            catch(Exception ex)
            {
                Logger.Error(DateTime.Now.ToString() + " LoginService - AuthenticateUser() - Exception Occured", ex);
                throw ex;
            }
            Logger.Debug(DateTime.Now.ToString() + " LoginService - AuthenticateUser() - End ");
            return userRoleFeatureDetails;
        }

        private DataTable Select(string storedProcedureorCommandText, bool isStoredProcedure = true)
        {
            Logger.Debug(DateTime.Now.ToString() + " LoginService - Select() - Start ");
            DataTable dataTable = new DataTable();
            try
            {
                 using (var txscope = new TransactionScope(TransactionScopeOption.RequiresNew))
                {
                    try
                    {
                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand())
                            {
                                command.Connection = connection;
                                command.CommandType = CommandType.StoredProcedure;
                                if (!isStoredProcedure)
                                {
                                    command.CommandType = CommandType.Text;
                                }
                                command.CommandText = storedProcedureorCommandText;
                                connection.Open();

                                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                                dataAdapter.Fill(dataTable);


                            }
                        }
                        txscope.Complete();
                    }
                    catch (Exception ex)
                    {
                        Logger.Error(DateTime.Now.ToString() + " LoginService - Select() - Exception Occured", ex);
                        txscope.Dispose();
                        throw ex;
                    }
                }
         } catch(Exception ex)
            {
                Logger.Error(DateTime.Now.ToString() + "  LoginService - Select() - Exception Occured", ex);
                throw ex;
            }
            Logger.Debug(DateTime.Now.ToString() + " LoginService - Select() - End ");
            return dataTable;
        }

        private IEnumerable<T> ExcuteObject<T>(string storedProcedureorCommandText, bool isStoredProcedure = true)
        {
            Logger.Debug(DateTime.Now.ToString() + " LoginService - ExcuteObject() - start ");
            List<T> items = new List<T>();
            try
            {
                var dataTable = Select(storedProcedureorCommandText, isStoredProcedure); //this will use the DataTable Select function
                foreach (var row in dataTable.Rows)
                {
                    T item = (T)Activator.CreateInstance(typeof(T), row);
                    items.Add(item);
                }
            }catch(Exception ex)
            {
                Logger.Error(DateTime.Now.ToString() + "  LoginService - ExcuteObject() - Exception Occured", ex);
                throw ex;
            }
            Logger.Debug(DateTime.Now.ToString() + " LoginService - ExcuteObject() - End ");

            return items;
        }
    }
}