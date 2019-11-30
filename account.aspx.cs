using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        HttpCookie coockie = Request.Cookies["userinfo"];
        if (coockie != null)
        {
            Session["username"] = coockie["email"];
            if (Session["username"] != null)
            {
                con.Open();
                String usr = Session["username"].ToString();


                String command1 = "Select [first] from [user] where email='" + usr + "'";
                SqlCommand cmd = new SqlCommand(command1, con);
                String par = Convert.ToString(cmd.ExecuteScalar());
                String command2 = "Select [last] from [user] where email='" + usr + "'";
                SqlCommand cmd2 = new SqlCommand(command2, con);
                String par2 = Convert.ToString(cmd2.ExecuteScalar());
                Name.Text = par + " " + par2;
                Label1.Text = par2;

                String comand = "Select [sex] from [user] where email='" + usr + "'";
                SqlCommand cmd3 = new SqlCommand(comand, con);
                String par3 = Convert.ToString(cmd3.ExecuteScalar());
                Label6.Text = par3;

                String comand1 = "Select [country] from [user] where email='" + usr + "'";
                SqlCommand cmd4 = new SqlCommand(comand1, con);
                String par4 = Convert.ToString(cmd4.ExecuteScalar());
                Label8.Text = par4;

                String comand2 = "Select [occupation] from [user] where email='" + usr + "'";
                SqlCommand cmd5 = new SqlCommand(comand2, con);
                String par5 = Convert.ToString(cmd5.ExecuteScalar());
                occu.Text = par5;

                String comand3 = "Select [institution] from [user] where email='" + usr + "'";
                SqlCommand cmd6 = new SqlCommand(comand3, con);
                String par6 = Convert.ToString(cmd6.ExecuteScalar());
                Label10.Text = par6;

                String comand10 = "Select [Date:] from [user] where email='" + usr + "'";
                SqlCommand cmd7 = new SqlCommand(comand10, con);
                String par7 = Convert.ToString(cmd7.ExecuteScalar());
                String comand4 = "Select [mounth] from [user] where email='" + usr + "'";
                SqlCommand cmd8 = new SqlCommand(comand4, con);
                String par8 = Convert.ToString(cmd8.ExecuteScalar());
                String comand5 = "Select [year] from [user] where email='" + usr + "'";
                SqlCommand cmd9 = new SqlCommand(comand5, con);
                String par9 = Convert.ToString(cmd9.ExecuteScalar());
                String yr = DateTime.Now.Year.ToString();
                int x = Int32.Parse(par9);
                int y = Int32.Parse(yr);
                int a = y - x;
                String par10 = a.ToString();
                Label4.Text = par10;
                Label12.Text = usr;

                String commandimg1 = "Select [propic] from [user] where email='" + usr + "'";
                SqlCommand cmdimg1 = new SqlCommand(commandimg1, con);
                String parimg1 = Convert.ToString(cmdimg1.ExecuteScalar());
                if (parimg1 != null)
                {
                  
                        byte[] imagedata = (byte[])cmdimg1.ExecuteScalar();
                        string img = Convert.ToBase64String(imagedata);
                        profile1.ImageUrl = "data:image/png;base64," + img;
                        Image1.ImageUrl = "data:image/png;base64," + img;

                    
                }
            }
        }
    }



    protected void update(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
       
            con.Open();
            String usr = Session["username"].ToString();

        String cmd = "Update [user] set  [country] = @cntry, [institution] = @ins where [email] = '" +usr +"'";
        SqlCommand cmdbleh = new SqlCommand(cmd, con);
        
        cmdbleh.Parameters.AddWithValue("cntry", TextBox5.Text);
        cmdbleh.Parameters.AddWithValue("ins", TextBox6.Text);
        cmdbleh.ExecuteNonQuery();
        Response.Redirect("account.aspx");
    } 

    protected void edit(object sender, EventArgs e)
    {
       // Label4.Visible = false;
       // TextBox2.Visible = true; TextBox2.Text = Label4.Text.ToString();
        //Label6.Visible = false;
        //TextBox3.Visible = true; TextBox3.Text = Label6.Text.ToString();
       // Label12.Visible = false;
        //TextBox4.Visible = true; TextBox4.Text = Label12.Text.ToString();
        Label8.Visible = false;
        TextBox5.Visible = true; TextBox5.Text = Label8.Text.ToString();
        Label10.Visible = false;
        TextBox6.Visible = true; TextBox6.Text = Label10.Text.ToString();
        Button1.Visible = false;Button2.Visible = true;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void logout_click(object sender, EventArgs e)
    {
        HttpCookie logincoockie = Request.Cookies["userinfo"];

        logincoockie["email"] = null;
        Session["username"] = null;
        div.Visible = false;
        Div1.Visible = true;
    }
    protected void about_click(object sender, EventArgs e)
    {

    }
}