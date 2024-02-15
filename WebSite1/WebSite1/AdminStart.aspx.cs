using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        SQLcon.Open();
        string ID = Application["UserId"].ToString();
        UserTable.SelectCommand = "SELECT * FROM Users where Users.ID = '"+ID+"'" ;
        AdminStart.SelectCommand = "SELECT * FROM Faculty where Faculty.ID = '" + ID + "'";


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
}