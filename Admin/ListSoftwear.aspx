<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="ListSoftwear.aspx.cs" Inherits="Admin_ListSoftwear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style15
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style15">
    <tr>
        <td align="center" bgcolor="#D2B026">
            List of softwares - 软件列表 </td>
    </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="code_post"  PageSize="50"
                DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="code_post" HeaderText="ID" 
                        InsertVisible="False" ReadOnly="True" SortExpression="code_post" />
                    <asp:BoundField DataField="date" HeaderText="Date of Submit" 
                        SortExpression="date" />
                    <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
           
                    <asp:BoundField DataField="type" HeaderText="Type of Software" 
                        SortExpression="type" />
                    <asp:BoundField DataField="View_Count" HeaderText="Count of View" 
                        SortExpression="View_Count" />

                     
 
      <asp:HyperLinkField 
      DataTextField="title" 
      HeaderText="URL File" 
      
      DataNavigateUrlFields="soft_address" 
      DataNavigateUrlFormatString="{0}" />

                    
 





                    <asp:BoundField DataField="source_company" HeaderText="Source" 
                        SortExpression="source_company" />
                    <asp:BoundField DataField="subject_post" HeaderText="Related Part" 
                        SortExpression="subject_post" />
                    <asp:BoundField DataField="download_count" HeaderText="Count of Download" 
                        SortExpression="download_count" />

                    
 





                </Columns>
                <EmptyDataTemplate>
                    <asp:Button ID="Button8" runat="server" Text="Button" />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                OldValuesParameterFormatString="original_{0}" 
                
                SelectCommand="SELECT [code_post], [date], [title], [soft_address], [type], [source_company], [View_Count], [subject_post], [download_count] FROM [demah].[send_softwear]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Button ID="Button6" runat="server" Text="re" />
&nbsp;<asp:Button ID="Button7" runat="server" Text="rp" />
        </td>
    </tr>
    <tr>
        <td bgcolor="#D2B026">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>


