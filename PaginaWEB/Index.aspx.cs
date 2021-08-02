using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data.Entity; 

namespace PaginaWEB
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            EmpleadoBLL em = new EmpleadoBLL();
            Grilla.DataSource = em.Listar();
            Grilla.DataBind();
        }
    }
}