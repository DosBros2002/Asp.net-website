using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Su : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void openLI(object sender, EventArgs e)
    {
        Response.Redirect("LogIn.aspx");
    }

    protected void StoreInDB(object sender, EventArgs e)
    {
        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        string name = Name.Text;
        string email = Email.Text;
        string username = Username.Text;
        string rollnum = RollNum.Text;
        string pass = Password.Text;
        string groupID = GroupID.Text;
        string roll_ID = "4";

        if (name == "" || rollnum == "" || pass == "" || email == "" && username == "")
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Enter all values please.')</script>");
            return;
        }


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
            SqlCommand cmd = new SqlCommand("InsertS", SQLcon);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@S_name", SqlDbType.VarChar).Value = name;
            cmd.Parameters.AddWithValue("@roll_num", SqlDbType.VarChar).Value = rollnum;
            cmd.Parameters.AddWithValue("@Group_ID", SqlDbType.VarChar).Value = groupID;
            cmd.Parameters.AddWithValue("@User_Name", SqlDbType.VarChar).Value = username;
            cmd.Parameters.AddWithValue("@RoleID", SqlDbType.VarChar).Value = roll_ID;
            cmd.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = email;
            cmd.Parameters.AddWithValue("@Pass", SqlDbType.VarChar).Value = pass;
            cmd.ExecuteNonQuery();
            Name.Text = string.Empty;
            Email.Text = string.Empty;
            Username.Text = string.Empty;
            RollNum.Text = string.Empty;
            Password.Text = string.Empty;
            GroupID.Text = string.Empty;
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your account has created! :)')</script>");


        }
        //int k = cmd.ExecuteNonQuery();
        //if (k != 0)
        //{
        //    Name.Text = string.Empty;
        //    Email.Text = string.Empty;
        //    Username.Text = string.Empty;
        //    RollNum.Text = string.Empty;
        //    Password.Text = string.Empty;
        //    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your accoutn has created! :)')</script>");
        //}



        SQLcon.Close();
    }
}