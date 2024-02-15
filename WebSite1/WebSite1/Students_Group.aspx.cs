using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Students_Group : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string GroupID;
        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        SQLcon.Open();
        string UID = Application["UserId"].ToString();
        SqlCommand query3 = new SqlCommand("select Student.Group_ID from Student,Users  where ( Student.S_ID = '"+UID+"')", SQLcon);
        GroupID = Convert.ToString(query3.ExecuteScalar());
        Group.SelectCommand = "select S_name as Member_Name,roll_num,Group_ID from Student where Student.Group_ID = '"+GroupID+"'";
    }

    protected void OpenHome(object sender, EventArgs e)
    {
        Response.Redirect("StudentHome.aspx");
    }

    protected void OpenInfo(object sender, EventArgs e)
    {
        Response.Redirect("StudentInfo.aspx");
    }

    protected void OpenFYP(object sender, EventArgs e)
    {
        Response.Redirect("StudentProjDetails.aspx");
    }


    protected void OpenPanel(object sender, EventArgs e)
    {
        Response.Redirect("StudentPInfo.aspx");
    }
    protected void OpenGroup(object sender, EventArgs e)
    {
        Response.Redirect("Students_Group.aspx");
    }
    protected void OpenSU(object sender, EventArgs e)
    {
        Response.Redirect("LogIn.aspx");
    }
}