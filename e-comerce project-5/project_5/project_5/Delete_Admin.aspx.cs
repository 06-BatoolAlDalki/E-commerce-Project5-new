using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class Delete_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection connect = new SqlConnection("data source =DESKTOP-V50HPE1\\SQLEXPRESS; database =e-commerce ; integrated security=SSPI");
                SqlCommand comand = new SqlCommand("select * from userReg", connect);
                connect.Open();

                SqlDataReader reada = comand.ExecuteReader();
                // string table = "<table class='table table-striped'> <tr><th>ID</th> <th>Name</th> <th>Email</th> <th>PhoneNumber</th> <th></th> <th></th>";

                while (reada.Read())
                {
                    Label1.Text = (string)reada[1];                  //string image_URL = (string)reada[2];
                    Label2.Text = (string)reada[2];
                    Label3.Text =
                         Convert.ToString(reada[3]);




                }

                connect.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string s = Request.QueryString["id"];
                int s1 = Convert.ToInt32(s);
                SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");


                string query = "DELETE FROM userReg WHERE userId='" + s1 + "'";
                SqlCommand comand = new SqlCommand(query, cc);
                cc.Open();
                //SqlDataReader reada = comand.ExecuteReader();



                comand.ExecuteNonQuery();


                cc.Close();
            }
            catch (Exception ex) { Response.Write(ex.Message); }
        }
    }
}