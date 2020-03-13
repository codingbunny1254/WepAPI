using H4EAD.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace H4EAD.Models
{
    public class ApplicationRoleBDO
    {
        public int ApplicationRoleId { get; set; }
        public int ApplicationId { get; set; }
        public string ApplicationRoleName { get; set; }
        public string ApplicationRoleDescription { get; set; }
        public ApplicationRoleBDO(DataRow row)
        {
            this.ApplicationRoleId = DBNullChecks.checkDBNullInt(row["ApplicationRoleId"]);
            this.ApplicationId = DBNullChecks.checkDBNullInt(row["ApplicationId"]);
            this.ApplicationRoleName = DBNullChecks.checkDBNullString(row["ApplicationRoleName"]);
            this.ApplicationRoleDescription = DBNullChecks.checkDBNullString(row["ApplicationRoleDescription"]);
            
        }
    }
}