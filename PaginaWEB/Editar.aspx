<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMestra.Master" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="PaginaWEB.Editar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Editar Datos de Empleado por rut</h2>

    <table style="width: 100%;">
        <tr>
            <td>Rut:</td>
            <td>
                <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>DV:</td>
            <td>
                <asp:TextBox ID="txtDV" runat="server"></asp:TextBox>
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
            <td>Apellidos: </td>
            <td>
                <asp:TextBox ID="txtApelli" runat="server" Height="22px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
               </td>
            <td>&nbsp;</td>
        </tr>
           <tr>
            <td>Empresa: </td>
            <td>
                <asp:DropDownList ID="DDLEmpresa" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="RazonSocial" DataValueField="Rut">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmpresasConnectionString %>" SelectCommand="SELECT * FROM [Empresa]"></asp:SqlDataSource>
               </td>
            <td>&nbsp;</td>
        </tr>
           <tr>
            <td>
                <asp:Button ID="btneditar" runat="server" Text="guardar" Width="137px" OnClick="btneditar_Click" />
               </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
           <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
