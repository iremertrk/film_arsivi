using film_projesi.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace film_projesi
{
    public partial class filmigor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["yonetici"]) == true)
            {
                SQLConnectionClass.CheckConnection(); 

                using (SqlCommand filmigor = new SqlCommand("SELECT Film.* FROM Film LEFT JOIN Kategori ON Film.film_tur = Kategori.kategori_ad WHERE Film.film_onay = 0", SQLConnectionClass.connection))
                {
                    using (SqlDataReader dr = filmigor.ExecuteReader())
                    {
                        if (dr.HasRows) // Bu döngü veritabanından eklenmeyen veriyi eklemek için gerekli
                        {
                            DataList1.DataSource = dr;
                            DataList1.DataBind();
                        }
                    }
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}