using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace orhanUfukGulecOdev
{
    public partial class sikayet : System.Web.UI.Page
    {
        sqlBaglantisi sql = new sqlBaglantisi();
        int GelenkullaniciID;
        protected void Page_Load(object sender, EventArgs e)
        {
            konu();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            sikayetMetod();
        }
        private void sikayetMetod()
        {
            if (kullanıcıKontrol())
            {
                sikayetEkle();
            }
            else
            {
                kullaniciEkle();
                kullanıcıKontrol();
                //sikayetEkle();
                sikayetEkle();
            }
        }

        private void kullaniciEkle()
        {
            sql = new sqlBaglantisi();
            SqlCommand command = new SqlCommand("insert into kullanicilar (ad,soyad,tc) values(@ad,@soyad,@Tc)", sql.baglan());
            command.Parameters.AddWithValue("@ad", TextBoxAd.Text);
            command.Parameters.AddWithValue("@Tc", TextBoxTc.Text);
            command.Parameters.AddWithValue("@soyad", TextBoxSoyad.Text);
            command.ExecuteNonQuery();
        }

        private void sikayetEkle()
        {
            sql = new sqlBaglantisi();
            SqlCommand command = new SqlCommand("insert into sikayetler (konuID,kullaniciID,icerik) values(@konuID,@kullaniciID,@icerik)", sql.baglan());
            command.Parameters.AddWithValue("@konuID", DropDownListKonu.SelectedItem.Value);
            command.Parameters.AddWithValue("@kullaniciID", GelenkullaniciID);
            command.Parameters.AddWithValue("@icerik", TextBoxMesaj.Text);
            command.ExecuteNonQuery();
            Response.Write("Başarılı");
        }

        private bool kullanıcıKontrol()
        {
            sql = new sqlBaglantisi();
            SqlCommand command = new SqlCommand("select * from kullanicilar where tc =@tc", sql.baglan());
            command.Parameters.AddWithValue("@tc", TextBoxTc.Text);
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                GelenkullaniciID = reader.GetInt32(0);
                return true;
            }
            else
            {
                return false;
            }
        }

        private void konu()
        {
            string sorgu = "select * from sikayetKonusu";
            sql = new sqlBaglantisi();
            SqlDataAdapter sqlData = new SqlDataAdapter(sorgu, sql.baglan());
            DataTable dt = new DataTable();
            sqlData.Fill(dt);
            DropDownListKonu.DataSource = dt;
            DropDownListKonu.DataTextField = "ad";
            DropDownListKonu.DataValueField = "id";
            DropDownListKonu.DataBind();
        }


    }
}