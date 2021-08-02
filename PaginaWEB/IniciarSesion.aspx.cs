using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security; 

namespace PaginaWEB
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MiLogin_Authenticate(object sender, AuthenticateEventArgs e)
        {

            ServiceReferenceUsuariosss.LoginSVCClient svc = new ServiceReferenceUsuariosss.LoginSVCClient();

            bool estado = svc.ValidarUsuario(MiLogin.UserName, MiLogin.Password);

            if(estado)
            {
                e.Authenticated = true;

                FormsAuthentication.RedirectFromLoginPage(MiLogin.UserName, false);
            }
        }
    }
}