<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="Edit_Mataleb.aspx.cs" Inherits="Admin_Edit_Mataleb"   ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="code_post" 
        DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <li style="background-color: #FAFAD2;color: #284775;">code_post:
                <asp:Label ID="code_postLabel" runat="server" Text='<%# Eval("code_post") %>' />
                <br />
                title:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
                DateSend:
                <asp:Label ID="DateSendLabel" runat="server" Text='<%# Eval("DateSend") %>' />
                <br />
                body:
                <asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>' />
                <br />
                view_count:
                <asp:Label ID="view_countLabel" runat="server" 
                    Text='<%# Eval("view_count") %>' />
                <br />
                type_Post:
                <asp:Label ID="type_PostLabel" runat="server" Text='<%# Eval("type_Post") %>' />
                <br />
                seo:
                <asp:Label ID="seoLabel" runat="server" Text='<%# Eval("seo") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="background-color: #FFCC66;color: #000080;">code_post:
                <asp:Label ID="code_postLabel1" runat="server" 
                    Text='<%# Eval("code_post") %>' />
                <br />
                title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />
                DateSend:
                <asp:TextBox ID="DateSendTextBox" runat="server" 
                    Text='<%# Bind("DateSend") %>' />
                <br />
                body:
                <asp:TextBox ID="bodyTextBox" runat="server" Text='<%# Bind("body") %>' />
                <br />
                view_count:
                <asp:TextBox ID="view_countTextBox" runat="server" 
                    Text='<%# Bind("view_count") %>' />
                <br />
                type_Post:
                <asp:TextBox ID="type_PostTextBox" runat="server" 
                    Text='<%# Bind("type_Post") %>' />
                <br />
                seo:
                <asp:TextBox ID="seoTextBox" runat="server" Text='<%# Bind("seo") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">title:
                <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                <br />DateSend:
                <asp:TextBox ID="DateSendTextBox" runat="server" 
                    Text='<%# Bind("DateSend") %>' />
                <br />body:
                <asp:TextBox ID="bodyTextBox" runat="server" Text='<%# Bind("body") %>' />
                <br />view_count:
                <asp:TextBox ID="view_countTextBox" runat="server" 
                    Text='<%# Bind("view_count") %>' />
                <br />type_Post:
                <asp:TextBox ID="type_PostTextBox" runat="server" 
                    Text='<%# Bind("type_Post") %>' />
                <br />seo:
                <asp:TextBox ID="seoTextBox" runat="server" Text='<%# Bind("seo") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="background-color: #FFFBD6;color: #333333;">code_post:
                <asp:Label ID="code_postLabel" runat="server" Text='<%# Eval("code_post") %>' />
                <br />
                title:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
                DateSend:
                <asp:Label ID="DateSendLabel" runat="server" Text='<%# Eval("DateSend") %>' />
                <br />
                body:
                <asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>' />
                <br />
                view_count:
                <asp:Label ID="view_countLabel" runat="server" 
                    Text='<%# Eval("view_count") %>' />
                <br />
                type_Post:
                <asp:Label ID="type_PostLabel" runat="server" Text='<%# Eval("type_Post") %>' />
                <br />
                seo:
                <asp:Label ID="seoLabel" runat="server" Text='<%# Eval("seo") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="background-color: #FFCC66;font-weight: bold;color: #000080;">code_post:
                <asp:Label ID="code_postLabel" runat="server" Text='<%# Eval("code_post") %>' />
                <br />
                title:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
                DateSend:
                <asp:Label ID="DateSendLabel" runat="server" Text='<%# Eval("DateSend") %>' />
                <br />
                body:
                <asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>' />
                <br />
                view_count:
                <asp:Label ID="view_countLabel" runat="server" 
                    Text='<%# Eval("view_count") %>' />
                <br />
                type_Post:
                <asp:Label ID="type_PostLabel" runat="server" Text='<%# Eval("type_Post") %>' />
                <br />
                seo:
                <asp:Label ID="seoLabel" runat="server" Text='<%# Eval("seo") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=91.98.96.201;User ID=demah;Password=K2KJDfsc12" 
        DeleteCommand="DELETE FROM [mataleb] WHERE [code_post] = @code_post" 
        InsertCommand="INSERT INTO [mataleb] ([title], [DateSend], [body], [view_count], [type_Post], [seo]) VALUES (@title, @DateSend, @body, @view_count, @type_Post, @seo)" 
        ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [mataleb]" 
        UpdateCommand="UPDATE [mataleb] SET [title] = @title, [DateSend] = @DateSend, [body] = @body, [view_count] = @view_count, [type_Post] = @type_Post, [seo] = @seo WHERE [code_post] = @code_post">
        <DeleteParameters>
            <asp:Parameter Name="code_post" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="DateSend" Type="String" />
            <asp:Parameter Name="body" Type="String" />
            <asp:Parameter Name="view_count" Type="Int32" />
            <asp:Parameter Name="type_Post" Type="String" />
            <asp:Parameter Name="seo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="DateSend" Type="String" />
            <asp:Parameter Name="body" Type="String" />
            <asp:Parameter Name="view_count" Type="Int32" />
            <asp:Parameter Name="type_Post" Type="String" />
            <asp:Parameter Name="seo" Type="String" />
            <asp:Parameter Name="code_post" Type="Int64" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

