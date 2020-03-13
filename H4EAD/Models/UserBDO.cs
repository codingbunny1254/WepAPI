using H4EAD.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace H4EAD.Models
{
    public class UserBDO
    {
        public string LoginId { get; set; }
        public int UserID { get; set; }
        public string UserFirstName { get; set; }
        public string UserLastName { get; set; }
        public string UserMiddleName { get; set; }
        public string UserPhone { get; set; }
        public string UserEmail { get; set; }
        public string ApplicationServiceURLProd { get; set; }
        public string ReleaseVersion { get; set; }
        
        public UserBDO(DataRow row )
        {

            this.LoginId = DBNullChecks.checkDBNullString(row["LoginId"]);
            this.UserID = DBNullChecks.checkDBNullInt(row["UserID"]);
            this.UserFirstName = DBNullChecks.checkDBNullString(row["UserFirstName"]);
            this.UserLastName = DBNullChecks.checkDBNullString(row["UserLastName"]);
            this.UserMiddleName = DBNullChecks.checkDBNullString(row["UserMiddleName"]);
            this.UserPhone = DBNullChecks.checkDBNullString(row["UserPhone"]);
            this.UserEmail = DBNullChecks.checkDBNullString(row["UserEmail"]);
            this.ApplicationServiceURLProd = DBNullChecks.checkDBNullString(row["ApplicationServiceURLProd"]);
            this.ReleaseVersion = DBNullChecks.checkDBNullString(row["ReleaseVersion"]);
        }

    }
}