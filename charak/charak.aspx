<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_mehman.master" AutoEventWireup="true" CodeFile="charak.aspx.cs" Inherits="charak_charak" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 317px;
        }
        .style38
        {
            width: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table bgcolor="#F9F988" dir="ltr" 
            style="width: 288px; height: 107px; margin-right: 0px; margin-bottom: 0px;">
                    <tr>
                        <td bgcolor="#E9BE12" class="style12" dir="rtl" id="و">
                            Login :
                            <asp:Label ID="Label1" runat="server" ForeColor="Maroon"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" dir="rtl">
                            <table class="style14" dir="ltr">
                                <tr>
                                    <td class="style38">
                                        User Name - 用 户 :</td>
                                    <td class="style15">
                                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="171px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        Password - 密 码： :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="171px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        <asp:Button ID="Button2" runat="server" Height="21px" onclick="Button2_Click" 
                                            Text="登录 " Width="45px" />
                                        &nbsp;
                                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Home" 
                                            Height="21px" Width="45px" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Save password for alwayse" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br />
    </p>
</asp:Content>

