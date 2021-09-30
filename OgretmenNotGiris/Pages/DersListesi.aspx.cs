using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class DersListesi : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_DerslerTableAdapter dt_dersler = new DataSetTableAdapters.Tbl_DerslerTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater_Dersler.DataSource = dt_dersler.DersListesi();
            Repeater_Dersler.DataBind();
        }
    }
}