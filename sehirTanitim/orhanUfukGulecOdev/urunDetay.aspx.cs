using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace orhanUfukGulecOdev
{
    public partial class urunDetay : System.Web.UI.Page
    {
        string gelen = "";
        dataReader dataReader;
        protected void Page_Load(object sender, EventArgs e)
        {
            gelen = Request.QueryString["ID"];
            uruncek();
            satiscek();
        }



        private void uruncek()
        {
            string sorgu = "select* from kulturUrunleri where id=" + gelen;
            dataReader = new dataReader();
            dataReader.veriCek(sorgu, RepeaterDetay);
        }
        private void satiscek()
        {
            string sorgu = "select du.id,d.ad as dukkan,tel,adres,fiyat,begeniSayisi from dukkanUrun du inner join dukkanlar d on du.dukkanId=d.id inner join kulturUrunleri ku on ku.id=du.urunId where ku.id=" + gelen;
            dataReader = new dataReader();
            dataReader.veriCek(sorgu, RepeaterSatis);
        }

        protected void ButtonBegeni_Click(object sender, EventArgs e)
        {

        }
    }
}