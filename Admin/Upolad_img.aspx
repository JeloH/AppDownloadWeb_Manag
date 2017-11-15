<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="Upolad_img.aspx.cs" Inherits="Admin_Upolad_img" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style14
    {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
                <table bgcolor="#F9F988" dir="rtl" 
        style="width: 142px; height: 102px;">
                    <tr>
                        <td bgcolor="#D2B026" class="style12" dir="rtl">
                            &nbsp; 上传图片 - Upload Picture</td>
                    </tr>
                    <tr>
                        <td align="center" dir="rtl">
                            Format:</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            (&quot;.jpg&quot;, &quot;.gif&quot;, &quot;.png&quot;, &quot;.rar&quot; )</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" class="style14">
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                Text="Upload - 上传" Width="116px" />
&nbsp;
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                Text="Show - 显示" Width="116px" />
&nbsp;
                            <asp:Label ID="Label3" runat="server"></asp:Label>
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

