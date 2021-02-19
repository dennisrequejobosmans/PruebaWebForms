<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonasRegistradas.aspx.cs" Inherits="WebFormsLuckia.PersonasRegistradas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        Personas Registradas
    </header>
    <div>
        <asp:ListView ID="ListView1" runat="server" SelectMethod="Get_Personas" ItemType="WebFormsLuckia.Personas">
<ItemTemplate>
<ul>
<li>Nombre: <%#:Item.Nombre %></li>
<li>Apellidos: <%#:Item.Apellidos %></li>
<li>Mail: <%#:Item.Mail %></li>
<li>Dirección: <%#:Item.Direccion %></li>
</ul>
<br />
</ItemTemplate>
</asp:ListView>
    </div>

</asp:Content>
