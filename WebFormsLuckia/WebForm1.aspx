<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebFormsLuckia.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
<table style="height: 400px; width:50%; text-align:center" >
    <tr>
        <td>
        <asp:Label ID="Label1" runat="server" Text="Usuario " style="margin:20px"> </asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label2" runat="server" Text="Nombre  " style="margin: 20px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label3" runat="server" Text="Apellidos   " style="margin: 20px"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label4" runat="server" Text="Email   " style="margin: 20px">  </asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="250px" style="text-align:right"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="Label5" runat="server" Text="Direccion   " style="margin: 20px">  </asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 43px">
        <asp:Label ID="Label6" runat="server" Text="Password    " style="margin: 20px; text-align:left" >  </asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
         <asp:Label ID="Label7" runat="server" Text="Confirm    " style="margin: 20px" >  </asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Width="250px"></asp:TextBox>

        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Boton" runat="server" Text="Registrarse " OnClick="Boton_Click"  />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Listbox ID="Listbox1" runat="server" Visible="false" Height="34px" Width="292px"/>
        </td>
    </tr>
</table>

    <div class="container">
<h2>Lista de personas</h2>
<table style="width: 1000px">
<tr>
<th>Nombre</th>
<th>Apellidos</th>
<th>Edad</th>
<th>Ciudad</th>
</tr>
<tr>
<td>Daniel</td>
<td>Requejo</td>
<td>20</td>
<td>Ourense</td>
</tr>
<tr>
<td>Juan</td>
<td>Jose Requejo</td>
<td>51</td>
<td>Ourense</td>
</tr>
</table>
</div>



</asp:Content>

