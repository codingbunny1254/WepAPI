using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace H4EAD.Helpers
{
    public class DBNullChecks
    {

        public static string checkDBNullString(object value)
        {
            if (value == System.DBNull.Value )
            {
                return "";
            }
            else
                return value.ToString();
        }


        public static string checkDBNullDateTime(object value)
        {
            if (value == System.DBNull.Value || Convert.ToDateTime(value) < DateTime.Now.AddYears(-20))
            {
                return "";
            }
            else
                return Convert.ToDateTime(value).ToString("MM/dd/yyyy hh:mm");
        }

        public static int checkDBNullInt(object value)
        {
            if (value == System.DBNull.Value)
            {
                return 0;
            }
            else
                return Convert.ToInt32(value);
        }

        public static bool checkDBNullBoolean(object value)
        {
            if (value == System.DBNull.Value)
            {
                return false;
            }
            else
                return Convert.ToBoolean(value);
        }

    }
}