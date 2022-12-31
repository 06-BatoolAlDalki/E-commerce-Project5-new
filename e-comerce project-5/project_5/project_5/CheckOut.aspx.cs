using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace project_5
{
    public partial class CheckOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string sub = Request.QueryString["total"];
            int sss = Convert.ToInt32(sub);
            subtotal.Text = sub+" JD";
            string[] del=delivery.Text.Split(' ');
            int de = Convert.ToInt32(del[0]);
            int tot = sss + de;
            total.Text = tot + " JD";


            /////////////////////////////////////////////////////////////////////////////////////////////
            ///
            if (!IsPostBack)
            {


                try
                {
                    SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");
                    string email = (string)Session["email"];
                    string query = "SELECT  product.pName ,product.pImage ,product.description ,product.price ,cart.quantity ,cart.total , cart.deleter , product.id \r\nFROM product\r\nINNER JOIN cart ON product.id =cart.productId and cartId='" + email + "';";
                    SqlCommand cmd = new SqlCommand(query, cc);
                    cc.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();

                    string table = "<table class='table table-striped''> <tr> <th>Product Name</th><th>Image</th><th>Price</th><th>Quantity</th><th>total</th></tr>";
                    double x = 0;
                    double sum = 0;
                    int count = 1;
                    while (sdr.Read())
                    {
                        int deletenumber = Convert.ToInt32(sdr[5]);

                        string price = Convert.ToString(sdr[3]);
                        string quantity = Convert.ToString(sdr[4]);

                        double price1 = Convert.ToDouble(price);
                        double quantity1 = Convert.ToDouble(quantity);

                        //if ((string)sdr[1] == product_name)
                        //{
                        x = price1 * quantity1;
                        table += $"<tr><td>{sdr[0]}</td><td><img src =img\\{sdr[1]}  width=80px; height=80px /></td> <td> {sdr[3]} JD</td><td>{sdr[4]}</td><td>{x}</td></tr>";
                        sum += x;

                        Session["productId" + count] = sdr[7];
                        Session["total" + count] = x;
                        
                        count++;
                        //}
                    }
                    Session["countRow"] = count;
                    table += "</table>";
                    Label1.Text = table;


                    //Label2.Text = Convert.ToString( Session["countRow"]);


                    double y = 0;
                    if (sum >= 50)
                    {

                         y = 20;
                        discount.Text = Convert.ToString(y+ " %");
                    }
                    else
                    {
                       y= 10;
                        discount.Text = Convert.ToString(10 + " %");
                    }

                    double discount1 = Convert.ToDouble(y);

                    string x12 = delivery.Text;
                    string[] del12 = x12.Split(' ');
                    double converDelivery = Convert.ToDouble(del12[0]);
                    double total1d = sum -   (sum*(discount1 / 100));
                    double total1 = total1d + converDelivery ;
                    total.Text = Convert.ToString(total1 +" JD");
                     subtotal.Text = Convert.ToString(sum) + " JD";

                   
                }
                catch (SqlException q)
                {
                    Response.Write(q.Message);
                }



            }


        }
        protected void checkout_Click(object sender, EventArgs e)
       {

            string email = (string)Session["email"];
            int count = Convert.ToInt32( Session["countRow"]);
           

            SqlConnection connection = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
            //SqlCommand cmd = new SqlCommand(", connection);
            connection.Open();

            for(int i=1;i < count;i++)
            {
                double total = Convert.ToDouble(Session["total" +i]);
                int pid =Convert.ToInt32( Session["productId" + i]);
               // Label2.Text = Convert.ToString(email);
                string query1 = "insert into order1 (productId ,userEmail ,total) values ('"+pid+"', '"+email+"', '"+total+"')  ";
                SqlCommand cmd1 = new SqlCommand(query1, connection);
                cmd1.ExecuteNonQuery();
            }

            string query = "delete from cart where cartId='"+email+"';";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.ExecuteNonQuery();
            connection.Close();




            Response.Redirect("ayahfinsh.aspx");
            //    SqlConnection connection = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");
            //    SqlCommand cmd = new SqlCommand("select * from cart  where cartId='216@gmail.com'", connection);
            //    connection.Open();
            //    SqlDataReader rd = cmd.ExecuteReader();

            //    while (rd.Read())
            //    {

            //    }

        }
        }
    }

