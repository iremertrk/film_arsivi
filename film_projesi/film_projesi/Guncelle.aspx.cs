using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using film_projesi.Classes;

namespace film_projesi
{
    public partial class Guncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KategorileriDoldur();
                FilmBilgileriniGetir();
            }
            else
            {
                lblGuncellendi.Visible = false;
            }
        }

        private void KategorileriDoldur()
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
            }

            DropDownList1.Items.Insert(0, new ListItem("Seçiniz", "0"));
        }

        private void FilmBilgileriniGetir()
        {
            string filmId = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(filmId))
            {
                using (SqlConnection conn = new SqlConnection(SQLConnectionClass.connection.ConnectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM film WHERE film_id = @id", conn))
                    {
                        cmd.Parameters.AddWithValue("@id", filmId);
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.Read())
                            {
                                txtFilmAdi.Text = dr["film_ad"].ToString();
                                txtYonetmen.Text = dr["film_yonetmen"].ToString();
                                txtYil.Text = dr["film_yil"].ToString();
                                txtLink.Text = dr["film_foto"].ToString();
                                txtAciklama.Text = dr["film_aciklama"].ToString();

                                string kategoriId = dr["film_tur"].ToString();
                                if (DropDownList1.Items.FindByValue(kategoriId) != null)
                                {
                                    DropDownList1.SelectedValue = kategoriId;
                                }
                            }
                        }
                    }
                }
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string filmId = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(filmId))
            {
                SQLConnectionClass.CheckConnection();
                using (SqlCommand filmGuncelle = new SqlCommand("UPDATE film SET film_tur = @kategori, film_ad = @filmAdi, film_yonetmen = @yonetmen, film_yil = @yil, film_foto = @foto, film_aciklama = @aciklama WHERE film_id = @id", SQLConnectionClass.connection))
                {
                    filmGuncelle.Parameters.AddWithValue("@kategori", DropDownList1.SelectedValue);
                    filmGuncelle.Parameters.AddWithValue("@filmAdi", txtFilmAdi.Text);
                    filmGuncelle.Parameters.AddWithValue("@yonetmen", txtYonetmen.Text);
                    filmGuncelle.Parameters.AddWithValue("@yil", txtYil.Text);
                    filmGuncelle.Parameters.AddWithValue("@foto", txtLink.Text);
                    filmGuncelle.Parameters.AddWithValue("@aciklama", txtAciklama.Text);
                    filmGuncelle.Parameters.AddWithValue("@id", filmId);

                    filmGuncelle.ExecuteNonQuery();

                    lblGuncellendi.Visible = true;
                }
            }
        }

        protected void btnFilmleriGor_Click(object sender, EventArgs e)
        {
            Response.Redirect("filmigor.aspx");
        }
    }
}
