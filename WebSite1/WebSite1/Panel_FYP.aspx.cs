using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Panel_FYP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        SQLcon.Open();

        string fnum;
        string UID = Application["UserId"].ToString();
        SqlCommand query3 = new SqlCommand("select Faculty.F_Num from Faculty,Users where (Faculty.ID = '" + UID + "')", SQLcon);
        fnum = Convert.ToString(query3.ExecuteScalar());
        MissEval.SelectCommand = "SELECT Evaluates.* FROM Evaluates where(Evaluates.S_ID = '"+fnum+"' and Evaluates.Review = NULL)";
    }

    protected void OpenHome(object sender, EventArgs e)
    {
        Response.Redirect("PanelHome.aspx");
    }

    protected void OpenUser(object sender, EventArgs e)
    {

        Response.Redirect("AdminStart.aspx");
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
        Response.Redirect("Panel_FYP.aspx");
    }
}