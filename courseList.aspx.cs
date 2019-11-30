using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class courseList : System.Web.UI.Page
{
    public int x = 1,y=0,max,last,xy=0;
    protected void Page_Load(object sender, EventArgs e)
    {

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

                byte[] imagedata = (byte[])cmdimg1.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                profile.ImageUrl = "data:image/png;base64," + img;

            }
        }
        else
        {
            div.Visible = false;
            div1.Visible = true;

        }
        String maxvalcmd = "SELECT MAX(id) FROM [courses] ";

        SqlCommand cmdmax = new SqlCommand(maxvalcmd, con);
        String parmax = Convert.ToString(cmdmax.ExecuteScalar());
        max = int.Parse(parmax);
        // Response.Write("<script>alert(parmax);</script>");
        //b1.Text = parmax;
        if (xy == 0) { xy = max; }
        if (y==0) {
            Button4.Attributes.CssStyle.Add("opacity", "0.4");
            Button4.Attributes.Add("onclick", "this.disabled=true;");
        }
        else
        {
            Button4.Attributes.CssStyle.Add("opacity", "1");
            Button4.Attributes.Add("onclick", "this.disabled=false;"); ;
        }
        if (xy > 10)
        {
             last = xy - 9;
        }
        else if (xy <= 10)
        {
            
            Button1.Attributes.CssStyle.Add("opacity", "0.4");
            Button1.Attributes.Add("onclick", "this.disabled=true;");
            for (int i = 10; i > xy; i--)
            {
                if (i == 10)
                {
                    L10.Visible = false;

                }
                else if (i == 9)
                {
                    L9.Visible = false;
                }
                else if (i == 8)
                {
                    L8.Visible = false;
                }
                else if (i == 7)
                {
                    L7.Visible = false;
                }
                else if (i == 6)
                {
                    L6.Visible = false;
                }
                else if (i == 5)
                {
                    L5.Visible = false;
                }
                else if (i == 4)
                {
                    L4.Visible = false;
                }
                else if (i == 3)
                {
                    L3.Visible = false;
                }
                else if (i == 2)
                {
                    L2.Visible = false;
                }
                else if (i == 1)
                {
                    L1.Visible = false;
                }
            }
            last = 1;
        }

        for (int i = xy; i >= last; i--)
        {
            //x = 1;
            string istr = i.ToString();
            String crscvr = "Select [cover] from [courses] where id='" + istr + "'";
            SqlCommand cvr = new SqlCommand(crscvr, con);
            String cvrstr = Convert.ToString(cvr.ExecuteScalar());
            String crsnm = "Select [name] from [courses] where id='" + istr + "'";
            String crsathr = "Select [athr] from [courses] where id='" + istr + "'";
            SqlCommand cmndnm = new SqlCommand(crsnm, con);
            String parnm = Convert.ToString(cmndnm.ExecuteScalar());
            SqlCommand cmdathr = new SqlCommand(crsathr, con);
            String parathr = Convert.ToString(cmdathr.ExecuteScalar());

            if (x == 1)
            {



                byte[] imagedata = (byte[])cvr.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                p1.ImageUrl = "data:image/png;base64," + img;


                a1.Text = parnm;
                b1.Text = parathr;
                c1.Text = i.ToString();
            }
            else if (x == 2)
            {



                byte[] imagedata = (byte[])cvr.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                p2.ImageUrl = "data:image/png;base64," + img;


                a2.Text = parnm;
                b2.Text = parathr;
                c2.Text = i.ToString();
            }
            else if (x == 3)
            {

                byte[] imagedata = (byte[])cvr.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                p3.ImageUrl = "data:image/png;base64," + img;


                a3.Text = parnm;
                b3.Text = parathr;
                c3.Text = i.ToString();
            }
            else if (x == 4)
            {



                byte[] imagedata = (byte[])cvr.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                p4.ImageUrl = "data:image/png;base64," + img;


                a4.Text = parnm;
                b4.Text = parathr;
                c4.Text = i.ToString();
            }
            else if (x == 5)
            {


                byte[] imagedata = (byte[])cvr.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                p5.ImageUrl = "data:image/png;base64," + img;


                a5.Text = parnm;
                b5.Text = parathr;
                c5.Text = i.ToString();
            }
            else if (x == 6)
            {


                byte[] imagedata = (byte[])cvr.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                p6.ImageUrl = "data:image/png;base64," + img;


                a6.Text = parnm;
                b6.Text = parathr;
                c6.Text = i.ToString();
            }
            else if (x == 7)
            {


                byte[] imagedata = (byte[])cvr.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                p7.ImageUrl = "data:image/png;base64," + img;


                a7.Text = parnm;
                b7.Text = parathr;
                c7.Text = i.ToString();
            }
            else if (x == 8)
            {


                byte[] imagedata = (byte[])cvr.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                p8.ImageUrl = "data:image/png;base64," + img;


                a8.Text = parnm;
                b8.Text = parathr;
                c8.Text = i.ToString();
            }
            else if (x == 9)
            {


                byte[] imagedata = (byte[])cvr.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                p9.ImageUrl = "data:image/png;base64," + img;


                a9.Text = parnm;
                b9.Text = parathr;
                c9.Text = i.ToString();
            }
            else if (x == 10)
            {


                byte[] imagedata = (byte[])cvr.ExecuteScalar();
                string img = Convert.ToBase64String(imagedata);
                p10.ImageUrl = "data:image/png;base64," + img;


                a10.Text = parnm;
                b10.Text = parathr;
                c10.Text = i.ToString();
            }
            x++;
        }
    }              
    protected void logout_click(object sender, EventArgs e)
    {
        HttpCookie coockie = new HttpCookie("userinfo");
        coockie.Expires = DateTime.Now.AddDays(-30d);
        Response.Cookies.Add(coockie);
        // Response.Cookies.Clear();

        Session["username"] = null;

        div.Visible = false;
        div1.Visible = true;
        Response.Redirect("storypage.aspx");
    }
    protected void about_click(object sender, EventArgs e)
    {

    }

    protected void one(object sender, EventArgs e)
    {
        Session["csrid"] = c1.Text;
        Response.Redirect("course.axps");
    }

    protected void two(object sender, EventArgs e)
    {
        Session["csrid"] = c2.Text;
        Response.Redirect("course.axps");
    }

    protected void three(object sender, EventArgs e)
    {
        Session["csrid"] = c3.Text;
        Response.Redirect("course.axps");
    }

    protected void four(object sender, EventArgs e)
    {
        Session["csrid"] = c5.Text;
        Response.Redirect("course.axps");
    }

    protected void five(object sender, EventArgs e)
    {
        Session["csrid"] = c4.Text;
        Response.Redirect("course.axps");
    }

    protected void six(object sender, EventArgs e)
    {
        Session["csrid"] = c6.Text;
        Response.Redirect("course.axps");
    }

    protected void seven(object sender, EventArgs e)
    {
        Session["csrid"] = c6.Text;
        Response.Redirect("course.axps");
    }
    protected void eight(object sender, EventArgs e)
    {
        Session["csrid"] = c6.Text;
        Response.Redirect("course.axps");
    }
    protected void nine(object sender, EventArgs e)
    {
        Session["csrid"] = c6.Text;
        Response.Redirect("course.axps");
    }
    protected void ten(object sender, EventArgs e)
    {
        Session["csrid"] = c6.Text;
        Response.Redirect("course.axps");
    }
    protected void next(object sender, EventArgs e)
    {
        xy = last-1;
        Response.Redirect("courseList.aspx");
        y++;
    }
    protected void prevous(object sender, EventArgs e)
    {
        y--;
        xy = xy + 10;
    }
    protected void crs(object sender, EventArgs e)
    {
        Response.Redirect("courseList.aspx");
    }
}