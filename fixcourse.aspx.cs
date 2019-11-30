using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fixcourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpPostedFile postedFile = FileUpload1.PostedFile;
        string fileName = Path.GetFileName(postedFile.FileName);
        string fileExtension = Path.GetExtension(fileName);
        int fileSize = postedFile.ContentLength;
        
         if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".jpeg" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".bmp")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //  try
            //   {
            con.Open();
            String command = "Insert into [courses] Values(@athr,@text,@cover,@likes,@name,@vid)";
            SqlCommand cmd = new SqlCommand(command, con);

            cmd.Parameters.AddWithValue("@athr", TextBox1.Text);
            var reader = new StringReader(TextBox3.Text);
            string line;
            while (null != (line = reader.ReadLine()))
            {
                cmd.Parameters.AddWithValue("@text", TextBox3.Text);
            }
            
            cmd.Parameters.AddWithValue("@likes", 0);
            
           
            
            Stream stream = postedFile.InputStream;
            BinaryReader binread = new BinaryReader(stream);
            Byte[] bytes = binread.ReadBytes((int)stream.Length);
            cmd.Parameters.AddWithValue("@cover", bytes);
            cmd.Parameters.AddWithValue("@name", TextBox2.Text);

            if (FileUpload2.HasFile)
            {
                string file_name = FileUpload2.FileName.ToString();
                String str = "vid/" + file_name;
                cmd.Parameters.AddWithValue("@vid", str);

            }
            cmd.ExecuteNonQuery();
            Response.Redirect("storypage.aspx");

           
            con.Close();

        }
        else
        {
            StatusLabel.Visible = true;
            StatusLabel.Text = "Only image (.jpg, .jpeg, .gif and .bmp) can be uploaded ";
        }
    }
}