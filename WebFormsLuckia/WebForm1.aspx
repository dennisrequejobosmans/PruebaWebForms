<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebFormsLuckia.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <table style="height: 400px; width: 50%; text-align: left; margin-top: 40px">
        <tr>
            <td style="width:350px">
                <asp:Label ID="Label1" runat="server" Text="Usuario " Style="margin: 20px"> </asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Nombre  " Style="margin: 20px"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Apellidos   " Style="margin: 20px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Email   " Style="margin: 20px">  </asp:Label>
            </td>
            <td>
                
                <asp:TextBox ID="TextBox4" runat="server" Width="250px" Style="text-align: right"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Direccion   " Style="margin: 20px">  </asp:Label>
            </td>
            <td>
                
                <asp:TextBox ID="TextBox5" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 43px">
                <asp:Label ID="Label6" runat="server" Text="Password    " Style="margin: 20px; text-align: left">  </asp:Label>
            </td>
            <td><asp:TextBox ID="TextBox6" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Confirm    " Style="margin: 20px">  </asp:Label>

            </td>
            <td>
                
                <asp:TextBox ID="TextBox7" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align:center">
                <asp:Label ID="LabelErrores" runat="server" Visible="false" Font-Bold="True" Font-Italic="True" ForeColor="Red"/>
            </td>
            <td>
                
                <asp:Button ID="Boton" runat="server" Text="Registrarse " OnClick="Boton_Click" />
            </td>
        </tr>
    </table>
    <table style="width:50%; height:40px;">
        <tr>
            <td style="text-align:center" >
                <asp:Label ID="ContadorEmpleados" runat="server" Text="Contador de Usuarios: "></asp:Label>
            </td>
        </tr>
    </table>



</asp:Content>

