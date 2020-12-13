using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace orhanUfukGulecOdev
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            slayt();
            ilceler();
            haberler();
            etkinlik();
        }
        private void etkinlik()
        {
            string komut = "select * from etkinlikler";
            dataReader reader = new dataReader();
            reader.veriCek(komut, RepeaterEtkinlik);
        }

        private void haberler()
        {
            string komut = "select * from haberler";
            dataReader reader = new dataReader();
            reader.veriCek(komut, RepeaterHaber);
        }

        private void slayt()
        {
            string komut = "select * from slayt";
            dataReader reader = new dataReader();
            reader.veriCek(komut, RepeaterSlayt);
        }

        private void ilceler()
        {
            string komut = "select * from ilceler";
            dataReader reader = new dataReader();
            reader.veriCek(komut, RepeaterIlceler);
            reader.veriCek(komut, RepeaterIlceBilgi);
        }
    }
}