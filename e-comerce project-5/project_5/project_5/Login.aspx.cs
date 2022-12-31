using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using Microsoft.AspNetCore.Http;

namespace project_5
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

             string email=  Request.QueryString["email"];

            //string email = "haya123@gmail.com";
            //Session["email"] = email;


            SqlConnection cc = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
            cc.Open();

            //insert into cart (cartId) values ('luijuin1234567@gmail.com');            
           // string qry = "insert into cart (cartId) values ('" + email + "') ";
           // SqlCommand cmd = new SqlCommand(qry, cc);
           // cmd.ExecuteNonQuery();


            cc.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
            string email = TextBox1.Text;
            string pass = TextBox2.Text;
            Session["email"] = email;
            //string email1 = Request.QueryString["email"];
            int id = 0;
            SqlConnection cc = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
            cc.Open();
            // string c="select * from "
           ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //string cre = "insert into cart (userId) values ('" + 4 + "') ";
            //SqlCommand createCart = new SqlCommand(cre, cc);
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
           string qry = "select * from userReg ";
            // string qry = "select * from userReg  ";
            SqlCommand cmd = new SqlCommand(qry, cc);
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                string Email = Convert.ToString(sdr[2]);
                string Pass = Convert.ToString(sdr[4]);
                int x = Convert.ToInt32(sdr[5]);

                if (Convert.ToString(sdr[2]) == TextBox1.Text)
                {
                    id = Convert.ToInt32(sdr[0]);
                    
                    // createCart.ExecuteNonQuery();
                   // Label6.Text = Convert.ToString(id);
                }


                if (x == 1 && TextBox1.Text == "yasmeen@gmail.com" && TextBox2.Text == "123123")
                {
                    Response.Redirect("admin_categories-table.aspx?x=" + x);
                }

                else if (x == 2 && Email == TextBox1.Text && TextBox2.Text == Pass)
                {
                    Response.Write("<script>alert('Welcome in our website')</script>");

                    string mess1 =(string) Session["message"];
                    string pid = (string)Session["pird"];
                    //if (mess1 != string.Empty)
                    //{
                    //    Response.Redirect("Single_Product.aspx?id=" + pid);
                    //}
                    //else
                    //{

                        Response.Redirect("category_page.aspx?x=" + x + "&id=" + sdr[0]);
                   // }
                }
                else if (Email != TextBox1.Text && x == 2)
                {

                    Visible = true;
                    Label5.Text = "your Password or Email is Wrong";
                    //Response.Write("<script>alert('You dont have account , please Signup')</script>");
                    //break;
                    //Response.Redirect("Register.aspx");
                }
                //else if (x != 2 || Email != TextBox1.Text || Pass != TextBox2.Text)
                //{
                //    Label4.Visible = true;

                //    // Label4.Text = "email or Password Is not correct";
                //}
            }

            //cmd.ExecuteNonQuery();
            cc.Close();


            //}
            //catch (Exception ex)
            //{
            //    Response.Write(ex.Message);
            //}

          
        }
    }
}