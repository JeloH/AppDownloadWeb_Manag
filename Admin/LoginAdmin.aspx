<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_mehman.master" AutoEventWireup="true" CodeFile="LoginAdmin.aspx.cs" Inherits="Admin_LoginAdmin" %>

<script runat="server">

  
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
                <table bgcolor="#F9F988" dir="rtl" style="width: 209px">
                    <tr>
                        <td bgcolor="#E9BE12" class="style12" dir="rtl" id="و">
                            ورودی ویژه
                            <asp:Label ID="Label1" runat="server" ForeColor="Maroon"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            <table class="style14">
                                <tr>
                                    <td class="style15">
                                        نام کاربری :</td>
                                    <td class="style15">
                                        <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        رمز عبور :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Height="21px" onclick="Button2_Click" 
                                            Text="ورود" Width="45px" />
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="مرا به خاط بسپار" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                </asp:Content>


