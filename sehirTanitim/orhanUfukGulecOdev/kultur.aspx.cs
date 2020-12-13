using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace orhanUfukGulecOdev
{
    public partial class kultur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            veri();
        }

        private void veri()
        {
            string komut = "select kk.id, kk.ad, aciklama, resimYolu, k.ad as kultur from kulturUrunKategori kk inner join kultur k on kk.kulturId=k.id";
            dataReader reader = new dataReader();
            reader.veriCek(komut, RepeaterKategori);
        }
    }
}