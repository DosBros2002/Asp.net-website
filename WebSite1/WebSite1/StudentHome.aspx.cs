using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class StudentHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        //SQLcon.Open();
        //string UID = Application["UserId"].ToString();
        // SqlDataSource1.SelectCommand = "select * from Student  where  Student.S_ID = '" + UID + "'";
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