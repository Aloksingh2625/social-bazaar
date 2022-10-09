<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="confirm_products_approve.aspx.cs" Inherits="confirm_products_approve" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
        <tr>
            <td colspan="3" valign="top">
                <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 236px" valign="top">
                Confirm Approve Products</td>
            <td valign="top">
            </td>
            <td valign="top">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Approve." Width="98px" /></td>
        </tr>
        <tr>
            <td style="width: 236px" valign="top">
            </td>
            <td valign="top">
            </td>
            <td valign="top">
            </td>
        </tr>
        <tr>
            <td colspan="3" valign="top">
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
                &nbsp; &nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox></td>
        </tr>
    </table>
</asp:Content>

