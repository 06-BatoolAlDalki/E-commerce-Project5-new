using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection("data source =DESKTOP-V50HPE1\\SQLEXPRESS; database =e-commerce ; integrated security=SSPI");
            connect.Open();
            string name = fullname.Text;
            string email = Email.Text;
            string message = Message1.Value;

            string query = "insert into contact(Name,Email,messagge)" + " values ('" + name + "','" + email + "','" + message + "')";

            SqlCommand command = new SqlCommand(query, connect);
            command.ExecuteNonQuery();
            connect.Close();

            fullname.Text = "";
            Email.Text = "";
            Message1.Value = "";
        }
    }
}