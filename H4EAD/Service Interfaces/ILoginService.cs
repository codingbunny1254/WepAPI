using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using H4EAD.Models;

namespace H4EAD.Service_Interfaces
{
    public interface ILoginService
    {
        UserRoleFeatureBDO AuthenticateUser(string LoginId, string Password);
    }
}