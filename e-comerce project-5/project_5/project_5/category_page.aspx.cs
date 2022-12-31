using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class category_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string x = Request.QueryString["id"];
                int y = Convert.ToInt32(x);
                profile.NavigateUrl = "Profile.aspx?id=y";

                SqlConnection connection = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
                        SqlCommand cmd = new SqlCommand("SELECT * from category ", connection);
              
                connection.Open();
                              SqlDataReader rd = cmd.ExecuteReader();
               


                while (rd.Read())
                        {

                            containProduct.InnerHtml += $"<div class='cards' height='700px'><a href='product_show_category1.aspx?id={rd[0]}'> <img style='width:535px; height:500px; padding:12px;' src='Images/{rd[2]}' alt='alt'/></a><p style='font-size:25px;text-align:center'>{rd[1]}</p> </div>";
                        }
                    }
                }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}