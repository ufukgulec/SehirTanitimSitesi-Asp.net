using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace orhanUfukGulecOdev
{
    public partial class urunler : System.Web.UI.Page
    {
        string gelen = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            gelen = Request.QueryString["Kategori"];
            if (gelen == null)
            {
                urun();
            }
            else
            {
                detay();
            }

        }

        private void detay()
        {
            string komut = "select ku.id,ku.ad,ku.aciklama,ku.resimYolu, kategoriId, kuk.ad as ktgr from kulturUrunleri ku inner join kulturUrunKategori kuk on ku.kategoriId=kuk.id where kategoriId=" + gelen;
            dataReader reader = new dataReader();
            reader.veriCek(komut, RepeaterUrun);
        }

        private void urun()
        {
            string komut = "select ku.id,ku.ad,ku.aciklama,ku.resimYolu, kategoriId, kuk.ad as ktgr from kulturUrunleri ku inner join kulturUrunKategori kuk on ku.kategoriId=kuk.id";
            dataReader reader = new dataReader();
            reader.veriCek(komut, RepeaterUrun);
        }
    }
}