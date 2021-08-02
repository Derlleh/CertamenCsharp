<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMestra.Master" AutoEventWireup="true" CodeBehind="Eliminar.aspx.cs" Inherits="PaginaWEB.Eliminar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h2>Eliminar Empleado Por Rut</h2>

    <table style="width: 100%;">
        <tr>
            <td>Ingresar Rut:</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtRUT" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        r>
            <td>
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="115px" OnClick="btnEliminar_Click" />
        </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
