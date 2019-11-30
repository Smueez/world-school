using System;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;
using System.Web;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        int x = 0;
        if(year.Text != null)
        {
           x = Int32.Parse(year.Text);
            
        }
        else
        {
            Response.Write("<script>alert('Add a year box!');</script>");
        }
        HttpPostedFile postedFile = FileUpload1.PostedFile;
        string fileName = Path.GetFileName(postedFile.FileName);
        string fileExtension = Path.GetExtension(fileName);
        int fileSize = postedFile.ContentLength;
        if (x < 1945 || x > 2017)
        {
            if (x < 1945 || x > 2017) { Response.Write("<script>alert('Year should be into 1945-2017');</script>"); }
           
        }
        else if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".jpeg" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".bmp")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //  try
             //   {
            con.Open();
            String command = "Insert into [user] Values(@fname,@lname,@sex,@email,@password,@date,@mounth,@year,@occu,@country,@inst,@about,@father,@phone,@birthplace,@ffood,@fplace,@propic)";
            SqlCommand cmd = new SqlCommand(command, con);

            cmd.Parameters.AddWithValue("@fname", fname.Text);
            cmd.Parameters.AddWithValue("@lname", lname.Text);
            cmd.Parameters.AddWithValue("@sex", sex.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            cmd.Parameters.AddWithValue("@date", date.Text);
            cmd.Parameters.AddWithValue("@mounth", mounth.Text);
            cmd.Parameters.AddWithValue("@occu", occu.Text);
            cmd.Parameters.AddWithValue("@country", Country.Text);
            cmd.Parameters.AddWithValue("@inst", inst.Text);
            cmd.Parameters.AddWithValue("@year", year.Text);
            cmd.Parameters.AddWithValue("@about", comment.Text);
            cmd.Parameters.AddWithValue("@father", father.Text);
            cmd.Parameters.AddWithValue("@phone", phone.Text);
            cmd.Parameters.AddWithValue("@birthplace", birthplace.Text);
            cmd.Parameters.AddWithValue("@ffood", food.Text);
            cmd.Parameters.AddWithValue("@fplace", favplace.Text);
            

            Stream stream = postedFile.InputStream;
            BinaryReader binread = new BinaryReader(stream);
            Byte[] bytes = binread.ReadBytes((int)stream.Length);
            cmd.Parameters.AddWithValue("@propic",bytes);
            cmd.ExecuteNonQuery();
            Response.Redirect("signin.aspx");

           //  }
            //   catch (Exception)
             //  {

               //    StatusLabel.Text = "This Email already exists";
               //    StatusLabel.Visible = true;
            // }
            
            con.Close();

        }
        else
        {
            StatusLabel.Visible = true;
            StatusLabel.Text = "Only image (.jpg, .jpeg, .gif and .bmp) can be uploaded ";
        }
    }

}
