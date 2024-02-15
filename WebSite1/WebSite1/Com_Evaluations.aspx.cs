using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Com_Evaluations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string yes = Application["UserId"].ToString();

    }
    protected void OpenHome(object sender, EventArgs e)
    {
        Response.Redirect("CommiteeHome.aspx");
    }

    protected void OpenUser(object sender, EventArgs e)
    {

        Response.Redirect("Com_User.aspx");
    }

    protected void FYPINFO(object sender, EventArgs e)
    {
        Response.Redirect("Com_FYP.aspx");
    }
    protected void PANELINFO(object sender, EventArgs e)
    {
        string yes = "fazoolin";
        Response.Redirect("CommiteePanelMem.aspx");
    }

    protected void SUPINFO(object sender, EventArgs e)
    {
        Response.Redirect("Com_Supervisor.aspx");
    }

    protected void STUINFO(object sender, EventArgs e)
    {
        Response.Redirect("Com_StudentsFYP.aspx");
    }
    protected void SIGNOUT(object sender, EventArgs e)
    {
        Response.Redirect("LogIn.aspx");
    }
    protected void OpenEval(object sender, EventArgs e)
    {
        Response.Redirect("Com_Evaluations.aspx");
    }
}