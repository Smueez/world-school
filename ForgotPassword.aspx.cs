using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class ForgotPassword : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


  

    protected void Button1_Click1(object sender, EventArgs e)
    {
        String user;
        String mother,pet,teacher;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        try
        {

            con.Open();
            user = TextBox1.Text;
            mother = TextBox2.Text;
            pet = TextBox3.Text;
            teacher = TextBox.Text;
            String command1 = "Select mother from [user] where email='" + user + "'";
            String command2 = "Select pet from [user] where email='" + user + "'";
            String command3 = "Select teacher from [user] where email='" + user + "'";
            SqlCommand cmd = new SqlCommand(command1, con);
            SqlCommand cmd2 = new SqlCommand(command2, con);
            SqlCommand cmd3 = new SqlCommand(command3, con);

            String par = Convert.ToString(cmd.ExecuteScalar());
            String par1 = Convert.ToString(cmd2.ExecuteScalar());
            String par2 = Convert.ToString(cmd3.ExecuteScalar());

            if (string.IsNullOrEmpty(par) == true || string.IsNullOrEmpty(par1) == true || string.IsNullOrEmpty(par2) == true)
            {
                Label1.Text = "This Email does not exists";
                Label1.Visible = true;
            }
            else
            {
                if (par == mother && par1==pet && par2==teacher)
                {

                    ques.Visible = false;
                    pass.Visible = true;
                    
                }
                else
                {
                    Label16.Text = "Wrong Answere! Try Sign up!"; Label1.Visible = true; //ques.Visible = false;
                }
            }

        }
        catch (Exception E)
        {
            Label16.Text = "This email you entered doesn't match";
            Label1.Visible = true;
        }
        finally
        {
            con.Close();
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        String user,passwrd;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            user = TextBox1.Text;
            passwrd = password.Text;
            String command1 = "update [user] set [password] = '" + passwrd + "' where email = '" + user + "'";
            Session["username"] = user;
            Response.Redirect("signin.aspx");
        }
        catch (Exception E)
        {
            Label16.Text = "This email you entered doesn't match";
            Label1.Visible = true;
        }
        finally
        {
            con.Close();
        }
    }
}