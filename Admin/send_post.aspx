<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="send_post.aspx.cs" Inherits="Admin_send_post" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style16
    {
        height: 26px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
                <table bgcolor="#F9F988" dir="rtl" 
        style="width: 503px; height: 746px;">
                    <tr>
                        <td bgcolor="#D2B026" class="style12" dir="rtl">
                            Submit a Post in public</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            <table style="height: 700px; width: 495px">
                                <tr>
                                    <td>
                                        Date:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" EnableTheming="True" 
                                            Height="16px" Width="31px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                            <asp:ListItem>13</asp:ListItem>
                                            <asp:ListItem>14</asp:ListItem>
                                            <asp:ListItem>15</asp:ListItem>
                                            <asp:ListItem>16</asp:ListItem>
                                            <asp:ListItem>17</asp:ListItem>
                                            <asp:ListItem>18</asp:ListItem>
                                            <asp:ListItem>19</asp:ListItem>
                                            <asp:ListItem>20</asp:ListItem>
                                            <asp:ListItem>21</asp:ListItem>
                                            <asp:ListItem>22</asp:ListItem>
                                            <asp:ListItem>23</asp:ListItem>
                                            <asp:ListItem>24</asp:ListItem>
                                            <asp:ListItem>25</asp:ListItem>
                                            <asp:ListItem>26</asp:ListItem>
                                            <asp:ListItem>27</asp:ListItem>
                                            <asp:ListItem>28</asp:ListItem>
                                            <asp:ListItem>29</asp:ListItem>
                                            <asp:ListItem>30</asp:ListItem>
                                            <asp:ListItem>31</asp:ListItem>
                                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" EnableTheming="True" Height="16px" Width="37px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList4" runat="server" EnableTheming="True" Height="16px" Width="53px">
                                            <asp:ListItem>1391</asp:ListItem>
                                            <asp:ListItem>1392</asp:ListItem>
                                            <asp:ListItem>1393</asp:ListItem>
                                            <asp:ListItem>1394</asp:ListItem>
                                            <asp:ListItem>1395</asp:ListItem>
                                            <asp:ListItem>1396</asp:ListItem>
                                            <asp:ListItem>1397</asp:ListItem>
                                            <asp:ListItem>1398</asp:ListItem>
                                            <asp:ListItem>1399</asp:ListItem>
                                            <asp:ListItem>1400</asp:ListItem>
                                            <asp:ListItem>1401</asp:ListItem>
                                            <asp:ListItem>1402</asp:ListItem>
                                            <asp:ListItem>1403</asp:ListItem>
                                            <asp:ListItem>1404</asp:ListItem>
                                            <asp:ListItem>1405</asp:ListItem>
                                            <asp:ListItem>1406</asp:ListItem>
                                            <asp:ListItem>1407</asp:ListItem>
                                            <asp:ListItem>1408</asp:ListItem>
                                            <asp:ListItem>1409</asp:ListItem>
                                            <asp:ListItem>1410</asp:ListItem>
                                            <asp:ListItem>1411</asp:ListItem>
                                            <asp:ListItem>1412</asp:ListItem>
                                            <asp:ListItem>1413</asp:ListItem>
                                            <asp:ListItem>1414</asp:ListItem>
                                            <asp:ListItem>1415</asp:ListItem>
                                            <asp:ListItem>1416</asp:ListItem>
                                            <asp:ListItem>1417</asp:ListItem>
                                            <asp:ListItem>1418</asp:ListItem>
                                            <asp:ListItem>1419</asp:ListItem>
                                            <asp:ListItem>1420</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Title Post :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Width="244px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        Text :</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <br />
                                        
                                        <fckeditorv2:fckeditor ID="FCKeditor1" runat="server" 
                BasePath="../"  FullPage=true Height="666px" >
			</fckeditorv2:fckeditor>

                                        
                                        
                                        <br />
                                        <br />
                                        <br />
                                        <br />

                                        
                                        
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style16">
                                        Related Part :</td>
                                    <td class="style16">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>-Choose -</asp:ListItem>
                                <asp:ListItem>آموزش برنامه نویسی جاوا(j2me)</asp:ListItem>
                                <asp:ListItem>آموزش برنامه نویسی آیفون</asp:ListItem>
                                <asp:ListItem>آموزش برنامه نویسی بادا</asp:ListItem>
                                <asp:ListItem>آموزش برنامه نویسی آندروید</asp:ListItem>
                                <asp:ListItem>آموزش برنامه نویسی سیمبین</asp:ListItem>
                                <asp:ListItem>آموزش برنامه نویسی ویندوز موبایل</asp:ListItem>
                                <asp:ListItem>oumumi</asp:ListItem>
                            </asp:DropDownList>
                                    &nbsp;
                                        
                                        
 
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="2">
                                        Related Submit :</td>
                                    <td>
                                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="g1" 
                                            Text="Choose Subject :" />
&nbsp;&nbsp;&nbsp;
                                        <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="140px" 
                                           DataTextField="subject_post" 
                                            DataValueField="subject_post">

                                             <asp:ListItem Text="-Choose -" />
                                            <asp:ListItem>کاربردی</asp:ListItem>
                                            <asp:ListItem>بازی</asp:ListItem>
                                            <asp:ListItem>مذهبی</asp:ListItem>
 
                                            <asp:ListItem>امنیتی</asp:ListItem>
                                            <asp:ListItem>آموزشی</asp:ListItem>
                                            <asp:ListItem>دیکشنری</asp:ListItem>
                                            <asp:ListItem>بانکهای ایران</asp:ListItem>
                                            <asp:ListItem>متفرقه</asp:ListItem>
                                        </asp:DropDownList>
                                       


                                        <br />
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" 
                                            Text="New Subject :" />
&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                    
                                    
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Jeywords :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox15" runat="server" Height="69px" TextMode="MultiLine" 
                                            Width="229px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="نمایش قبل از ارسال" 
                                            onclick="Button2_Click" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="ارسال" Width="56px" onclick="Button3_Click" />
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

