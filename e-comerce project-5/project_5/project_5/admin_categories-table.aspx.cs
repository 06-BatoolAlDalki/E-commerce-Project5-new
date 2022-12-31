using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace project_5
{
    public partial class admin_categories_table : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("categories_show.aspx");
        }


          

    

    protected void hideDiv1(object sender, EventArgs e)
        {
            Response.Redirect("categories_show.aspx");

        }
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {


                //try
                //{
                //    SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");
                //    string query = "select * from   categories1";
                //    SqlCommand cmd = new SqlCommand(query, cc);
                //    cc.Open();
                //    SqlDataReader sdr = cmd.ExecuteReader();
                //    string table = "<table class=table table-striped> <tr> <th>Category name</th><th>Image</th><th>Edit(link)</th></tr>";
                //    while (sdr.Read())
                //    {
                //        table += $"<tr><td></td>{sdr[1]}<td><img src =Images\\{sdr[2]}  width=200px; height=200px /></td> <td> edit </td></tr>";
                //    }
                //    table += "</table>";
                //    Label1.Text = table;

                //}
                //catch (SqlException q)
                //{
                //    Response.Write(q.Message);
                //}
            }
            

        }

        
    }
}