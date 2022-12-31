using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace project_5
{
    public partial class profileEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            int x = Convert.ToInt32(id);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            int x = Convert.ToInt32(id);
            SqlConnection coon = new SqlConnection("data source =DESKTOP-V50HPE1\\SQLEXPRESS; database =e-commerce; integrated security = SSPI");
            string info = "update userReg set Fname='"+name.Text+"', Email='"+email.Text+ "' ,PhoneNumber='"+ phone.Text+"' where userId='"+x+"'";
            coon.Open();
            SqlCommand comand = new SqlCommand(info, coon);
            comand.ExecuteNonQuery();
            coon.Close();
            Label1.Visible = true;
        }
    }
}