using H4EAD.DAO;
using H4EAD.Service_Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using H4EAD.DAO;
using ApplicationLogger;
using H4EAD.Models;

namespace H4EAD.Controllers.API
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class LoginController : ApiController
    {
        ILoginService loginService;
        public LoginController()
        {
            loginService = new LoginService();
        }

        [Route("api/AuthenticateUser")]
        [HttpPost]
        public HttpResponseMessage AuthenticateUser(LoginBDO loginDetails)
        {
            Logger.Debug(DateTime.Now.ToString() + "LoginController - api/AuthenticateUser - Start ");
            try
            {
                var result = loginService.AuthenticateUser(loginDetails.LoginId, loginDetails.Password);
                return Request.CreateResponse(HttpStatusCode.OK, result);
            }
            catch (Exception ex)
            {
                Logger.Error(DateTime.Now.ToString() + " LoginController- api/AuthenticateUser - Exception Occured", ex);
                return Request.CreateResponse(HttpStatusCode.ExpectationFailed, false);
            }
            finally
            {
                Logger.Debug(DateTime.Now.ToString() + " LoginController - api/AuthenticateUser - End");
            }
        }
    }
}
