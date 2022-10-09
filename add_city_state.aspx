<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_city_state.aspx.cs" Inherits="add_city_state" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td colspan="3" valign="top">
                <h4>
                    <span style="color: #ff0000"><strong>Add City and State</strong></span></h4>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px" valign="top">
                <asp:Label ID="Label1" runat="server" ForeColor="#FF0000"></asp:Label></td>
            <td style="height: 26px" valign="top">
            </td>
        </tr>
        <tr>
            <td valign="top" style="height: 26px">
                State <span style="color: #ff0000">*</span></td>
            <td valign="top" style="height: 26px">
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" Width="185px"></asp:TextBox></td>
            <td valign="top" style="height: 26px">
            </td>
        </tr>
        <tr>
            <td valign="top">
                City <span style="color: #ff0000">*</span></td>
            <td valign="top">
                <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Search" AutoPostBack="True" Width="185px"></asp:TextBox></td>
            <td valign="top">
            </td>
        </tr>
        <tr>
            <td valign="top">
            </td>
            <td valign="top">
                <asp:Button ID="Button1" runat="server" Text="Add" Width="54px" OnClick="Button1_Click" /></td>
            <td valign="top">
            </td>
        </tr>
    </table>
    &nbsp;

</asp:Content>

