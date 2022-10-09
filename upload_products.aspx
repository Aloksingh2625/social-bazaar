<%@ Page Language="C#" MasterPageFile="~/customer.master" AutoEventWireup="true" CodeFile="upload_products.aspx.cs" Inherits="upload_products" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" valign="top">
                <h4>
                    <strong><span style="color: #cc0000">Upload Products</span></strong></h4>
            </td>
        </tr>
        <tr>
            <td colspan="2" valign="top">
                <span style="color: #ff0033">You Upload Maximum 20 Produts.....</span></td>
            <td valign="top">
            </td>
        </tr>
        <tr>
            <td valign="top">
                Products Name:</td>
            <td valign="top">
                <asp:TextBox ID="TextBox1" runat="server" Width="174px"></asp:TextBox></td>
            <td valign="top">
            </td>
        </tr>
        <tr>
            <td style="height: 26px" valign="top">
                Category:</td>
            <td style="height: 26px" valign="top">
                <asp:TextBox ID="TextBox2" runat="server" Width="174px"></asp:TextBox></td>
            <td style="height: 26px" valign="top">
            </td>
        </tr>
        <tr>
            <td valign="top">
                Descyption:</td>
            <td valign="top">
                <asp:TextBox ID="TextBox3" runat="server" Height="95px" TextMode="MultiLine"></asp:TextBox></td>
            <td valign="top">
            </td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
                Photo:</td>
            <td style="height: 19px" valign="top">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload Photo"
                    Width="101px" /></td>
            <td style="height: 19px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:Image ID="Image1" runat="server" Height="153px" Width="161px" BorderStyle="Outset" BorderWidth="2px" />
                <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox></td>
            <td style="height: 19px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
                Price:</td>
            <td style="height: 19px" valign="top">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            <td style="height: 19px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox></td>
            <td style="height: 19px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:Button ID="Button2" runat="server" Text="Save" Width="66px" OnClick="Button2_Click" />
                <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox></td>
            <td style="height: 19px" valign="top">
            </td>
        </tr>
    </table>
    
</asp:Content>

