using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Com_User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        SQLcon.Open();
        string ID = Application["UserId"].ToString();
        UserTable.SelectCommand = "SELECT * FROM Users where Users.ID = '" + ID + "'";
        AdminStart.SelectCommand = "SELECT * FROM Faculty where Faculty.ID = '" + ID + "'";


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
        Response.Redirect("Com_SudentsFYP.aspx");
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