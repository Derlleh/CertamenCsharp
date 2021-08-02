<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMestra.Master" AutoEventWireup="true" CodeBehind="AgregarEmple.aspx.cs" Inherits="PaginaWEB.AgregarEmple" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h2> Agregar Nuevo Empleado </h2>


    <table style="width: 100%;">
        <tr>
            <td>Rut:</td>
            <td>
                <asp:TextBox ID="txtrut" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Dv:</td>
            <td>
                <asp:TextBox ID="txtdv" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Nombre:</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td>Apellido:</td>
            <td>
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
              </td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td>Empresa: </td>
            <td>
                <asp:DropDownList ID="DDLempresa" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="RazonSocial" DataValueField="Rut">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmpresasConnectionString %>" SelectCommand="SELECT * FROM [Empresa]"></asp:SqlDataSource>
              </td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
          <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Width="216px" OnClick="btnGuardar_Click" />
              </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
