<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="NazarSanji_Create.aspx.cs" Inherits="Admin_NazarSanji_Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style16
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table bgcolor="#F9F988" dir="rtl" 
    style="width: 410px; height: 20px;">
                    <tr>
                        <td bgcolor="#D2B026" class="style12" dir="rtl">
                            اCreate poll in website- 创建民意调查 </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" class="style12">
                            &nbsp;<table class="style16">
                                <tr>
                                    <td>
                                       &nbsp;Question:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="314px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        A:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        B:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        C:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        D :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                    </td>
                                    <td class="style12">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        Date:</td>
                                    <td class="style12">
                                        <asp:TextBox ID="TextBox6" runat="server" Width="110px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        Status :</td>
                                    <td class="style12">
                                        <asp:CheckBox ID="CheckBox1" runat="server" 
                                            Text="Active and Show in Website" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                            Text="ایجاد شود" />
                                    </td>
                                </tr>
                            </table>
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

