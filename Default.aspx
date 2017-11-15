<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_mehman.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style23
    {
        height: 19px;
    }
    </style>
    </asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            DataSourceID="SqlDataSource1" AutoGenerateColumns="False" 
            DataKeyNames="code_post" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" GridLines="None">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table bgcolor="#FFFF99" dir="ltr" 
                            style="border: 1px solid #D2B026; height: 461px; width: 356px">
                            <tr bgcolor="#E4CD6D">
                                <td align="left" bgcolor="#E0C556" colspan="4">
                                    &nbsp;


<asp:HyperLink ID="HyperLink23" runat="server" Font-Bold="True" 
                                        Font-Underline="False" ForeColor="#0066FF" Height="16px" 
                                        NavigateUrl='<%# Eval("code_post","ViewSoftware.aspx?page={0}") %>' 
                                        Text='<%# Eval("title") %>' Width="355px"></asp:HyperLink>
 


                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" bgcolor="#FFFF75" colspan="4">
                                    <asp:Image ID="Image1" runat="server" BorderStyle="Solid" Height="238px" 
                                        ImageUrl='<%# Eval("img_address") %>' Width="363px" BorderColor="#DDBF46" 
                                        BorderWidth="1px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="left" bgcolor="#E4CD6D" colspan="4" dir="ltr">
                                    &nbsp;<asp:Label ID="AbstructLabel" runat="server" Font-Bold="False" 
                                        ForeColor="Black" Height="70px" Text='<%# Eval("Abstruct")+"[...]" %>' 
                                        Width="351px" />
                                    &nbsp;</td>
                            </tr>
                            <tr dir="rtl">
                                <td align="left" bgcolor="#FFFF75" style="color: #333333">
                                    &nbsp; 文件的类型：
                                    <asp:Label ID="typeLabel" runat="server" ForeColor="#333333" 
                                        Text='<%# Eval("type") %>' />
                                    &nbsp;</td>
                                <td align="right" bgcolor="#FFFF75" colspan="2" style="color: #333333">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                <td align="left" bgcolor="#E4CD6D" dir="rtl">
                                    <asp:HyperLink ID="HyperLink13" runat="server" 
                                        NavigateUrl='<%# Eval("code_post","ViewSoftware.aspx?page={0}") %>' 
                                        Font-Bold="True" Font-Strikeout="False" Font-Underline="False" ForeColor="Red">Click Here</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" bgcolor="#E4CD6D" class="style12" colspan="2" 
                                    style="color: #333333" dir="rtl">
                                    &nbsp; 尺寸:
                                    <asp:Label ID="lenght" runat="server" ForeColor="#333333" 
                                        Text='<%# Eval("lenght") %>' />
                                </td>
                                <td align="right" bgcolor="#FFFF75" class="style12" colspan="2" 
                                    style="color: #333333">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" bgcolor="#FFFF75" class="style22" colspan="2" 
                                    style="color: #333333" dir="rtl">
                                    &nbsp;访问次数:
                                    <asp:Label ID="View_CountLabel" runat="server" ForeColor="#333333" 
                                        Text='<%# Eval("View_Count") %>' />
                                </td>
                                <td align="right" bgcolor="#E4CD6D" class="style22" colspan="2" 
                                    style="color: #333333">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" bgcolor="#E4CD6D" class="style12" colspan="2" 
                                    style="color: #333333" dir="rtl">
                                    &nbsp; 发布日期：
                                    <asp:Label ID="dateLabel" runat="server" EnableTheming="True" 
                                        ForeColor="#333333" Text='<%# Eval("date") %>' ViewStateMode="Enabled" />
                                </td>
                                <td align="right" bgcolor="#FFFF75" class="style12" colspan="2" 
                                    style="color: #333333">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="#E0C556" class="style23" colspan="4" 
                                    style="color: #2079FF; font-size: 9px;">
                                    
                                      
                                    
                                    
                                    
                                    要查看完整的软件，请点击 </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:TemplateField>
              
            </Columns>
            <EmptyDataTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("title") %>'></asp:TextBox>
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [demah].[send_softwear]  order by [code_post] DESC" 
            onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>


