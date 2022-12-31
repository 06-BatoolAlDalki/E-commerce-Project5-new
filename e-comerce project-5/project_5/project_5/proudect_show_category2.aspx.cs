using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class proudect_show_category2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection connection = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
                SqlCommand cmd = new SqlCommand("SELECT product.id,product.pName, product.pImage, product.price\r\nFROM product\r\nINNER JOIN category ON product.catId=category.id where category.id=5;", connection);
                connection.Open();
                SqlDataReader rd = cmd.ExecuteReader();

                while (rd.Read())
                {

                    containProduct.InnerHtml += $"<div class='cards' width='200px' height='700px'><a href='Single_Product.aspx?product={rd[0]}'> <img style='width:720px; height:500px; padding:12px;' src='img/{rd[2]}' alt='alt'/></a><p style='font-size:25px;text-align:center'>{rd[1]}</p><p style='font-size:25px; text-align:center'>{rd[3]} JD</p></div>";
                }
            }
        }
    }
}