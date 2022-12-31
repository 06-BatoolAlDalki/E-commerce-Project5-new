
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace project_5
{
    public partial class categories_show : System.Web.UI.Page
    {

        protected void button(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {


                try
                {
                    HyperLink l= new HyperLink();
                    l.Text = "navigate";

                    HyperLink l1 = new HyperLink();
                    l1.Text = "navigate";


                    SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");
                    string query = "select * from   category";
                    SqlCommand cmd = new SqlCommand(query, cc);
                    cc.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    string table = "<table class='table table-striped'> <tr> <th>Category name</th><th>Image</th><th></th><th></th></tr>";
                    while (sdr.Read())
                    {
                        //link.NavigateUrl = "page_edit.aspx?id=" + sdr[3];
                        l.NavigateUrl = "admin_edit_categories.aspx?id=" + sdr[0];
                        l1.NavigateUrl = "delete_category.aspx?id=" + sdr[0];

                        table += $"<tr><td>{sdr[1]}</td><td><img src =img\\{sdr[2]}  width=50px; height=50px /></td> <td> <a href={l.NavigateUrl} > Edit <a /> </td><td> <a href={l1.NavigateUrl} > Delete <a /> </td></tr>";
                    }
                    table += "</table>";
                    Label2.Text = table;

                }
                catch (SqlException q)
                {
                    Response.Write(q.Message);
                }


               
            }


        }

    }
}