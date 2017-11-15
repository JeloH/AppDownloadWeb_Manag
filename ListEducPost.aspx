<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEduc_mehman.master" AutoEventWireup="true" CodeFile="ListEducPost.aspx.cs" Inherits="ListEducPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style37
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="style37">
            <tr>
                <td align="center" bgcolor="#FFFF99" class="style12">
                    بخش آموزش جاوا</td>
            </tr>
            <tr>
                <td align="right" class="style12">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px" 
                        DataKeyNames="code_post" DataSourceID="SqlDataSource1" Width="573px">
                        <Columns>
                            <asp:BoundField DataField="title" HeaderText="عنوان" SortExpression="title" />
                            <asp:BoundField DataField="view_count" HeaderText="تعداد بازدید" 
                                SortExpression="view_count" />

                           

                            <asp:TemplateField>
                                <ItemTemplate>
                                     
                              

                                <asp:HyperLink ID="HyperLink23" runat="server" Font-Bold="True" 
                                        Font-Underline="False" ForeColor="#0066FF" Height="16px" 
                                        NavigateUrl='<%# Eval("code_post","ViewEducPost.aspx?page={0}") %>' 
                                        Text='<%# Eval("title") %>' Width="360px"></asp:HyperLink>
                              
                                </ItemTemplate>
                            </asp:TemplateField>

                           

                        </Columns>
                        <HeaderStyle BackColor="#FFFFB9" />
                        <PagerStyle BackColor="#E4E4B2" />
                        <RowStyle BackColor="#FFFFCC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="StoredProcedure_educSelect" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

