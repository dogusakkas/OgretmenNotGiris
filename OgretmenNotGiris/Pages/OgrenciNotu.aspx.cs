using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgretmenNotGiris.Pages
{
    public partial class OgrenciNotu : System.Web.UI.Page
    {
        DataSetTableAdapters.OgrenciNotlarTableAdapter dt = new DataSetTableAdapters.OgrenciNotlarTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

            Repeater_Notlar.DataSource = dt.OgrenciNotu(Session["OgrenciNumara"].ToString());
            Repeater_Notlar.DataBind();
        }
    }
}