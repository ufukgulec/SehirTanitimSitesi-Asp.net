using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace orhanUfukGulecOdev
{
    public partial class turizm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            kategori();
            mekan();
        }

        private void kategori()
        {
            string komut = "select * from turizmMekanKategori";
            dataReader dr = new dataReader();
            dr.veriCek(komut, RepeaterKategori);
        }

        private void mekan()
        {
            string komut = "select tm.ad,aciklama,resimYol, tk.ad as kategoriAd from turizmMekanlari tm inner join turizmMekanKategori tk on tm.kategoriId=tk.id";
            dataReader dr = new dataReader();
            dr.veriCek(komut, RepeaterMekanlar);
        }
    }
}