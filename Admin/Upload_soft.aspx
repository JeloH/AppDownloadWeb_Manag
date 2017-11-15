<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="Upload_soft.aspx.cs" Inherits="Admin_upload_soft" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style14
    {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table bgcolor="#F9F988" dir="rtl" 
    style="width: 291px; height: 251px;">
                    <tr>
                        <td bgcolor="#D2B026" class="style12" dir="rtl">
                            Upload Software - 上传软件&nbsp; :</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            Format :</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            (&quot;apk&quot;, &quot;.ipa&quot;, &quot;.jar&quot;, &quot;.zip&quot;, &quot;.rar&quot; )</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            Choose Folder :&nbsp; 
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>java</asp:ListItem>
                                <asp:ListItem>iphone</asp:ListItem>
                                <asp:ListItem>android</asp:ListItem>
                                <asp:ListItem Value="Ahadis_sovti"></asp:ListItem>
                                <asp:ListItem>bada</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" />
&nbsp;
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="....." />
&nbsp;
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" bgcolor="#D2B026">
                            &nbsp;</td>
                    </tr>
                </table>
                <p>
</p>
</asp:Content>

