<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_shop.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style39
        {
            width: 100%;
            border: 1px solid #F0F0F0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p style="margin-right: 40px" align="center" dir="rtl">
        <asp:DataList ID="DataList11" runat="server" BorderWidth="0pt" CellPadding="4" 
            RepeatColumns="2" RepeatDirection="Horizontal" 
            DataSourceID="SqlDataSource1" CellSpacing="2">
            <ItemTemplate>
                <table cellspacing="1" class="style39">
                    <tr>
                        <td>
                            <table align="center" bgcolor="White" border="0" cellpadding="0" 
                                cellspacing="0" frame="border" 
                                style="border-width: 1px; border-top-color: #00FFFF" width="266">
                                <tr>
                                    <td align="center">
                                        &nbsp;</td>
                                    <td align="center">
                                        &nbsp;</td>
                                    <td align="center">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        &nbsp;</td>
                                    <td align="center">
                                        <asp:Image ID="Image1" runat="server" Height="166px" 
                                            ImageUrl="~/img/default.jpeg" Width="166px" />
                                    </td>
                                    <td align="center">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                    <td align="center" bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                    <td align="center" bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                    <td align="center" bgcolor="#F8F0FF">
                                        <asp:HyperLink ID="HyperLink43" runat="server" 
                                            NavigateUrl='<%# Eval("id","ViewSoftware.aspx?page={0}") %>' 
                                            Text='<%# Eval("title") %>'></asp:HyperLink>
                                    </td>
                                    <td align="center" bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                    <td bgcolor="#F8F0FF">
                                        <asp:Label ID="Label8" runat="server" ForeColor="Red" 
                                            Text='<%# Eval("cost")+" ریال " %>'></asp:Label>
                                    </td>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                    <td bgcolor="#F8F0FF">
                                        <asp:HyperLink ID="HyperLink41" runat="server" BackColor="#ACACAC" 
                                            Font-Bold="True" Font-Size="Medium" ForeColor="White" 
                                            NavigateUrl='<%# Eval("id","ViewSoftware.aspx?page={0}") %>' Width="222px">توضیحات</asp:HyperLink>
                                        <br />
                                        <br />
                                        <asp:HyperLink ID="HyperLink42" runat="server" BackColor="#6699FF" 
                                            Font-Bold="True" Font-Size="Medium" ForeColor="White" 
                                            NavigateUrl='<%# Eval("id","Default7.aspx?page={0}") %>' 
                                            style="margin-top: 0px" Width="222px">خرید</asp:HyperLink>
                                        <br />
                                    </td>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                    <td bgcolor="#F8F0FF">
                                        <asp:HyperLink ID="HyperLink44" runat="server" NavigateUrl="~/Default3.aspx">خرید سریع</asp:HyperLink>
                                    </td>
                                    <td bgcolor="#F8F0FF">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p style="margin-right: 40px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" 
            SelectCommand="SELECT * FROM [l_produc]"></asp:SqlDataSource>
    </p>
</asp:Content>

