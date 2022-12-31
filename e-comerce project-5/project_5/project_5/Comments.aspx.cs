using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class Comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
            int IU =4;

            string pi = Request.QueryString["id"];
            int IP = Convert.ToInt32(pi);

            SqlConnection connect = new SqlConnection("data source =DESKTOP-V50HPE1\\SQLEXPRESS; database =e-commerce ; integrated security=SSPI");
            connect.Open();
            SqlCommand comand = new SqlCommand("insert into comments values('" + IU + "','" + IP + "','" + add_comment.Text + "')", connect);
            comand.ExecuteNonQuery();
            connect.Close();


            SqlConnection connect1 = new SqlConnection("data source =DESKTOP-V50HPE1\\SQLEXPRESS; database =e-commerce ; integrated security=SSPI");
            connect1.Open();
            string join = "select * from comments inner join product on product.id=comments.productId;";
            SqlCommand comand1 = new SqlCommand(join, connect1);

            SqlDataReader reada = comand1.ExecuteReader();
            //string image_URL = "~/Files/" + reada[2];
            string table = "<table class='commented'><th>Comments</th>";

            while (reada.Read())
            {
                proN.Text = (string)reada[4];
                if (((string)reada[2]).Length > 0)
                {
                    //string image_URL = (string)reada[2];
                    table += $"<tr><td>{reada[2]}</td></tr><tr><td><hr/></td><td><hr/></td></tr>";
                    add_comment.Text = "";
                }



            }
            table += "</table>";
            Label1.Text = table;
            connect1.Close();
           
        }


        protected void post_Click(object sender, EventArgs e)
        {

        }
    }
}