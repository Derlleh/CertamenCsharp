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
    public partial class AgregarEmple : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                EmpleadoBLL nuevo = new EmpleadoBLL();

                nuevo.Rut = int.Parse(txtrut.Text);
                nuevo.Dv = txtdv.Text;
                nuevo.Nombres = txtNombre.Text;
                nuevo.Apellidos = txtApellido.Text;
                nuevo.Empresa = int.Parse(DDLempresa.SelectedValue);

                if (nuevo.Crear())
                {
                    Response.Write("<script>alert('Empleado Agregado Con exito!!!!')</script>");
                }
            }
            catch (Exception ex)
            {

                Response.Write("<script> alert('Error: " + ex.Message + ")</script>");
            }
                
        }
    }
}