<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 100%;">
        <tr>
            <td valign="top">
                &nbsp;</td>
            <td valign="top">
                &nbsp;</td>
            <td valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td valign="top" colspan="3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td rowspan="11" valign="top">
                &nbsp;
                &nbsp;
                &nbsp;
                <asp:Image ID="Image1" runat="server" Height="238px" Width="259px" />
            </td>
            <td valign="top">
                Name</td>
            <td valign="top">
                <asp:TextBox ID="TextBox1" runat="server" Width="245px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Address</td>
            <td valign="top">
                <asp:TextBox ID="TextBox2" runat="server" Height="112px" 
                    TextMode="MultiLine" Width="245px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Contact</td>
            <td valign="top">
                <asp:TextBox ID="TextBox3" runat="server" Width="245px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Email ID</td>
            <td valign="top">
                <asp:TextBox ID="TextBox4" runat="server" Width="245px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td valign="top">
                Product Name&nbsp;</td>
            <td valign="top">
                <asp:TextBox ID="TextBox5" runat="server" Width="245px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Category</td>
            <td valign="top">
                <asp:TextBox ID="TextBox6" runat="server" Width="245px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Description &nbsp;</td>
            <td valign="top">
                <asp:TextBox ID="TextBox7" runat="server" Height="120px" TextMode="MultiLine" 
                    Width="245px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Price&nbsp;</td>
            <td valign="top">
                <asp:TextBox ID="TextBox8" runat="server" Width="245px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Order Date</td>
            <td valign="top">
                <asp:TextBox ID="TextBox9" runat="server" Width="245px" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Order Type</td>
            <td valign="top">
                <asp:TextBox ID="TextBox10" runat="server" Width="245px" ReadOnly="True">Cash on Delivery</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td valign="top">
                &nbsp;</td>
            <td valign="top">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Confirm Order" />
            </td>
        </tr>
    </table>
</asp:Content>

