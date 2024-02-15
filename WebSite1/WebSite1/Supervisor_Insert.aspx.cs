using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Supervisor_Insert : System.Web.UI.Page
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

        int count;
        String username = Username.Text;
        String password = Password.Text;
        String name = Name.Text;
        String FNUM = FNum.Text;
        String RollNum = TextBox1.Text;
        String FYP_ID = SId.Text;
        String email = Email.Text;
        int userID;

        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        SQLcon.Open();
        SqlCommand query3 = new SqlCommand("select count(supervises.S_ID) from supervises,Faculty  where (S_ID = '" + FNUM + "')", SQLcon);

        count = Convert.ToInt32(query3.ExecuteScalar());
        if (count < 6)
        {
            SqlDataReader x;
            SqlCommand query = new SqlCommand("SELECT Users.ID FROM Users WHERE(Username='" + username + "')", SQLcon);
            x = query.ExecuteReader();
            if (x.Read())
            {
                x.Close();
                SqlDataReader y;
                SqlCommand query1 = new SqlCommand("select * from Users,Roles where (Users.Username = '" + username + "' AND  users.RoleID = Roles.RoleID AND Roles.RoleID = '2')", SQLcon);
                y = query1.ExecuteReader();
                if (y.Read())
                {
                    y.Close();

                    SqlDataReader z;
                    SqlCommand query2 = new SqlCommand("select * from Users,Roles where (Users.Username = '" + username + "' AND  users.RoleID = Roles.RoleID AND Roles.RoleID = '2')", SQLcon);
                    z = query2.ExecuteReader();
                    if (z.Read())
                    {
                        z.Close();
                        string Query1 = "Insert into supervises values ('" + FNUM + "','" + FYP_ID + "')";
                        SqlCommand cmd = new SqlCommand(Query1, SQLcon);
                        cmd.ExecuteNonQuery();
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Insertion Has been Made to the Supervisors ')</script>");
                    }
                    else
                    {
                        z.Close();
                        string Query = "(UPDATE Users SET users.RoleID = '2' WHERE  users.RoleID = '3')";
                        SqlCommand cmd = new SqlCommand(Query, SQLcon);
                        cmd.ExecuteNonQuery();
                        string Query1 = "Insert into supervises values ('" + FNUM + "','" + FYP_ID + "')";
                        SqlCommand cmd1 = new SqlCommand(Query1, SQLcon);
                        cmd1.ExecuteNonQuery();
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Updation has been Made')</script>");
                    }



                }

            }
            else
            {
                x.Close();
                string Query1 = "Insert into Users values('2', '"+ email + "','" + username + "','" + password + "')";
                SqlCommand cmd = new SqlCommand(Query1, SQLcon);
                cmd.ExecuteNonQuery();
                SqlCommand query4 = new SqlCommand("select users.ID from Users where (Users.Username = '" + username + "')", SQLcon);
                userID = Convert.ToInt32(query4.ExecuteScalar());
                string Query2 = "Insert into Faculty values('"+userID+"', '" + FNUM + "','" + name + "','" + RollNum + "')";
                SqlCommand cmd1 = new SqlCommand(Query2, SQLcon);
                cmd1.ExecuteNonQuery();
                string Query3 = "Insert into supervises values ('" + FNUM + "','" + FYP_ID + "')";
                SqlCommand cmd2 = new SqlCommand(Query3, SQLcon);
                cmd2.ExecuteNonQuery();
            
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Insertion Has been Made to the Tables ')</script>");
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('This Supervisor Has reached 6 FYPS.')</script>");
        }
    }
}
