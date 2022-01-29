﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace rossven_library
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"data source=ATAKAN;initial catalog=mydatabase;integrated security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void girisbttn_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From ADMIN where KULLANICI=@P1 AND SIFRE=@P2", baglanti);
            komut.Parameters.AddWithValue("@P1", kullaniciAditxt.Text);
            komut.Parameters.AddWithValue("@P2", sifretxt.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("veriler.aspx");
            }
            else
            {
                lblmesaj.Text = "Hatalı Bilgi Girdiniz.";
            }
            baglanti.Close();

        }
    }
}