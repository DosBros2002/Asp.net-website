using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class StudentProjDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string rollnum;
        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        SQLcon.Open();
        string UID = Application["UserId"].ToString();
        SqlCommand query3 = new SqlCommand("select Student.roll_num from Student,Users where (Student.S_ID = '"+UID+"')", SQLcon);
        rollnum = Convert.ToString(query3.ExecuteScalar());
        SqlDataSource1.SelectCommand = "select* from FYP,WorksOn where FYP.FYP_ID = WorksOn.FYP_ID AND WorksOn.roll_no ='"+rollnum+"'";

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

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