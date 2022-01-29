using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace rossven_library
{
    public partial class anaSayfa : System.Web.UI.Page
    {

        SqlConnection baglanti = new SqlConnection(@"data source=ATAKAN;initial catalog=mydatabase;integrated security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uyeOlbttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("newAccount.aspx");
        }

        protected void girisYapbttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginPage.aspx");
        }

        protected void anaSayfabttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("anaSayfa.aspx");
        }

        protected void date_SelectionChanged(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut2 = new SqlCommand("Select ADET From dbo.BOOKS where BOOK=@A1", baglanti);
            komut2.Parameters.AddWithValue("@A1", bookList.SelectedValue);
            SqlDataReader dr = komut2.ExecuteReader();
            if(dr.Read()){
                Label2.Text = Convert.ToString(dr["ADET"]);
            }
            baglanti.Close();
        }

        protected void kitapRezBtn_Click(object sender, EventArgs e)
        {
            if(Convert.ToInt32(Label2.Text) <= 0)
            {
                Label3.Text = "Kütüphanemizde seçtiğiniz kitaptan kalmamıştır.";
            }
            else if(Convert.ToInt32(Label2.Text) > 0)
            {
                int adet = Convert.ToInt32(Label2.Text);
                int id;
                int rez = 1;
                baglanti.Open();
                

                SqlCommand komut5 = new SqlCommand("Select ID From dbo.BOOKS where BOOK=@K1", baglanti);
                komut5.Parameters.AddWithValue("@K1", bookList.SelectedValue);
                SqlDataReader dataId = komut5.ExecuteReader();
                if (dataId.Read())
                {
                    id = (int)dataId["ID"];
                    rez = id * 100;
                }

                dataId.Close();

                SqlCommand komut = new SqlCommand("INSERT INTO dbo.BOOKREZ (BOOK,TARIH, REZNO) VALUES (@P1,@P2, @P3)", baglanti); 
                komut.Parameters.AddWithValue("@P1", bookList.SelectedValue);
                komut.Parameters.AddWithValue("@P2", date.SelectedDate.ToShortDateString());
                komut.Parameters.AddWithValue("@P3", rez+11-adet);
                komut.ExecuteNonQuery();

                SqlCommand komut3 = new SqlCommand("UPDATE dbo.BOOKS SET ADET=@B4 WHERE BOOK=@B1", baglanti);
                adet = adet - 1;
                komut3.Parameters.AddWithValue("@B1", bookList.SelectedValue);
                komut3.Parameters.AddWithValue("@B4", adet);
                komut3.ExecuteNonQuery();

                SqlCommand komut4 = new SqlCommand("Select REZNO From dbo.BOOKREZ where REZNO=@K3", baglanti);
                komut4.Parameters.AddWithValue("@K3", rez + 12 - adet);
                SqlDataReader dataRead = komut4.ExecuteReader();
                if(dataRead.Read()){
                    Label3.Text = "Rezervasyonunuz Yapılmıştır. Rezervasyon numaranız: " + Convert.ToString(dataRead["REZNO"]);
                }

                dataRead.Close();
                baglanti.Close();

            }

            baglanti.Close();
        }

        protected void rezbttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("rezervasyonlar.aspx");
        }

        protected void contactbttn_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }
    }
}