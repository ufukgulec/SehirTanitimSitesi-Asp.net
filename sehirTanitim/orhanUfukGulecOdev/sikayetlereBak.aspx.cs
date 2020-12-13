using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace orhanUfukGulecOdev
{
    public partial class sikayetlereBak : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sorgu = "select s.id as sid,konuID,kullaniciID, icerik, tarih,k.id as kid,k.ad as kad, soyad,tc,sk.ad as skad from sikayetler s inner join kullanicilar k on s.kullaniciID=k.id inner join sikayetKonusu sk on s.konuID=sk.id";
            dataReader dataReader = new dataReader();
            dataReader.veriCek(sorgu, RepeaterSikayetler);
        }
    }
}