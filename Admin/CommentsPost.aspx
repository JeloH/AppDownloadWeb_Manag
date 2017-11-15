<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="CommentsPost.aspx.cs" Inherits="Admin_CommentsPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
                <table bgcolor="#F9F988" dir="rtl" 
        style="width: 142px; height: 24px;">
                    <tr>
                        <td bgcolor="#D2B026" class="style12" dir="rtl">
                            List of Comment - 评论列表&nbsp; </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="code" 
                                DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="code" HeaderText="ID" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="code" />
                                    <asp:CheckBoxField DataField="status" HeaderText="Confirmed Status - 确定状态" 
                                        SortExpression="status" />
                                    <asp:BoundField DataField="name" HeaderText="Name - 名称" SortExpression="name" />
                                    <asp:BoundField DataField="date" HeaderText="Date Submit - 日期提交" 
                                        SortExpression="date" />
                                    <asp:BoundField DataField="title_post" HeaderText="Title - 标题" 
                                        SortExpression="title_post" />
                                    <asp:BoundField DataField="body" HeaderText="Text - 正文" SortExpression="body" />
                                    <asp:BoundField DataField="pasokh" HeaderText="Response - 响应" 
                                        SortExpression="pasokh" />
                                    <asp:BoundField DataField="email" HeaderText="Email - 电邮" 
                                        SortExpression="email" />
                                    <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
                                    <asp:BoundField DataField="code_post" HeaderText="code_post" 
                                        SortExpression="code_post" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [comments] WHERE [code] = @code" 
                                InsertCommand="INSERT INTO [comments] ([name], [email], [body], [status], [date], [ip], [code_post], [title_post], [pasokh]) VALUES (@name, @email, @body, @status, @date, @ip, @code_post, @title_post,@pasokh)" 
                                SelectCommand="SELECT * FROM [comments] order by [code] DESC" 
                                UpdateCommand="UPDATE [comments] SET [name] = @name, [email] = @email, [body] = @body, [status] = @status, [date] = @date, [ip] = @ip, [code_post] = @code_post, [title_post] = @title_post, [pasokh] = @pasokh WHERE [code] = @code">
                                <DeleteParameters>
                                    <asp:Parameter Name="code" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="body" Type="String" />
                                    <asp:Parameter Name="status" Type="Boolean" />
                                    <asp:Parameter Name="date" Type="String" />
                                    <asp:Parameter Name="ip" Type="String" />
                                    <asp:Parameter Name="code_post" Type="Int32" />
                                    <asp:Parameter Name="title_post" Type="String" />
                                    <asp:Parameter Name="pasokh" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="body" Type="String" />
                                    <asp:Parameter Name="status" Type="Boolean" />
                                    <asp:Parameter Name="date" Type="String" />
                                    <asp:Parameter Name="ip" Type="String" />
                                    <asp:Parameter Name="code_post" Type="Int32" />
                                    <asp:Parameter Name="title_post" Type="String" />
                                    <asp:Parameter Name="pasokh" Type="String" />
                                    <asp:Parameter Name="code" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" bgcolor="#D2B026">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
</p>
</asp:Content>

