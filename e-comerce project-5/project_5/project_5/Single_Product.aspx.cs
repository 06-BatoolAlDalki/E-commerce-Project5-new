using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace project_5
{
    public partial class Single_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

                // int IU = 4;
                string pi = Request.QueryString["id"];
                int IP = Convert.ToInt32(pi);

                SqlConnection connect = new SqlConnection("data source =DESKTOP-V50HPE1\\SQLEXPRESS; database =e-commerce ; integrated security=SSPI");
                connect.Open();
                SqlCommand comand = new SqlCommand("insert into comments (productId,comment) values ('" + IP + "','" + add_comment.Text + "')", connect);
                comand.ExecuteNonQuery();
                connect.Close();
                add_comment.Text = "";



                SqlConnection connect1 = new SqlConnection("data source =DESKTOP-V50HPE1\\SQLEXPRESS; database =e-commerce ; integrated security=SSPI");
                connect1.Open();
                string join = "select * from comments inner join product on product.id=comments.productId;";
                SqlCommand comand1 = new SqlCommand(join, connect1);

                SqlDataReader reada = comand1.ExecuteReader();
                //string image_URL = "~/Files/" + reada[2];
                string table = "<table class='commented' style='margin-top:1%'><th>Comments</th>";

                while (reada.Read())
                {
                    //proN.Text = (string)reada[4];
                    if (((string)reada[2]).Length > 0)
                    {
                        //string image_URL = (string)reada[2];
                        table += $"<tr><td style='color:white ;padding-top:40%'>{reada[2]}</td></tr><tr><td><hr/></td><td><hr/></td></tr>";

                  //  Session["quantity1"] = 5;
                    add_comment.Text = "";
                    }



                }
                table += "</table>";
                Label2.Text = table;
                connect1.Close();
            
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////









            string str1 = Request.QueryString["id"];
            string x = Convert.ToString( Session["email"]);

            if(x==string.Empty)
            {
                Session["message"] = "You should register before shopping";
                Session["pird"] = str1;
              Response.Redirect("Register.aspx");
              
            }
            else
            {
                Session["message"] = "";
            }




           // string x12 = Session[""];

           //string x1= (x);
           // Label2.Text =x.ToLower();

            try
            {
                string str = Request.QueryString["id"];
                int x12 = Convert.ToInt32(str);
                SqlConnection connection = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=e-commerce; integrated security=SSPI");

                //SqlCommand comand = new SqlCommand("select * from name_and_password", cc);
                connection.Open();
                string q = "select * from product where id='"+ x12+"'";

                    
                SqlCommand com = new SqlCommand(q, connection);
                SqlDataReader sdr = com.ExecuteReader();
                if (sdr.Read())
                {
                    Label1.Text = (string)sdr[1];
                    product_img.ImageUrl = "~/img/" + (string)sdr[4];
                    description.Text = (string)sdr[2];
                    price.Text =  sdr[3] + " JD";
                    //com.ExecuteNonQuery();

                }
                connection.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }

        protected void minus_Click(object sender, EventArgs e)
        {
            int c = Convert.ToInt32(quan.Text);
            if (c == 1) { quan.Text = "1"; }
            else if (c > 1)
            {
                c--;
                quan.Text = c.ToString();
            }

        }

        protected void plus_Click(object sender, EventArgs e)
        {
            int c = Convert.ToInt32(quan.Text);
            c++;
            quan.Text = c.ToString();

        }

        protected void post_Click(object sender, EventArgs e)
        {


            string pi = Request.QueryString["id"];
            int IP = Convert.ToInt32(pi);

        }

       
        protected void addcommwnrt_Click(object sender, EventArgs e)
        {
            string str = Request.QueryString["id"];
            int x12 = Convert.ToInt32(str);
            
            string pn = Label1.Text;
            //string pID = Request.QueryString["PID"];
            //int iid = Convert.ToInt32(pID);
            int iid = 3;
            //string uID = Request.QueryString["UID"];
            //int iiu = Convert.ToInt32(pID);
            

            /////////////////////////////////////////////////////////////////////////////////////////////////////
            //Response.Redirect("Comments.aspx?productId="+ x12);
           // Response.Redirect("Comments.aspx?userId=" + uID + "&productId=" + iid);
        }

        protected void addtocart_Click1(object sender, EventArgs e)
        {
            try
            {




                string email = (string)Session["email"];

                // Label4.Text =Convert.ToString( email.Length);

                ////if ( email ==string.Empty)
                ////{
                ////    Response.Redirect("Register.aspx");
                ////}
                ////else
                ////{


              

                string str = Request.QueryString["id"];
                    int x12 = Convert.ToInt32(str);
                    string quantity = quan.Text;
                    int quantity1 = Convert.ToInt32(quantity);




              
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");

                    cc.Open();


                //string query2 = "insert into cart (cartId, productId ,quantity,total,userId) values ( '"+email+"','" + x12 + "' ,'" + quantity1 + "' ,'" + 200 + "','" + 2 + "')";

                 string query2 = "insert into cart (cartId, productId ,quantity,total) values ( '" + email + "','" + x12 + "' ,'" + quantity1 + "' ,200)";
                // string query2 = "UPDATE cart SET productId = '" + x12 + "', total = 200 where cartId = '" + email + "'";
                //Session["quantity1"] = quantity1;
                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                SqlCommand cmd2 = new SqlCommand(query2, cc);
                    //SqlDataAdapter da = new SqlDataAdapter(cmd2);
                    cmd2.ExecuteNonQuery();
               
                    cc.Close();

                    //    string query = "select * from cart";

                    //    SqlCommand cmd = new SqlCommand(query, cc);
                    //    SqlDataReader sdr = cmd.ExecuteReader();
                    //    cmd.ExecuteNonQuery();
                    //    cc.Close();
                    //    bool flag = false;
                    //    while (sdr.Read())
                    //    {
                    //        if ((Int32)sdr[2] == x12)
                    //        {
                    //            flag = false;
                    //            break;
                    //        }
                    //        else
                    //        {
                    //            flag = true;
                    //        }
                    //    }

                    //    if (flag == false)
                    //    {
                    //        SqlConnection cc1 = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");

                    //        cc1.Open();
                    //        int Q = quantity1 + (int)sdr[4];
                    //        string query1 = "  Update cart set quantity= '" + Q + "'   where id = '" + x12 + "'";
                    //        SqlCommand cmd1 = new SqlCommand(query1, cc1);
                    //        cmd1.ExecuteNonQuery();
                    //        cc1.Close();
                    //        // string query1 = "update into cart (productId ,quantity,total,userId) values ('" + x12 + "' ,'" + quantity1 + "' ,'" + 200 + "','" + 2 + "')";
                    //    }
                    //    else
                    //    {
                    //        SqlConnection cc2 = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = e-commerce ; integrated security=SSPI");

                    //        cc2.Open();
                    //        string query2 = "insert into cart (productId ,quantity,total,userId) values ('" + x12 + "' ,'" + quantity1 + "' ,'" + 200 + "','" + 2 + "')";
                    //        SqlCommand cmd2 = new SqlCommand(query2, cc2);
                    //        cmd2.ExecuteNonQuery();
                    //        cc2.Close();
                    //    }





                    Label3.Visible = true;


                    //Response.Redirect("Shopping_Bag_card.aspx?id=" + x12);
                }
                
            catch (SqlException q)
            {
                Response.Write(q.Message);
            }
        

        }
    }
}