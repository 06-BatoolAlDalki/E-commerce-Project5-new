using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_5
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string mess =(string)Session["message"];
            if(mess != string.Empty)
            {
                Label2.Text = mess;
                Label2.Visible= true;
            }
         




        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {


            try
            {

                SqlConnection cc = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
                cc.Open();
              

                string query = "insert into userReg (Fname,Email,PhoneNumber,Password,RolLogin) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + 2 + "') ";
                SqlCommand cmd = new SqlCommand(query, cc);

               Session["email"] = Convert.ToString(TextBox2.Text);



                Label1.Visible = true;



                cmd.ExecuteNonQuery();
                cc.Close();
                getID();
                Button2.Visible = true;

                Response.Redirect("Login.aspx?email="+ TextBox2.Text);
            }


            catch (SqlException q)
            {
                Response.Write(q.Message);
                Label2.Visible = true;
            }

        }


        protected void getID()
        {
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection cc = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
            cc.Open();
            string x1 = TextBox2.Text;
            string reg = $"select * from userReg  ";
            SqlCommand cmd1 = new SqlCommand(reg, cc);
            //Label3.Text = reg;
            //int x = (Int32)cmd1.ExecuteScalar();
            SqlDataReader sdr = cmd1.ExecuteReader();

            while (sdr.Read())
            {

                if (Convert.ToString(sdr[2]) == x1)
                {
                    //Label3.Text = Convert.ToString(sdr[0]);
                    int a = Convert.ToInt32(sdr[0]);
                    string x12 = "insert into cart (userId) values ('" + a+"')";
                    SqlCommand cmd2 = new SqlCommand(x12, cc);
                    //cmd2.ExecuteNonQuery();
                    cc.Close();
                    break;
                    //Label3.Text = Convert.ToString("xxxxxxxxxxxxx");
                }
                else
                {
                    //Label3.Text = "ayah ";
                }


            }
           

            //Response.Redirect("Login.aspx");
        }
    }

}