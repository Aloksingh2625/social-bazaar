<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<%-- Add content controls here --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <table width="100%">
        <tr>
            <td colspan="3" style="height: 19px" valign="top">
               <h3> 
                   <strong><span style="color: #cc0000">Customer Registration</span></strong></h3></td>
        </tr>
        <tr>
            <td colspan="3" valign="top">
                <h4>
                    <strong>
                Personel Details</strong></h4>
            </td>
        </tr>
        <tr>
            <td valign="top">
                Name: <span style="color: #ff0000">*</span></td>
            <td valign="top">
            </td>
            <td valign="top">
                <asp:TextBox ID="TextBox1" runat="server" Width="213px" class="required input_field"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
                Address <span style="color: #ff0000">*</span></td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:TextBox ID="TextBox2" runat="server" Height="90px" TextMode="MultiLine" Width="213px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
                State <span style="color: #ff0000">*</span></td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:ListBox ID="ListBox1" runat="server" Rows="1" Width="220px" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                    <asp:ListItem>-----Select State------</asp:ListItem>
                </asp:ListBox></td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
                City <span style="color: #ff0000">*</span></td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:ListBox ID="ListBox2" runat="server" Rows="1" Width="219px" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged">
                    <asp:ListItem>------Select City-----</asp:ListItem>
                </asp:ListBox></td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
                Category <span style="color: #ff0000">*</span></td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:TextBox ID="TextBox3" runat="server" Width="213px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
                Remark</td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:TextBox ID="TextBox4" runat="server" Height="75px" TextMode="MultiLine" Width="213px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
                Offers</td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:TextBox ID="TextBox5" runat="server" Width="213px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 19px" valign="top">
                <h4>
                    <strong>
                Account &nbsp;Details</strong></h4>
            </td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
                Email ID <span style="color: #ff0000">*</span></td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:TextBox ID="TextBox6" runat="server" Width="213px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
                Password <span style="color: #ff0000">*</span></td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Width="213px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
                <asp:Button ID="Button1" runat="server" Text="Register" Width="96px" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
            </td>
            <td style="height: 19px" valign="top">
            </td>
        </tr>
    </table>
</asp:Content>
