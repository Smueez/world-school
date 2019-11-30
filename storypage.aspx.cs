using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Windows;
using System.Data;
using System.Text.RegularExpressions;
using System.IO;

public partial class storypage : System.Web.UI.Page
{
    /* private DataSet getdata()
     {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
         SqlDataAdapter da = new SqlDataAdapter("Select * from post", con);
         DataSet ds = new DataSet();
         da.Fill(ds);
         return ds;
     }*/

    
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        HttpCookie coockie = Request.Cookies["userinfo"];
        if (Request.Cookies["userinfo"] != null)
        {
            
            div.Visible = true;
            div1.Visible = false;
            
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
        SqlDataSource1.SelectCommand = "Select * from post";
    }
    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        Label lblID = e.Item.FindControl("Label5") as Label;//finding control in Listview1 control
        SqlDataSource sqlds = e.Item.FindControl("SubCategory") as SqlDataSource;//finding sqldatasource control in Listview1 control
        //sqlds.ConnectionString = " Data Source=aaa; initial catalog = Detail; User id=bbb; password=cccc;";//creating connection 
        sqlds.SelectCommand = "select * from cmmnt where id='" + lblID.Text + "'"; 
    }

    protected void docomment(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        HttpCookie coockie = Request.Cookies["userinfo"];
        Button cmntbttn = sender as Button;
        ListViewItem item = (ListViewItem)(sender as Control).NamingContainer;
        Label idlbl = (Label)item.FindControl("Label5");
        String idstr = idlbl.Text;             //post id
        String emailstr = coockie["email"].ToString();      //email
        String command1 = "Select [last] from [user] where email='" + emailstr + "'";
        SqlCommand cmd = new SqlCommand(command1, con);
        String par = Convert.ToString(cmd.ExecuteScalar());         //cmntname
        TextBox cmmntxt = (TextBox)item.FindControl("TextArea2");
        
        String cmnt = cmmntxt.ToString();         //COMMENT
        String cmmnd = "Insert into cmmnt Values(@id,@cmntname,@comment,@emailc)";
        SqlCommand cmmd = new SqlCommand(cmmnd, con);
        cmd.Parameters.AddWithValue("@id", idstr);
        cmd.Parameters.AddWithValue("@cmntname", par);
        cmd.Parameters.AddWithValue("@comment", cmnt);
        cmd.Parameters.AddWithValue("@emailc", emailstr);
        con.Close();
        
    }
     /* protected void do_post(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        HttpCookie coockie = Request.Cookies["userinfo"];
        String emailstr = coockie["email"].ToString();
        String command1 = "Select [last] from [user] where email='" + emailstr + "'";
        SqlCommand cmd = new SqlCommand(command1, con);
        String par = Convert.ToString(cmd.ExecuteScalar());
        /* if (FileUpload1.HasFile)
         {
             HttpPostedFile postedFile = FileUpload1.PostedFile;
             string fileName = Path.GetFileName(postedFile.FileName);
         }
        String cmmnd = "Insert into [post] Values(@lname,@post,@email,@about)";
        SqlCommand cmmd = new SqlCommand(cmmnd, con);
        cmd.Parameters.AddWithValue("@lname", par);
        cmd.Parameters.AddWithValue("@post", TextArea1.Text);
        cmd.Parameters.AddWithValue("@email", emailstr);
        cmd.Parameters.AddWithValue("@about", itemlist.Text);
        Response.Redirect("storypage.aspx");
        //Response.Write("<script>alert('Add a year box!');</script>");
        con.Close();
    }*/
    protected void signid_Click(object sender, EventArgs e)
    {
       // myModall.Visible = true;
    }
    protected void upload(object sender, EventArgs e)
    {
        // myModall.Visible = true;
    }


    protected void Button1_Clickc(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        String cmmnd = "Insert into [cmmnt]";
    }
    protected void search(object sender, EventArgs e)
    {

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
    protected void crs(object sender, EventArgs e)
    {
        Response.Redirect("courseList.aspx");
    }
    protected string MakeLink(string txt)
    {
        Regex regx = new Regex("http://([\\w+?\\.\\w+])+([a-zA-Z0-9\\~\\!\\@\\#\\$\\%\\^\\&amp;\\*\\(\\)_\\-\\=\\+\\\\\\/\\?\\.\\:\\;\\'\\,]*)?", RegexOptions.IgnoreCase);

        MatchCollection mactches = regx.Matches(txt);

        foreach (Match match in mactches)
        {
            txt = txt.Replace(match.Value, "<a href='" + match.Value + "'>" + match.Value + "</a>");
        }

        return txt;
    }

    protected void do_post(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        HttpCookie coockie = Request.Cookies["userinfo"];
        String emailstr = coockie["email"].ToString();
        String command1 = "Select [last] from [user] where email='" + emailstr + "'";
        SqlCommand cmd = new SqlCommand(command1, con);
        String par = Convert.ToString(cmd.ExecuteScalar());
        
        String cmmnd = "Insert into [post] Values(@lasatname,@ppost,@memail,@mabout)";
        SqlCommand cmmd = new SqlCommand(cmmnd, con);
        cmd.Parameters.AddWithValue("@lasatname", par);
        cmd.Parameters.AddWithValue("@ppost", TextArea1.Text);
        cmd.Parameters.AddWithValue("@memail", emailstr);
        cmd.Parameters.AddWithValue("@mabout", itemlist.Text);
       
        cmd.ExecuteNonQuery();
        con.Close();
    }
}