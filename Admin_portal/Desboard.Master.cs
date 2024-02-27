using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University_Management_System.Admin_portal
{
    public partial class Desboard : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session["role"] = "";
            Response.Redirect("~/Admin_portal/admin_login.aspx");
        }
    }
}