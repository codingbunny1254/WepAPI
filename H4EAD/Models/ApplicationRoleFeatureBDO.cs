using H4EAD.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace H4EAD.Models
{
    public class ApplicationRoleFeatureBDO
    {
        public int ApplicationId { get; set; }
        public string FeatureName { get; set; }
        public bool Active { get; set; }
        public string FeatureCode { get; set; }
        public string NavigationPath { get; set; }
        public string GroupName { get; set; }
        public string AppFeaturesId { get; set; }
        public string DependentProjectId { get; set; }
        public string Description { get; set; }
        public int FeatureDisplayPosition { get; set; }
        public ApplicationRoleFeatureBDO(DataRow row)
        {
            this.ApplicationId = DBNullChecks.checkDBNullInt(row["ApplicationId"]);
            this.FeatureName = DBNullChecks.checkDBNullString(row["FeatureName"]);
            this.Active = DBNullChecks.checkDBNullBoolean(row["Active"]);
            this.FeatureCode = DBNullChecks.checkDBNullString(row["FeatureCode"]);
            this.NavigationPath = DBNullChecks.checkDBNullString(row["NavigationPath"]);
            this.GroupName = DBNullChecks.checkDBNullString(row["GroupName"]);
            this.AppFeaturesId = DBNullChecks.checkDBNullString(row["AppFeaturesId"]);
            this.DependentProjectId = DBNullChecks.checkDBNullString(row["DependentProjectId"]);
            this.Description = DBNullChecks.checkDBNullString(row["Description"]);
            this.FeatureDisplayPosition = DBNullChecks.checkDBNullInt(row["FeatureDisplayPosition"]);
        }
    }
}