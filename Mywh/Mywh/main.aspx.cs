using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utility;

namespace Mywh
{
    public partial class main : System.Web.UI.Page
    {
        public static int userId = 0;
        public static string userName = "", roleName = "", dateTime = "";
        public string MenuList = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                userId = MySession.GetUserID();
                userName = MySession.GetSessionStringValue("userName");
                roleName = MySession.GetSessionStringValue("roleName");
                MenuList = MySession.GetSessionStringValue("menuList");
            }
        }
    }
}