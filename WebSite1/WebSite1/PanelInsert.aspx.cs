using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PanelInsert : System.Web.UI.Page
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
        //Response.Redirect("Com_Supervisor.aspx");
    }

    protected void ADD(object sender, EventArgs e)
    {
        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        SQLcon.Open();
        string name = Name.Text;
        string email = Email.Text;
        string username = Username.Text;
        string rollnum = RollNum.Text;
        string pass = Password.Text;
        string roll_ID = "3";
        string FYP_ID = SId.Text;
        string Fnum = FNum.Text;
        SqlDataReader x;
        SqlCommand query = new SqlCommand("SELECT * FROM Users WHERE(Username='" + username + "' )", SQLcon);
        x = query.ExecuteReader();
        if (x.Read())
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Account Already Exists with that UserName! :)')</script>");
        }
        else
        {
            x.Close();
            SqlCommand cmd = new SqlCommand("InsertPan", SQLcon);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@P_name", SqlDbType.VarChar).Value = name;
            cmd.Parameters.AddWithValue("@roll_num", SqlDbType.VarChar).Value = rollnum;
            cmd.Parameters.AddWithValue("@F_num", SqlDbType.VarChar).Value = Fnum;
            cmd.Parameters.AddWithValue("@User_Name", SqlDbType.VarChar).Value = username;
            cmd.Parameters.AddWithValue("@RoleID", SqlDbType.VarChar).Value = "3";
            cmd.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = email;
            cmd.Parameters.AddWithValue("@Pass", SqlDbType.VarChar).Value = pass;
            cmd.Parameters.AddWithValue("@FYP_ID", SqlDbType.VarChar).Value = FYP_ID;
            cmd.ExecuteNonQuery();
            Name.Text = string.Empty;
            Email.Text = string.Empty;
            Username.Text = string.Empty;
            RollNum.Text = string.Empty;
            Password.Text = string.Empty;
            SId.Text = string.Empty;
            FNum.Text = string.Empty;
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your account has created! :)')</script>");
        }
    }
}