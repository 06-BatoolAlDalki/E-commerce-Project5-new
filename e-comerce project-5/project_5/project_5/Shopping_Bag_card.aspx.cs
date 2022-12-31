using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace project_5
{
    public partial class Shopping_Bag_card : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


          
            if (!IsPostBack)
            {


                //try
                //{
                //    string product_name = Request.QueryString["id"];
                   
                    SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");
                    string email = (string)Session["email"];
                    string query = "SELECT  product.pName ,product.pImage ,product.description ,product.price ,cart.quantity ,cart.total , cart.deleter  \r\nFROM product\r\nINNER JOIN cart ON product.id =cart.productId and cartId='" + email+"';";
                    SqlCommand cmd = new SqlCommand(query, cc);
                    cc.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                   
                    string table = "<table class='table table-striped''> <tr> <th>Product Name</th><th>Image</th><th>Price</th><th>Quantity</th><th>total</th><th></th></tr>";
                    double x = 0;
                    double sum = 0;
                    while (sdr.Read())
                    {
                        int deletenumber = Convert.ToInt32(sdr[5]);

                        string price = Convert.ToString(sdr[3]);
                        string quantity = Convert.ToString(sdr[4]);
                    
                        double price1 = Convert.ToDouble(price);
                        double quantity1 = Convert.ToDouble(quantity);

                        //if ((string)sdr[1] == product_name)
                        //{
                             x = price1* quantity1;
                    Session["quantity1"] = sdr[4];

                    int num = Convert.ToInt32(Session["quantity1"]);
                    string qty1 = Convert.ToString(num); ///4
                    Session["deleterID"] = sdr[6];
                    table += $"<tr><td>{sdr[0]}</td><td><img src =img\\{sdr[1]}  width=80px; height=80px /></td> <td> {sdr[3]} JD</td><td><a href='x.aspx?deleter={sdr[6]}&quanyity={sdr[4]}' style='text-decoration:none; font-size:30px'> - </a> {qty1} <a href='y.aspx?deleter={sdr[6]}&quanyity={sdr[4]}' style='text-decoration:none; font-size:30px'> + </a> </td><td>{x}</td><td><a href='del.aspx?deleter={sdr[6]}' style='text-decoration:none; font-size:20px'>Remove</a></td></tr>";

                  
                    sum += x;
                        //}
                    }
                    table += "</table>";
                    Label1.Text = table;
                    Label2.Text = Convert.ToString(sum) +"JD";


                   
                        // event.target will be the input element.
                      
        

//}
//                catch (SqlException q)
//                {
//                    Response.Write(q.Message);
//                }



            }
        }




        protected void FancyBtn_Click(object sender, EventArgs e)
        {
            Label2.Text = "Hello World";
           
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try { 
            string product_name = Request.QueryString["id"];

            SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");
            string query = "SELECT  product.pName ,product.pImage ,product.description ,product.price ,cart.quantity ,cart.total \r\nFROM product\r\nINNER JOIN cart ON product.id =cart.productId;";
            SqlCommand cmd = new SqlCommand(query, cc);
            cc.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

           double sum = 0;
            while (sdr.Read())
            {

                    //if ((string)sdr[1] == product_name)
                    //{
                    string price = Convert.ToString(sdr[3]);
                    string quantity = Convert.ToString(sdr[4]);

                    double price1 = Convert.ToDouble(price);
                  //  double quantity1 = Convert.ToDouble(quantity);

                    //if ((string)sdr[1] == product_name)
                    //{
                  // double x = price1 * quantity1;



                    
                //  sum += x;
                //}
            }
          
    Response.Redirect("CheckOut.aspx?total=" + sum);




            }
            catch (SqlException qq)
                {
                    Response.Write(qq.Message);
                }

        }

        protected void rm(int delete , object sender, EventArgs e)
        {

            try
            {
                //Label3.Text = "qqqqqqqqqqqqqqqqqqqqqqq";
                int deleter1 = delete;
               // string product_name = Request.QueryString["id"];

                SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");
                string query = "delete from cart where deleter = '"+deleter1+"';";
                SqlCommand cmd = new SqlCommand(query, cc);
                cc.Open();


            }
            catch (SqlException qq)
            {
                Response.Write(qq.Message);
            }





        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}
