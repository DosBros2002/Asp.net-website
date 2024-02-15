using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class FYPInsert : System.Web.UI.Page
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

        Response.Redirect("AdminStart.aspx");
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

    protected void ADD(object sender, EventArgs e)
    {

        
        String Title = Name.Text;
        String Descr = Desc.Text;
      
        String deadline = Deadline.Text;
        String FYP_ID = SId.Text;
     
       

        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        SQLcon.Open();
        

       
            SqlDataReader x;
            SqlCommand query = new SqlCommand("select* from FYP where FYP.FYP_ID = '"+FYP_ID+"'", SQLcon);
            x = query.ExecuteReader();
        if (x.Read())
        {
            x.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('A project with this FYP ID already Exists')</script>");
        }
        else
        {
            x.Close();
            string Query1 = "Insert into FYP values ('" + FYP_ID + "','" + Title + "','" + Descr + "','" + Title + "',CONVERT(DATE,'"+deadline+"'))";
            SqlCommand cmd = new SqlCommand(Query1, SQLcon);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Insertion Has been Made to FYP Table ')</script>");
        }
    }
}