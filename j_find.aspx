
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="j_find.aspx.cs"  Inherits="_Default" %>

  

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

  

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title></title>

    <style type="text/css">
        .style1
        {
            width: 45%;
        }
        .style3
        {
            height: 9px;
        }
        .style9
        {
            height: 40px;
        }
        .style7
        {
            width: 21px;
            height: 40px;
        }
        .style10
        {
            width: 99px;
        }
        .style11
        {
            height: 32px;
        }
        .style12
        {
            width: 45%;
            height: 29px;
        }
        </style>

</head>

<body background="img/1.jpg">

    <form id="form1" runat="server">
    <table align="center" bgcolor="White" class="style1" 
        style="font-family: tahoma; font-size: 11px">
        <tr>
            <td colspan="2">
              

        <table width="780px" dir="rtl" cellpadding="0" cellspacing="0">

            <tr>

                <td align="left" bgcolor="#99CCFF" colspan="2">

                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Tahoma" 

                        Text="نسخه آزمایشی"></asp:Label>

                </td>

                <td align="left" bgcolor="#D2E9FF" colspan="4">

                    &nbsp;</td>

                <td align="left" bgcolor="#D2E9FF" colspan="2">

                    &nbsp;</td>

                <td align="left" bgcolor="#C1E0FF">

                    &nbsp;</td>

                <td align="left" bgcolor="#AAD5FF">

                    &nbsp;</td>

                <td align="left" bgcolor="#99CCFF" colspan="2">

                    &nbsp;</td>

            </tr>

            <tr>

                <td rowspan="5" width="333" colspan="4" align="right" dir="rtl">

                    <asp:Image ID="Image1" runat="server" Height="133px" 
                        ImageUrl="~/img/azad.jpg" Width="104px" />
                </td>

                <td align="center" colspan="4">

                    &nbsp;</td>

                <td rowspan="5" width="333" colspan="4" align="left">

                    <asp:Image ID="Image2" runat="server" Height="131px" 
                        ImageUrl="~/img/azad.jpg" Width="104px" />

                </td>

            </tr>

            <tr>

                <td align="center" colspan="4">

                    <asp:Image ID="Image3" runat="server" ImageUrl="~/img/7.jpg" Width="395px" 
                        Height="51px" />

                </td>

            </tr>

            <tr>

                <td align="center" colspan="4">

                    <asp:TextBox ID="txtSearch" runat="server" Height="20px" Width="569px" 
                        BackColor="White" BorderColor="#CCCCFF" BorderWidth="1px" 
                        ontextchanged="txtSearch_TextChanged"></asp:TextBox>

                </td>

            </tr>

            <tr>

                <td height="40px" align="center" class="style11" colspan="4">

                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Tahoma" 

                        Height="30px" Text="چستجو" Width="273px" onclick="Button1_Click" 
                        BorderStyle="None" />

                </td>

            </tr>

            <tr>

                <td align="center" class="style12" dir="rtl" colspan="4">

                    <asp:RadioButton ID="RadioButton1" runat="server" Text="جستجوی معمولی"  GroupName="measurementSystem" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" 
                        Text="جستجوی همراه با جداسازی سایت های تبلیغاتی کاذب"  GroupName="measurementSystem" />

                    <br />

                </td>

            </tr>

            <tr>

                <td bgcolor="#99CCFF" class="style3">

                    &nbsp;</td




            </tr>

                <td bgcolor="#99CCFF" class="style3" colspan="2">

                    &nbsp;</td




            </tr>

                <td bgcolor="#AED7FF" class="style3" colspan="2">

                    &nbsp;</td




            </tr>

                <td bgcolor="#C2E0FE" class="style3" colspan="2">

                    &nbsp;</td




            </tr>

                <td bgcolor="#D6EAFE" class="style3" colspan="4">

                    &nbsp;</td




            </tr>

                <td bgcolor="#99CCFF" class="style3">

                    &nbsp;</td




            </tr>

            <tr dir="ltr">

                <td colspan="8" dir="ltr" bgcolor="#F2F9FF">

                    <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" 
                        oncheckedchanged="CheckBox1_CheckedChanged" Text="Bing" />
                    <asp:CheckBox ID="CheckBox2" runat="server" Enabled="False" Text="Google" />
                    <asp:CheckBox ID="CheckBox3" runat="server" Enabled="False" Text="Yahoo" />
                    <asp:CheckBox ID="CheckBox4" runat="server" Enabled="False" Text="Yandex" />
                    <asp:CheckBox ID="CheckBox5" runat="server" Enabled="False" Text="Ask" />

                </td>

                <td height="40px" colspan="4" bgcolor="#DDEEFF" dir="rtl">

                    : انتخاب موتور جستجو </td>

            </tr>

            <tr>

                <td class="style9" colspan="8" bgcolor="#D2E9FF">

                    این وب قادر است وب های تبلیفاتی مزاحم را شناسایی و نتایج جستجو را بهینه کند و 
                    این امر باعث صرفحه جویی در زما ن و پهنای باند&nbsp; برای کاربران اینترنتی می شود.</td>

                <td class="style7" colspan="4" bgcolor="#D6EAFE">

                    </td>

            </tr>

            <tr>

                <td colspan="12">

                    &nbsp;</td>

            </tr>

            <tr align="left">

                <td style="border-color: #999999" class="style2" colspan="12">

                    <asp:GridView ID="GridViewSearchResult" runat="server" 

                        AutoGenerateColumns="false" ShowHeader="false" Width="712px" 

                        BorderColor="White" PageSize="100">

                    <Columns>

                    <asp:TemplateField>

  

                        <ItemTemplate>

                            <asp:Label ID="lblTitle" runat="server" Text='<%# Bind("Title") %>' 

                                Font-Size="Large"></asp:Label>

                            <br />

                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Bind("Url") %>'><%#Eval("Url") %></asp:HyperLink>

                            <br />

                            <asp:Label ID="lblDescription" runat="server" Text='<%# Bind("Description") %>'></asp:Label>

                            <br />

                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#66CCFF" 
                                BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Overline="False" 
                                ForeColor="#003366" Height="18px" ReadOnly="True" Width="124px" 
                                Text='<%# Bind("darsade_ads") %>'></asp:TextBox>

                            <br />

                        </ItemTemplate>

  

                    </asp:TemplateField>

                    </Columns>

                    </asp:GridView>

                </td>

            </tr>

            <tr>

                <td style="border-color: #999999" class="style10" colspan="4">&nbsp;</td>

                <td style="border-color: #999999" colspan="8">

                    &nbsp;</td>

            </tr>

        </table>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>

</html>

