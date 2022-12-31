using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace project_5
{
    public partial class add_category_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");
            cc.Open();

            string image_URL = "Files" + Path.GetFileName(FileUpload1.FileName);
            string folderPath = Server.MapPath("~/Files/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            //Display the Picture in Image control.
            Image1.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload1.FileName);



            string query = "insert into category (cName,cImage) values ('" + TextBox1.Text + "','" + Path.GetFileName(FileUpload1.FileName) + "') ";
            SqlCommand cmd = new SqlCommand(query, cc);

           
            cmd.ExecuteNonQuery();
            cc.Close();
            Label3.Visible = true;




        }
    }
}