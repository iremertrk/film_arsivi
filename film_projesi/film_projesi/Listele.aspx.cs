using film_projesi.Classes;
using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace film_projesi
{
    public partial class Listele : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SQLConnectionClass.CheckConnection();

            using (SqlCommand commandLlist = new SqlCommand("SELECT * FROM Film", SQLConnectionClass.connection))
            {
                using (SqlDataReader dr = commandLlist.ExecuteReader())
                {
                    DataList1.DataSource = dr;
                    DataList1.DataBind();
                }
            }
        }
    }
}
