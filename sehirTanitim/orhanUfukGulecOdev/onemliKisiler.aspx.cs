using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace orhanUfukGulecOdev
{
    public partial class onemliKisiler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            kisiler();
        }

        private void kisiler()
        {
            string komut = "select * from önemliKisiler";
            dataReader reader = new dataReader();
            reader.veriCek(komut, RepeaterKisiler);
        }
    }
}