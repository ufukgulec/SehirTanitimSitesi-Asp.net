using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace orhanUfukGulecOdev
{
    public partial class bilgiler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bilgi();
            sozler();
        }

        private void sozler()
        {
            string komut = "select * from sozler";
            dataReader reader = new dataReader();
            reader.veriCek(komut, RepeaterSozler);
            reader.veriCek(komut, RepeaterDot);
        }

        private void bilgi()
        {
            string komut = "select * from genelBilgi";
            dataReader reader = new dataReader();
            reader.veriCek(komut, RepeaterBilgi);
        }
    }
}