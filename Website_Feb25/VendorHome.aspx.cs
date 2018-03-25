using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendorHome : System.Web.UI.Page
{
    private int loginType;
    private RewardProvider user;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["employeeLoggedIn"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (Session["employeeLoggedIn"].ToString() != "True")
        {
            Response.Redirect("Login.aspx");
        }
        loginType = (int)Session["login"];
        if (loginType == 2)
        {
            Response.Redirect("Admin.aspx");
        }
        else if (loginType == 1)
        {
            Response.Redirect("HomePage.aspx");
        }
        else if (loginType == -1)
        {
            Response.Redirect("Logout.aspx");
        }
        else
        {
            user = (RewardProvider)Session["user"];
        }
    }
}