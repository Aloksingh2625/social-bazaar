<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Social_Bazaar_Products.aspx.cs" Inherits="Social_Bazaar_Products" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 100%">
        <tr>
            <td colspan="3" style="height: 57px; width: 723px;" valign="top">
                <h1>
                    <span style="color: #ffffff; font-family: Times New Roman TUR"><span style="color: #ff0033">
                        S<span style="color: #000000">ocial </span>B<span style="color: #000000">azaar</span>
                        P<span style="color: #000000">roducts</span></span></span></h1>
            </td>
        </tr>
    <tr>
        <td colspan="3" style="width: 723px; height: 7px" valign="top">
            <h4>
                <table style="width: 668px">
                    <tr>
                        <td valign="top">
                            Search By
                            Category</td>
                        <td valign="top">
                            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="category"
                                DataValueField="category" Rows="1" Width="154px" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox></td>
                        <td valign="top">
                            &nbsp;</td>
                    </tr>
                </table>
            </h4>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sb %>"
                SelectCommand="SELECT [category] FROM [approve_products]"></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" ForeColor="#FF0000"></asp:Label></td>
    </tr>
        <tr>
            <td colspan="3" valign="top" style="width: 723px">
                &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#333333" GridLines="None" Height="100%" Width="573px">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" VerticalAlign="Top" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="photo" DataImageUrlFormatString="~/produtcs/{0}"
                            HeaderText="Product View">
                            <ControlStyle Height="200px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="pname" HeaderText="Products Name" />
                        <asp:HyperLinkField DataNavigateUrlFields="PID,pname,category,description,photo,price,date"
                            DataNavigateUrlFormatString="product_details.aspx??PID={0} &amp;pname={1} &amp;category={2} &amp;description={3} &amp;photo={4} &amp;price={5} &amp;date={6}"
                            HeaderText="View Details" Text="Click..." />
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
        </table>
</asp:Content>

