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
    public partial class filmisil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32(Request.QueryString["id"]);
            SqlCommand silme = new SqlCommand("Delete From Film where film_id=@fid", SQLConnectionClass.connection);
            SQLConnectionClass.CheckConnection();
            silme.Parameters.AddWithValue("@fid", selectedID);
            silme.ExecuteNonQuery();
            Response.Redirect("filmigor.aspx");

        }
    }
}