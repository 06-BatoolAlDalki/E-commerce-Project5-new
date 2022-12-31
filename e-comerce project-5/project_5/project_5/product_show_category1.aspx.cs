using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class product_show_category1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                try
                {

                    string l = Request.QueryString["id"];
                    int l1 = Convert.ToInt32(l);
                    SqlConnection connection = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
                    SqlCommand cmd = new SqlCommand("SELECT product.id,product.pName, product.pImage, product.price ,product.discount \r\nFROM product\r\nINNER JOIN category ON product.catId=category.id where category.id='" + l1 + "'", connection);
                    connection.Open();
                    SqlDataReader rd = cmd.ExecuteReader();

                    while (rd.Read())
                    {


                        int y = (int)rd[4];
                        if (y == 0)
                        {
                            containProduct.InnerHtml += $"<div class='cards'' height='600px' style='width=500px'><a href='Single_Product.aspx?id={rd[0]}'> <img style='width:600px; height:400px; padding:12px;' src='img/{rd[2]}' alt='alt'/></a><p style='font-size:25px;text-align:center'>{rd[1]}</p><p style='font-size:25px; text-align:center'>{rd[3]} JD </p></div>";

                        }
                        else
                        {
                            // Label1.Text = y;
                            containProduct.InnerHtml += $"<div class='cards'' height='600px'style='width=500px'><a href='Single_Product.aspx?id={rd[0]}'> <img style='width:600px; height:400px; padding:12px;' src='img/{rd[2]}' alt='alt'/></a><p style='font-size:25px;text-align:center'>{rd[1]}</p><p style='font-size:25px; text-align:center'> <span style='text-decoration: line-through'>{rd[3]} JD </span> \r <span style='color:red'> {y} JD</span></p></div>";
                        }
                    }
                }
                catch(SqlException qq)
                {
                    Response.Write(qq.Message);
                }
            }
        }
    }
}