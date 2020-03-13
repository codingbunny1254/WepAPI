using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace H4EAD.Models
{
    public class UserRoleFeatureBDO
    {
        public List<ApplicationRoleBDO> AppRoleList { get; set; }
        public List<ApplicationRoleFeatureBDO> AppRoleFeatureList { get; set; }
        public UserBDO UserDetails { get; set; }
    }
}