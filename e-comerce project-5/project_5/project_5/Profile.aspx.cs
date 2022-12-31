using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.Remoting.Contexts;

namespace project_5
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string id = Request.QueryString["id"];
            //int x22 = Convert.ToInt32(id);
            SqlConnection coon = new SqlConnection("data source =DESKTOP-V50HPE1\\SQLEXPRESS; database =e-commerce; integrated security = SSPI");
            string info = "select Fname,Email,PhoneNumber from userReg where userId='"+4+"'";

            SqlCommand comand = new SqlCommand(info, coon);
            coon.Open();

            SqlDataReader reada = comand.ExecuteReader();
            if (reada.Read())
            {
                name.Text = (string)reada[0];
                email.Text = (string)reada[1];

                decimal x = (decimal)reada[2];
                phone.Text=Convert.ToString(x);

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string id = Request.QueryString["ID"];
            //int x = Convert.ToInt32(id);
            string sso = "4";
            Response.Redirect("profileEdit.aspx?id="+sso);
        }
    }
}