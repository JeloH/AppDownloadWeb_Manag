<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEduc_mehman.master" AutoEventWireup="true" CodeFile="ViewEducPost.aspx.cs" Inherits="ViewEducPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BorderStyle="None" DataSourceID="SqlDataSource1" style="margin-left: 10px" 
        Width="555px">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <table dir="rtl" align="right" bgcolor="#E7E7B8" style="width: 524px">
                        <tr>
                            <td bgcolor="#D1D17E">
                                <asp:Label ID="Label7_title" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                            </td>
                            <td bgcolor="#D1D17E" class="style4">
                                <asp:Label ID="Label7_DateSend" runat="server" Text="Label_dateSend"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right" class="style12" dir="rtl">
                                <asp:Label ID="Label8" runat="server" Text="Label_body"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="#E0E0A7" colspan="2" align="right">
                                <asp:HyperLink ID="HyperLink22" runat="server">نظر یا سوال در مورد این پست</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="StoredProcedure5" SelectCommandType="StoredProcedure">
   


    

                               <SelectParameters>
                <asp:QueryStringParameter Name="code_post" QueryStringField="page" 
                    Type="Int64" />
                      </SelectParameters>
 </asp:SqlDataSource>
</asp:Content>

