using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SupervisorHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void OpenHome(object sender, EventArgs e)
    {
        Response.Redirect("SupervisorsHome.aspx");
    }

    protected void OpenUser(object sender, EventArgs e)
    {

        Response.Redirect("Panel_User.aspx");
    }

    protected void OpenEval(object sender, EventArgs e)
    {
        Response.Redirect("FacutltyEval.aspx");
    }
    protected void SignOut(object sender, EventArgs e)
    {
        Response.Redirect("LogIn.aspx");
    }
    protected void FYP(object sender, EventArgs e)
    {
        Response.Redirect("Super_FYP.aspx");
    }
}