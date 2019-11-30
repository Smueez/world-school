using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       viddiv.Visible = false;
        

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        HttpCookie coockie = Request.Cookies["userinfo"];
        if (Request.Cookies["userinfo"] != null)
        {

            div.Visible = true;
            div1.Visible = false;
            con.Open();
            String usr = coockie["email"].ToString();
            //logincoockie["email"] = usr;                                 //cockie
            // logincoockie.Expires = DateTime.Now.AddDays(30d);
            // Response.Cookies.Add(logincoockie);

            String command1 = "Select [last] from [user] where email='" + usr + "'";
            SqlCommand cmd = new SqlCommand(command1, con);
            String par = Convert.ToString(cmd.ExecuteScalar());
            Label1.Text = par;
            String commandimg1 = "Select [propic] from [user] where email='" + usr + "'";
            SqlCommand cmdimg1 = new SqlCommand(commandimg1, con);
            String parimg1 = Convert.ToString(cmdimg1.ExecuteScalar());
            if (parimg1 != null)
            {

                byte[] imagedata1 = (byte[])cmdimg1.ExecuteScalar();
                string img1 = Convert.ToBase64String(imagedata1);
                profile.ImageUrl = "data:image/png;base64," + img1;

            }
            else
            {
                profile.ImageUrl = "pics/profile.jpg";
            }
        }
        else
        {
            div.Visible = false;
            div1.Visible = true;

        }
        
           

            // String csrid = Session["crs"].ToString();
            String csrid = "3";
            String cmndcrsnm= "Select [name] from [courses] where id='" + csrid + "'";
            SqlCommand cmndnm = new SqlCommand(cmndcrsnm, con);
            String cmndthrnm = "Select [athr] from [courses] where id='" + csrid + "'";
            SqlCommand cmndathr = new SqlCommand(cmndthrnm, con);
            
            
            crs.Text = Convert.ToString(cmndnm.ExecuteScalar());
            name.Text= Convert.ToString(cmndathr.ExecuteScalar());
            
            String commandimgcrs = "Select [cover] from [courses] where id='" + csrid + "'";
            SqlCommand cmdimgcrs = new SqlCommand(commandimgcrs, con);
            String parimgcrs = Convert.ToString(cmdimgcrs.ExecuteScalar());
            

                byte[] imagedata = (byte[])cmdimgcrs.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                coverpic.ImageUrl = "data:image/png;base64," + img;

           
            String commandvid = "Select [vid] from [courses] where id='" + csrid + "'";
            SqlCommand cmdvid = new SqlCommand(commandvid, con);
            String parvid = Convert.ToString(cmdvid.ExecuteScalar());
            String vidnm = parvid.ToString();
            
            Video1.Attributes["src"] =vidnm;

            String cmndtxt = "Select [text] from [courses] where id='" + csrid + "'";
            SqlCommand cmndtext = new SqlCommand(cmndtxt, con);

            Label4.Text= Convert.ToString(cmndtext.ExecuteScalar());
        }
       
    protected void logout_click(object sender, EventArgs e)
    {
        HttpCookie logincoockie = Request.Cookies["userinfo"];

        logincoockie["email"] = null;
        Session["username"] = null;
        div.Visible = false;
        div1.Visible = true;
        Response.Write("<script>alert('You must have to Log In!');</script>");
        Response.Redirect("signin.asspx");
    }
    protected void about_click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        viddiv.Visible = true;
        Button1.Visible = false;
    }

   
}