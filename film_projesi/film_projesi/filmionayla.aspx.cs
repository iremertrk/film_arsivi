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
    public partial class filmionayla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32(Request.QueryString["id"]);
            SqlCommand guncelle = new SqlCommand("Update film set film_onay=@onay Where film_id=@film_id", SQLConnectionClass.connection);
            SQLConnectionClass.CheckConnection();
            guncelle.Parameters.AddWithValue("@onay", true);
            guncelle.Parameters.AddWithValue("@film_id", selectedID);
            guncelle.ExecuteNonQuery();
            Response.Redirect("filmigor.aspx");

        }
    }
}