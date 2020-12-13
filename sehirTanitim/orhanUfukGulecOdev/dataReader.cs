using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace orhanUfukGulecOdev
{
    public class dataReader
    {
        public void veriCek(string sorgu, Repeater repeater)
        {
            sqlBaglantisi sql = new sqlBaglantisi();
            SqlCommand komut = new SqlCommand(sorgu, sql.baglan());
            SqlDataReader reader = komut.ExecuteReader();
            repeater.DataSource = reader;
            bind(repeater);
        }
        public void bind(Repeater repeater)
        {
            repeater.DataBind();
        }
    }
}