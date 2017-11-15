<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default8.aspx.cs" Inherits="Default8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="code_post" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="code_post" HeaderText="code_post" 
                    InsertVisible="False" ReadOnly="True" SortExpression="code_post" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="img_address" HeaderText="img_address" 
                    SortExpression="img_address" />
                <asp:BoundField DataField="soft_address" HeaderText="soft_address" 
                    SortExpression="soft_address" />
                <asp:BoundField DataField="body" HeaderText="body" SortExpression="body" />
                <asp:BoundField DataField="Abstruct" HeaderText="Abstruct" 
                    SortExpression="Abstruct" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="lenght" HeaderText="lenght" 
                    SortExpression="lenght" />
                <asp:BoundField DataField="source_company" HeaderText="source_company" 
                    SortExpression="source_company" />
                <asp:BoundField DataField="View_Count" HeaderText="View_Count" 
                    SortExpression="View_Count" />
                <asp:BoundField DataField="download_count" HeaderText="download_count" 
                    SortExpression="download_count" />
                <asp:BoundField DataField="seo" HeaderText="seo" SortExpression="seo" />
                <asp:BoundField DataField="subject_post" HeaderText="subject_post" 
                    SortExpression="subject_post" />
                <asp:BoundField DataField="password_softwear" HeaderText="password_softwear" 
                    SortExpression="password_softwear" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" 
            SelectCommand="SELECT * FROM [send_softwear]"></asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
