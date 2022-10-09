<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="apporve_produtcs.aspx.cs" Inherits="apporve_cus" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" valign="top">
                <h4>
                    <span style="color: #cc0000"><strong>List of Apporoved Products </strong></span></h4>
            </td>
        </tr>
        <tr>
            <td colspan="3" valign="top">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" Width="679px">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" VerticalAlign="Top" />
                    <Columns>
                        <asp:BoundField DataField="PID" HeaderText="P_ID" />
                        <asp:BoundField DataField="pname" HeaderText="Products Name" />
                        <asp:BoundField DataField="category" HeaderText="Category" />
                        <asp:BoundField DataField="description" HeaderText="Description" />
                        <asp:BoundField DataField="photo" HeaderText="Photo" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="date" HeaderText="Date" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left"
                        VerticalAlign="Top" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td valign="top">
            </td>
            <td valign="top">
            </td>
            <td valign="top">
            </td>
        </tr>
    </table>
</asp:Content>

