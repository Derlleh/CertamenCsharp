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
    public partial class ListaEspecial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            EmpleadoBLL em = new EmpleadoBLL();

            grilla.DataSource = em.ListarNombresLargos();
            grilla.DataBind();

        }
    }
}