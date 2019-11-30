using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class signin : System.Web.UI.Page
{
    HttpCookie coockie = new HttpCookie("userinfo");
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (coockie["email"] != null)
        {
            Response.Redirect("storypage.aspx");
        }
    }
    protected void submit_Click1(object sender, EventArgs e)
    {
            String user;
            String pass;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            /*logincoockie["email"] = email.Text;
            logincoockie["pass"] = password.Text;
            logincoockie.Expires = DateTime.Now.AddDays(30d);
            Response.Cookies.Add(logincoockie);*/

            try
            {

                con.Open();
                user = email.Text;
                pass = password.Text;
                String command1 = "Select password from [user] where email='" + user + "'";
                SqlCommand cmd = new SqlCommand(command1, con);
                String par = Convert.ToString(cmd.ExecuteScalar());
                if (string.IsNullOrEmpty(par) == true)
                {
                    Label1.Text = "This Email or Password does not exists";
                    Label1.Visible = true;
                }
                else
                {
                    if (par == pass)
                    {
                        
                        coockie["email"] = user;
                        coockie.Expires = DateTime.Now.AddDays(30d);
                        Response.Cookies.Add(coockie);
                        //Session["username"] = user;
                        Response.Redirect("storypage.aspx");

                    }
                    else
                    {
                        Label1.Text = "This Username and password doesn't match"; Label1.Visible = true;
                    }
                }

            }
            catch (Exception E)
            {
                Label1.Text = "Something wrong please retype the values";
                Label1.Visible = true;
            }
            finally
            {
                con.Close();
            }
        }
       
}