using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace orhanUfukGulecOdev
{
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            yetkililer();
            
        }

        private void yetkililer()
        {
            string komut = "select * from yetkililer";
            dataReader reader = new dataReader();
            reader.veriCek(komut, RepeaterYetkililer);
        }
    }
}