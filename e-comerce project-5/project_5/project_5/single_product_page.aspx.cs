using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class single_product_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            /////    Important Note
            ///           1 repesent id of Product    or    send product name ////////////   cookies_platters
            ///           



            string product_name = "Electric_Gas";
            //string product_name = "Electric_Gas";
            Response.Redirect("Shopping_Bag_card.aspx?id=" + product_name);
            




           

        }
    }
}