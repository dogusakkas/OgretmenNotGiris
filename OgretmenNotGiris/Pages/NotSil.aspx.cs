using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class NotSil : System.Web.UI.Page
    {
        DataSetTableAdapters.OgrenciNotlarTableAdapter dt_sil = new DataSetTableAdapters.OgrenciNotlarTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["NotID"].ToString());
            dt_sil.NotSil(id);
            Response.Redirect("NotListesi.aspx");
        }
    }
}