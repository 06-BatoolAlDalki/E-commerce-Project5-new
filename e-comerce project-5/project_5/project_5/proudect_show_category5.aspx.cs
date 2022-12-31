using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class proudect_show_category5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection coun = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
            coun.Open();
            SqlCommand cmd = new SqlCommand("select * from product where discount  != 0; ", coun);
            SqlDataReader rd = cmd.ExecuteReader();
            //while (rd.Read())
            //{
            //    //double x = Convert.ToDouble(rd[3]);
            //    int y = (int)rd[6];
            //    //double a = (y / 100);
            //    //double b = (x*a);
            //    //double z = x - b;
            //    containProduct.InnerHtml += $"<div class='cards' width='200px' height='700px'><a href='Discount.aspx?id={rd[0]}'> <img style='width:500px; height:500px; padding:12px;' src='img/{rd[4]}' alt='alt'/></a><p style='font-size:25px;text-align:center'>{rd[1]}</p><p style='font-size:25px;text-align:center'>{rd[3]} {y} </p> </div>";
            //}
            //cmd.ExecuteNonQuery();
            coun.Close();
        }
    }
}