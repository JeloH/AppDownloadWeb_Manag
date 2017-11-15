<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="AddSubject.aspx.cs" Inherits="Admin_AddSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table bgcolor="#F9F988" dir="rtl" 
    style="width: 291px; height: 70px;">
                    <tr>
                        <td bgcolor="#D2B026" dir="rtl" colspan="2">
                            Add new item in Menu</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            Enter a subject :</td>
                        <td align="right" dir="rtl">
                            <asp:TextBox ID="TextBox1" runat="server" Height="21px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" colspan="2">
                            <asp:Button ID="Button2" runat="server" Text="Add" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" dir="rtl" bgcolor="#D2B026" colspan="2">
                            Remove a subject :</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" bgcolor="#F9F988" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" bgcolor="#F9F988" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" bgcolor="#F9F988" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" bgcolor="#D2B026" colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
    </p>
</asp:Content>

