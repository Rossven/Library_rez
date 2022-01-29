using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace rossven_library
{
    public partial class rezervasyonlar : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"data source=ATAKAN;initial catalog=mydatabase;integrated security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void contactbttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }
        protected void anaSayfabttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("anaSayfa.aspx");
        }

        protected void sorgubttn_Click(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(reznogirtxt.Text);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select BOOK, TARIH From dbo.BOOKREZ where REZNO=@A1", baglanti);
            komut.Parameters.AddWithValue("@A1", x);

            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                tarihlbl.Text = Convert.ToString(dr["TARIH"]);
                kitapAdilbl.Text = Convert.ToString(dr["BOOK"]);              
            }
            baglanti.Close();


        }
    }
}