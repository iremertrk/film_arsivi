using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using film_projesi.Classes;

namespace film_projesi
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblKayit.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand ekle = new SqlCommand("insert into Kullanici (kullanici_adi,kullanici_soyadi, kullanici_eposta,kullanici_sifre)" +
                                   " values(@kullanici_adi,@kullanici_soyadi, @kullanici_eposta,@kullanici_sifre)", SQLConnectionClass.connection);
            SQLConnectionClass.CheckConnection();

            ekle.Parameters.AddWithValue("@kullanici_adi", txtisim.Text);
            ekle.Parameters.AddWithValue("@kullanici_soyadi", txtsoyisim.Text);
            ekle.Parameters.AddWithValue("@kullanici_eposta", txteposta.Text);
            ekle.Parameters.AddWithValue("@kullanici_sifre", txtsifre.Text);
            ekle.ExecuteNonQuery();


            lblKayit.Visible = true;
        }
    }
}