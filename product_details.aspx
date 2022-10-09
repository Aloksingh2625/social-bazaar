<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product_details.aspx.cs" Inherits="product_details" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
        <tr>
            <td colspan="2" style="height: 5px" valign="top">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#FF0000"
                    Text="Product Detail"></asp:Label><br />
            </td>
        </tr>
        <tr>
            <td style="width: 468px; height: 5px" valign="top">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#330066"></asp:Label></td>
            <td rowspan="6" valign="top">
                <asp:Label ID="Label2" runat="server"></asp:Label><br />
                <strong><span style="color: #000000">
                    <br />
                    Model:</span></strong>
                <asp:Label ID="Label3" runat="server"></asp:Label><br />
                <strong><span style="color: #000000">
                    <br />
                    Rs. </span></strong>
                <asp:Label ID="Label4" runat="server"></asp:Label><br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Order Now" />
            </td>
        </tr>
        <tr>
            <td style="width: 468px" valign="top">
                <asp:Image ID="Image1" runat="server" BorderStyle="Inset" BorderWidth="2px" ImageUrl='<%# Eval("phot", "~/products/{0}") %>'/>
                </td>
        </tr>
        <tr>
            <td style="width: 468px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 468px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 468px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 468px" valign="top">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

