using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class ShowUser_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink edit = new HyperLink();
            edit.Text = "Show";
            edit.CssClass = "show";

            HyperLink delete = new HyperLink();
            delete.Text = "Delete";
            delete.CssClass = "show";


            SqlConnection connect = new SqlConnection("data source =DESKTOP-V50HPE1\\SQLEXPRESS; database =e-commerce ; integrated security=SSPI");
            SqlCommand comand = new SqlCommand("select * from userReg", connect);
            connect.Open();

            SqlDataReader reada = comand.ExecuteReader();
            //string image_URL = "~/Files/" + reada[2];
            string table = "<table class='table table-striped'> <tr><th>ID</th> <th>Name</th> <th>Email</th> <th>PhoneNumber</th> <th></th> <th></th>";

            while (reada.Read())
            {
                edit.NavigateUrl = "UserSales.aspx?id=" + reada[0];
                delete.NavigateUrl = "Delete_Admin.aspx?id=" + reada[0];

                //string image_URL = (string)reada[2];
                table += $"<tr><td>{reada[0]}</td><td>{reada[1]}</td><td>{reada[2]}</td><td>{reada[3]}</td><td><button  class='show'><a href={edit.NavigateUrl} style='color:#E6E6E6; text-decoration:none;'>Show</a></button>  </td><td><button  class='show'><a href={delete.NavigateUrl} style='color:#E6E6E6; text-decoration:none;'>Delete</a></button>  </td></tr>";



            }
            table += "</table>";
            table1.Text = table;
            connect.Close();
        }

        protected void show_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSales_Admin.aspx");
        }
    }
    }
