using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace project_5
{
    public partial class Add_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                SqlConnection cc = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
                //SqlCommand comand = new SqlCommand("select * from name_and_password", cc);
                cc.Open();

                string query = "select * from  category";
                SqlCommand cmd = new SqlCommand(query, cc);

                SqlDataAdapter adapt = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                adapt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "cName";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataBind();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //   string folderPath = Server.MapPath("~/images/");

            //Check whether Directory (Folder) exists.
            //if (!Directory.Exists(folderPath))
            //{
            //    //If Directory (Folder) does not exists Create it.
            //    Directory.CreateDirectory(folderPath);
            //}

            //Save the File to the Directory (Folder).
            //  FileUpload1.SaveAs(folderPath +"//"+ Path.GetFileName(FileUpload1.FileName));

            //Display the Picture in Image control.
            Image1.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload1.FileName);
            SqlConnection cc = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
            cc.Open();
            string val = "\'" + TextBox1.Text + "','" + TextArea1.Value + "','" + TextBox2.Text + "','" + Label2.Text + "' ,  '" + DropDownList1.SelectedValue + "\'";
            // string query = "insert into product (pName,description,price,pImage,catId) values (+"+val+")";
            string query = "insert into product (pName,description,price,pImage,catId,discount) values (@pName,@description,@price,@pImage,@catId,@discount)";

            SqlCommand cmd = new SqlCommand(query, cc);
            cmd.Parameters.AddWithValue("@pName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@description", TextArea1.Value);
            cmd.Parameters.AddWithValue("@price", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pImage", Label2.Text);
            cmd.Parameters.AddWithValue("@catId", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@discount",0);

            cmd.ExecuteNonQuery();
            Label3.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/img/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + "//" + Path.GetFileName(FileUpload1.FileName));
            Label2.Text = Path.GetFileName(FileUpload1.FileName);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("show_product.aspx");
        }

    }
    }
