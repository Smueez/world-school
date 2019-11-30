using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    HttpCookie logincoockie = new HttpCookie("userinfo");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String usr;
        String pass;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        Response.Redirect("storypage.aspx");

        /* try
         {

             con.Open();
             usr = TextBox1.Text;
             pass = Password1.Text;
             String command1 = "Select password from [admin] where user='" + usr + "'";
             SqlCommand cmd = new SqlCommand(command1, con);
             String par = Convert.ToString(cmd.ExecuteScalar());
             if (string.IsNullOrEmpty(par) == true)
             {
                 Label1.Text = par;
                 Label1.Visible = true;
             }
             else
             {
                 if (par == pass)
                 {

                     Session["admin"] = "add";
                     Response.Redirect("storypage.aspx");

                 }
                 else
                 {
                     Label1.Text = "This Admin and password doesn't match"; Label1.Visible = true;
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
         }*/
    }
}
