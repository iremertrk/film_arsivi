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
    public partial class Ekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                using (SqlConnection conn = new SqlConnection(SQLConnectionClass.connection.ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM kategori", conn))
                    {
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            DropDownList1.DataTextField = "kategori_ad";
                            DropDownList1.DataSource = dr;
                            DropDownList1.DataBind();
                        }
                    }
                } // Burada bağlantı kapanır.
            }
            else
            {
                lblEklendi.Visible = false;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            SQLConnectionClass.CheckConnection();
            SqlCommand filmEkle = new SqlCommand("INSERT INTO film (film_tur, film_ad, film_yonetmen, film_yil, film_foto, film_aciklama) " +
                                                 "VALUES (@kategori, @filmAdi, @yonetmen, @yil, @foto, @aciklama)", SQLConnectionClass.connection);
            filmEkle.Parameters.AddWithValue("@kategori", DropDownList1.SelectedValue);
            filmEkle.Parameters.AddWithValue("@filmAdi", txtFilmAdi.Text);
            filmEkle.Parameters.AddWithValue("@yonetmen", txtYonetmen.Text);
            filmEkle.Parameters.AddWithValue("@yil", txtYil.Text);
            filmEkle.Parameters.AddWithValue("@foto", txtLink.Text);
            filmEkle.Parameters.AddWithValue("@aciklama", txtAciklama.Text);
            filmEkle.ExecuteNonQuery();

            lblEklendi.Visible = true;
        }

        protected void btnFilmleriGor_Click(object sender, EventArgs e)
        {
            Response.Redirect("filmigor.aspx");
        }

    }
}