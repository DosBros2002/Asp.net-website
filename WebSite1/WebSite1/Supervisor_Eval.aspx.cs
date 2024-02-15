using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Supervisor_Eval : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void OpenHome(object sender, EventArgs e)
    {
        Response.Redirect("SupervisorHome.aspx");
    }

    protected void OpenUser(object sender, EventArgs e)
    {
        Response.Redirect("Panel_User.aspx");
    }

    protected void Eval(object sender, EventArgs e)
    {
        Response.Redirect("Supervisor_Eval.aspx");
    }
    protected void FYP(object sender, EventArgs e)
    {
        Response.Redirect("Super_FYP.aspx");
    }
    protected void SignOut(object sender, EventArgs e)
    {
        Response.Redirect("LogIn.aspx");
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        String Proj_ID = TextBox3.Text;
        String Q1 = RadioButtonList1.SelectedValue;
        String Q2 = RadioButtonList2.SelectedValue;
        String Q3 = RadioButtonList3.SelectedValue;
        String Q4 = RadioButtonList4.SelectedValue;
        String Q5 = RadioButtonList5.SelectedValue;
        String Q6 = RadioButtonList6.SelectedValue;
        String Q7 = RadioButtonList7.SelectedValue;
        String Q8 = RadioButtonList8.SelectedValue;
        String Q9 = RadioButtonList9.SelectedValue;
        String Q10 = RadioButtonList10.SelectedValue;
        String Q11 = RadioButtonList11.SelectedValue;
        String Q12 = RadioButtonList12.SelectedValue;
        String Q13 = RadioButtonList13.SelectedValue;
        String Q14 = RadioButtonList14.SelectedValue;
        String Q15 = RadioButtonList15.SelectedValue;
        String review = TextBox1.Text;
        String SID = TextBox2.Text;
        string UID = Application["UserId"].ToString();
        SqlConnection SQLcon = new SqlConnection("Data Source=DOSBROS\\SQLEXPRESS;Initial Catalog=Project1;Integrated Security=True");
        SQLcon.Open();




        SqlDataReader x;
        SqlCommand query = new SqlCommand("Select * from Users inner join Faculty on Users.ID = Faculty.ID where (Faculty.F_Num like '" + SID + "'  AND Users.ID like '" + UID + "')", SQLcon);
        x = query.ExecuteReader();
        if (x.Read())
        {
            x.Close();
            double Numbers = Convert.ToDouble(RadioButtonList1.SelectedValue) + Convert.ToDouble(RadioButtonList2.SelectedValue) + Convert.ToDouble(RadioButtonList3.SelectedValue) + Convert.ToDouble(RadioButtonList4.SelectedValue) + Convert.ToDouble(RadioButtonList5.SelectedValue) + Convert.ToDouble(RadioButtonList6.SelectedValue) + Convert.ToDouble(RadioButtonList7.SelectedValue) + Convert.ToDouble(RadioButtonList8.SelectedValue) + Convert.ToDouble(RadioButtonList9.SelectedValue) + Convert.ToDouble(RadioButtonList10.SelectedValue) + Convert.ToDouble(RadioButtonList11.SelectedValue) + Convert.ToDouble(RadioButtonList12.SelectedValue) + Convert.ToDouble(RadioButtonList13.SelectedValue) + Convert.ToDouble(RadioButtonList14.SelectedValue) + Convert.ToDouble(RadioButtonList15.SelectedValue);
            double Grade = (Numbers / 150) * 100;
            string GradeALlocated = "";
            if (Grade >= 90)
            {
                GradeALlocated = "A+";
            }
            else if (Grade >= 86 && Grade <= 89)
            {
                GradeALlocated = "A";
            }
            else if (Grade >= 82 && Grade <= 85)
            {
                GradeALlocated = "A-";
            }
            else if (Grade >= 78 && Grade <= 81)
            {
                GradeALlocated = "B+";
            }
            else if (Grade >= 74 && Grade <= 77)
            {
                GradeALlocated = "B";
            }
            else if (Grade >= 70 && Grade <= 73)
            {
                GradeALlocated = "B-";
            }
            else if (Grade >= 66 && Grade <= 69)
            {
                GradeALlocated = "C+";
            }
            else if (Grade >= 62 && Grade <= 65)
            {
                GradeALlocated = "C";
            }
            else if (Grade >= 58 && Grade <= 61)
            {
                GradeALlocated = "C-";
            }
            else if (Grade >= 54 && Grade <= 57)
            {
                GradeALlocated = "D+";
            }
            else if (Grade >= 50 && Grade <= 53)
            {
                GradeALlocated = "D";
            }
            else if (Grade <= 49)
            {
                GradeALlocated = "F";
            }
            string Query = "Insert into Evaluates values('" + SID + "','" + Proj_ID + "','" + Q1 + "','" + Q2 + "','" + Q3 + "','" + Q4 + "','" + Q5 + "','" + Q6 + "','" + Q7 + "','" + Q8 + "','" + Q9 + "','" + Q10 + "','" + Q11 + "','" + Q12 + "','" + Q13 + "','" + Q14 + "','" + Q15 + "','" + review + "'," + GradeALlocated + "')";
            SqlCommand cmd = new SqlCommand(Query, SQLcon);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Evaluateion has been added :)')</script>");

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Your details entered do not match with the person logged in :(')</script>");



        }


        //String query = "Insert into Evaluates values('" + SID + "','" + Proj_ID + "','" + Q1 + "','" + Q2 + "','" + Q3 + "','" + Q4 + "','" + Q5 + "','" + Q6 + "','" + Q7 + "','" + Q8 + "','" + Q9 + "','" + Q10 + "','" + Q11 + "','" + Q12 + "','" + Q13 + "','" + Q14 + "','" + Q15 + "','" + review + "')";
        //cm = new SqlCommand(query, con);
        //cm.ExecuteNonQuery();
        //cm.Dispose();
        //con.Close();





    }
}