using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class LogIn : System.Web.UI.Page
{

    public partial class Bind_Data_Html : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


    }

    protected void LogInbtn(object sender, EventArgs e)
    {
        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        SQLcon.Open();
        String Username = username.Text;
        String pass = password.Text;
        String UserID;
        SqlDataReader x;
        SqlCommand query = new SqlCommand("SELECT Users.ID FROM Users WHERE(Username='" + Username + "' AND Password='" + pass + "')", SQLcon);
        SqlCommand GetRoleId = new SqlCommand("SELECT RoleID FROM Users WHERE(Username='" + Username + "' AND Password='" + pass + "')", SQLcon);
        Application["Role"] = Convert.ToString(GetRoleId.ExecuteScalar());
        UserID = Convert.ToString(query.ExecuteScalar());
        x = query.ExecuteReader();
        if (x.Read())
        {
            Application["UserId"] = UserID;
            x.Close();
            SqlDataReader y;
            SqlCommand query1 = new SqlCommand("select * from Users,Roles where (Users.Username = '" + Username + "' AND  users.RoleID = Roles.RoleID and Roles.RoleID = '1')", SQLcon);
            y = query1.ExecuteReader();
            if (y.Read())
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Welcome FYP_Committee Member! :)')</script>");
                Response.Redirect("CommiteeHome.aspx");
            }
            else
            {
                y.Close();
                SqlDataReader z;
                SqlCommand query2 = new SqlCommand("select * from Users,Roles where (Users.Username = '" + Username + "' AND  users.RoleID = Roles.RoleID AND Roles.RoleID = '2')", SQLcon);
                z = query2.ExecuteReader();
                if (z.Read())
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Welcome Supervisor ! :)')</script>");
                    Response.Redirect("SupervisorHome.aspx");

                }
                else
                {
                    z.Close();
                    SqlDataReader m;
                    SqlCommand query3 = new SqlCommand("select * from Users,Roles where (Users.Username = '" + Username + "' AND  users.RoleID = Roles.RoleID and Roles.RoleID = '3')", SQLcon);
                    m = query3.ExecuteReader();
                    if (m.Read())
                    {
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Welcome Panel Member ! :)')</script>");
                        Response.Redirect("PanelHome.aspx");

                    }
                    else
                    {
                        m.Close();
                        SqlDataReader n;
                        SqlCommand query4 = new SqlCommand("select * from Users,Roles where (Users.Username = '" + Username + "' AND  users.RoleID = Roles.RoleID and Roles.RoleID = '4')", SQLcon);
                        n = query4.ExecuteReader();
                        if (n.Read())
                        {
                            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Welcome Student  ! :)')</script>");
                            Response.Redirect("StudentHome.aspx");
                        }

                    }


                }

            }



        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('user name does not exist')</script>");

        }

    }
}