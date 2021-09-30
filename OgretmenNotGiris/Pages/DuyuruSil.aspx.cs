using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class DuyuruSil : System.Web.UI.Page
    {
        DataSetTableAdapters.Tbl_DuyurularTableAdapter dt_duyuru = new DataSetTableAdapters.Tbl_DuyurularTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["DuyuruID"].ToString());
            dt_duyuru.DuyuruSil(id);
            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}