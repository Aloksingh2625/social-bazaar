<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="register_user.aspx.cs" Inherits="register_user" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
        ForeColor="#333333" >
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" VerticalAlign="Top" />
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="Remark" />
            <asp:BoundField DataField="Offers" HeaderText="Offers" SortExpression="Offers" />
            <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:HyperLinkField DataNavigateUrlFields="ID,Name,Address,State,City,Category,Remark,Offers,Email_ID,Password,Date"
                DataNavigateUrlFormatString="confirm_approve.aspx??ID={0} &amp;Name={1} &amp;Address={2} &amp;State={3} &amp;City={4} &amp;Category={5} &amp;Remark={6} &amp;Offers={7} &amp;Email_ID={8} &amp;Password={9} &amp;Date={9}"
                HeaderText="Aprove" Text="Aprove" />
        </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Left" VerticalAlign="Top" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left"
            VerticalAlign="Middle" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sb %>"
        ProviderName="<%$ ConnectionStrings:sb.ProviderName %>" SelectCommand="SELECT [ID], [Name], [Address], [State], [City], [Category], [Remark], [Offers], [Email_ID], [Password], [Date] FROM [cus_reg]">
    </asp:SqlDataSource>
</asp:Content>

