using film_projesi.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace film_projesi
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand commandlogin = new SqlCommand("Select * From Kullanici Where kullanici_eposta=@kullanici_eposta AND " +
                                                        "kullanici_sifre=@kullanici_sifre", SQLConnectionClass.connection);
            SQLConnectionClass.CheckConnection();
            commandlogin.Parameters.AddWithValue("@kullanici_eposta", txteposta.Text);
            commandlogin.Parameters.AddWithValue("@kullanici_sifre", txtsifre.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(commandlogin);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
                if (txteposta.Text == "deniz.sahin@example.com" || txteposta.Text == "iremerturk@gmail.com")
                {
                    Session["yonetici"] = true;
                    Response.Redirect("filmigor.aspx");
                }
                else
                {
                    Session["kullanici"] = true;
                    Response.Redirect("Listele.aspx");
                }
                
                else
                {
                    Response.Write("Kullanıcı adı veya şifre hatalı");
                }

        }
    }
}