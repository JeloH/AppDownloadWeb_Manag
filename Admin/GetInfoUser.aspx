<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="GetInfoUser.aspx.cs" Inherits="Admin_GetInfoUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style15
    {
        width: 100%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style15">
        <tr>
            <td align="center" bgcolor="#D2B026">
                Ip访客 - Vistors IP</td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" PageSize="50"
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="rpt" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" DeleteText="Remove - 删除" />
                        <asp:BoundField DataField="rpt" HeaderText="ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="rpt" />
                        <asp:BoundField DataField="us" HeaderText="Typr of User" SortExpression="us" />
                        <asp:BoundField DataField="date_login" HeaderText="Date of input" 
                            SortExpression="date_login" />
                        <asp:BoundField DataField="date_logout" HeaderText="Date of Output" 
                            SortExpression="date_logout" />
                        <asp:BoundField DataField="ip_login" HeaderText="Ip Number" 
                            SortExpression="ip_login" />
                        <asp:BoundField DataField="contry" HeaderText="Cou-" 
                            SortExpression="contry" />
                        <asp:BoundField DataField="city" HeaderText="cit-" SortExpression="city" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [rpt_log] WHERE [rpt] = @original_rpt AND (([us] = @original_us) OR ([us] IS NULL AND @original_us IS NULL)) AND (([date_login] = @original_date_login) OR ([date_login] IS NULL AND @original_date_login IS NULL)) AND (([date_logout] = @original_date_logout) OR ([date_logout] IS NULL AND @original_date_logout IS NULL)) AND (([ip_login] = @original_ip_login) OR ([ip_login] IS NULL AND @original_ip_login IS NULL)) AND (([contry] = @original_contry) OR ([contry] IS NULL AND @original_contry IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL))" 
                    InsertCommand="INSERT INTO [rpt_log] ([us], [date_login], [date_logout], [ip_login], [contry], [city]) VALUES (@us, @date_login, @date_logout, @ip_login, @contry, @city)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [rpt_log] order by [rpt] DESC" 
                    UpdateCommand="UPDATE [rpt_log] SET [us] = @us, [date_login] = @date_login, [date_logout] = @date_logout, [ip_login] = @ip_login, [contry] = @contry, [city] = @city WHERE [rpt] = @original_rpt AND (([us] = @original_us) OR ([us] IS NULL AND @original_us IS NULL)) AND (([date_login] = @original_date_login) OR ([date_login] IS NULL AND @original_date_login IS NULL)) AND (([date_logout] = @original_date_logout) OR ([date_logout] IS NULL AND @original_date_logout IS NULL)) AND (([ip_login] = @original_ip_login) OR ([ip_login] IS NULL AND @original_ip_login IS NULL)) AND (([contry] = @original_contry) OR ([contry] IS NULL AND @original_contry IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_rpt" Type="Int32" />
                        <asp:Parameter Name="original_us" Type="String" />
                        <asp:Parameter Name="original_date_login" Type="String" />
                        <asp:Parameter Name="original_date_logout" Type="String" />
                        <asp:Parameter Name="original_ip_login" Type="String" />
                        <asp:Parameter Name="original_contry" Type="String" />
                        <asp:Parameter Name="original_city" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="us" Type="String" />
                        <asp:Parameter Name="date_login" Type="String" />
                        <asp:Parameter Name="date_logout" Type="String" />
                        <asp:Parameter Name="ip_login" Type="String" />
                        <asp:Parameter Name="contry" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="us" Type="String" />
                        <asp:Parameter Name="date_login" Type="String" />
                        <asp:Parameter Name="date_logout" Type="String" />
                        <asp:Parameter Name="ip_login" Type="String" />
                        <asp:Parameter Name="contry" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="original_rpt" Type="Int32" />
                        <asp:Parameter Name="original_us" Type="String" />
                        <asp:Parameter Name="original_date_login" Type="String" />
                        <asp:Parameter Name="original_date_logout" Type="String" />
                        <asp:Parameter Name="original_ip_login" Type="String" />
                        <asp:Parameter Name="original_contry" Type="String" />
                        <asp:Parameter Name="original_city" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button6" runat="server" Text="rm"  />
&nbsp;<asp:Button ID="Button7" runat="server" Text="rep"  />
            </td>
        </tr>
        <tr>
            <td bgcolor="#D2B026">
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

