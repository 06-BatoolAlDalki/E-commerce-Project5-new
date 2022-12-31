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
    public partial class x : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /////////////////////////////////////////////////////////return deleterNumber from cart
            string q = Request.QueryString["deleter"];
            int q1 =Convert.ToInt32(q);
            /////////////////////////////////////////////////////////retrun quantity
            string q2 = Request.QueryString["quanyity"];
            int q3 = Convert.ToInt32(q2);


            string quantity1 = Convert.ToString(Session["quantity1"]);   ///5

           // Label1.Text = "qqqqqqqqqqqqqqqqq";
          
            int qtyNum = Convert.ToInt32(quantity1);////5
            Label1.Text = Convert.ToString(qtyNum);

            // double q = Convert.ToDouble(quantity1);
           q3--;///4
                     Session["quantity1"] = Convert.ToString(qtyNum);  ///4

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            if (q3 <= 0) { q3 = 1; }
            //int id= Convert.ToInt32(Session["deleterID"]);

            //string deleteNum = (string)Session["id"];
            //int num = Convert.ToInt32(deleteNum);
           // Label1.Text = Convert.ToString(qtyNum);
            //Label1.Text =Convert.ToString(deleteNum);

            SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");

            cc.Open();


           
            string query = "  UPDATE cart\r\nSET quantity = '"+q3+"'\r\nWHERE deleter='"+q1+"';";

            SqlCommand cmd2 = new SqlCommand(query, cc);
           
            cmd2.ExecuteNonQuery();

            cc.Close();















            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            Response.Redirect("Shopping_Bag_card.aspx");


        }
    }
}