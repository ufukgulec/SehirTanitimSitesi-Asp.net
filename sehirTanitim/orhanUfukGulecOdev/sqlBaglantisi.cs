using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Configuration;
namespace orhanUfukGulecOdev
{
    public class sqlBaglantisi
    {
        public SqlConnection baglan()
        {
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["baglantim"].ConnectionString);
            sqlConnection.Open();
            return sqlConnection;
        }
    }
}
//Data Source = DESKTOP; Initial Catalog = webprogramlama; Integrated Security = True