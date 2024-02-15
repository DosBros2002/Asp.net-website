using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class StudentPInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        SQLcon.Open();
        string rollnum;
        string yes = "";
        yes = Application["UserId"].ToString();
        SqlCommand query3 = new SqlCommand("select Student.roll_num from Student,Users where (Student.S_ID = '" + yes + "')", SQLcon);
        rollnum = Convert.ToString(query3.ExecuteScalar());
        string FYP_ID;
        SqlCommand query4 = new SqlCommand("select WorksOn.FYP_ID from Student,WorksOn where (WorksOn.roll_no = '" + rollnum + "')", SQLcon);
        FYP_ID = Convert.ToString(query4.ExecuteScalar());
        PanelMembers.SelectCommand = "select F_Num as Number,P_name as Instructor_Name,Faculty.roll_num from Faculty, Evaluates,WorksOn where Evaluates.Proj_ID = '"+FYP_ID+"'";
        Review.SelectCommand = "select Evaluates.Review as Reviews from Faculty, Evaluates,WorksOn where Evaluates.Proj_ID = '" + FYP_ID + "'";
        Supervises.SelectCommand = "select F_Num as Number,P_name as Instructor_Name,Faculty.roll_num from Faculty, Evaluates,supervises where  supervises.Proj_ID ='" + FYP_ID + "'";


    }
}