<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="Send_Softwear.aspx.cs" Inherits="Admin_Send_Softwear"  %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


    .link_keywords
    {
         font-family: tahoma; font-weight: bold;  text-decoration: underline; font-style: italic; color: #996600  ;
   }
      
 a.link_keywords:hover {font-size:medium; font-weight: bold; font-family: tahoma;  }
          
   


    .style15
    {
        width: 369px;
    }
    .style16
    {
        height: 26px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
                <table bgcolor="#F9F988" dir="rtl" 
        style="width: 368px; height: 561px;">
                    <tr>
                        <td bgcolor="#D2B026" class="style12" dir="rtl">
                            Submit a Software - 提交软件&nbsp; </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            <table>
                                <tr>
                                    <td>
                                        Date</td>
                                    <td colspan="5">
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
                                            <asp:ListItem>2017</asp:ListItem>
                                            <asp:ListItem>2018</asp:ListItem>
                                            <asp:ListItem>2019</asp:ListItem>
                                            <asp:ListItem>2020</asp:ListItem>
                                            <asp:ListItem>2021</asp:ListItem>
                                            <asp:ListItem>2022</asp:ListItem>
                                            <asp:ListItem>2023</asp:ListItem>
                                            <asp:ListItem>2024</asp:ListItem>
                                            <asp:ListItem>2025</asp:ListItem>
                                            <asp:ListItem>2026</asp:ListItem>
                                            <asp:ListItem>2027</asp:ListItem>
                                            <asp:ListItem>2028</asp:ListItem>
                                            <asp:ListItem>2029</asp:ListItem>
                                            <asp:ListItem>2030</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Title:</td>
                                    <td colspan="5">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Upload Pic :</td>
                                    <td colspan="5">
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    &nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td>
                                        URl Pic</td>
                                    <td colspan="5">
                                        <asp:TextBox ID="TextBox7" runat="server" Width="248px"></asp:TextBox>
                                        </td>
                                </tr>
                                <tr>
                                    <td>
                                        Upload File:</td>
                                    <td colspan="5">
                                        <asp:FileUpload ID="FileUpload2" runat="server" />
                                    &nbsp;
                                        </td>
                                </tr>
                                <tr>
                                    <td>
                                        Url File :</td>
                                    <td colspan="5">
                                        <asp:TextBox ID="TextBox8" runat="server" Width="243px"></asp:TextBox>
                                        </td>
                                </tr>


<tr>
                                    <td>
                                        Size</td>
                                    <td colspan="5">
                                    <asp:TextBox ID="TextBox15" runat="server"  Width="78px"></asp:TextBox>
                                        </td>
                                </tr>




                                <tr>
                                    <td>
                                        Password :</td>
                                    <td colspan="5">
                                        <asp:TextBox ID="TextBox_Password" runat="server"></asp:TextBox>
                                    </td>
                                </tr>




                                <tr>
                                    <td>
                                        Text:</td>
                                    <td colspan="5">


 
<FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" 
                BasePath="../"  FullPage=true    Height="610px"  Width="600px" ContentLangDirection="RightToLeft" >
			</FCKeditorV2:FCKeditor>


                                    </td>
                                </tr>
                              

<tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="5">
                                        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                                            Text="Copy Html" />
                                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                        <br />
                                       
 </td>

                                </tr>







  <tr>
                                    <td>
                                        Abstract</td>
                                    <td colspan="5">
                                        <asp:TextBox ID="TextBox4" runat="server" Height="91px" TextMode="MultiLine" 
                                            Width="269px"></asp:TextBox>
                                    </td>
                                </tr>


                                <tr>
                                    <td class="style16">
                                        Related part - menu</td>
                                    <td class="style16" colspan="5">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>Choose</asp:ListItem>
                                <asp:ListItem>نرم افزار آندروید</asp:ListItem>
                                <asp:ListItem>نرم افزار جاوا</asp:ListItem>
                                 <asp:ListItem>نرم افزار آیفون</asp:ListItem>
                                <asp:ListItem>نرم افزار بادا</asp:ListItem>
                                <asp:ListItem>عمومی</asp:ListItem>
                                <asp:ListItem>اخبار</asp:ListItem>
                            </asp:DropDownList>
                                    &nbsp;
                                        
                                        
 
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="2">
                                        Subjet Related:</td>
                                    <td colspan="5">
                                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="g1" 
                                            Text="Choose Subject :" />
&nbsp;&nbsp;&nbsp;
                                        <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="140px" 
                                            DataSourceID="SqlDataSource1" DataTextField="subject_post" 
                                            DataValueField="subject_post">

                                             <asp:ListItem Text="-Choose car-" />
                                            <asp:ListItem>کاربردی</asp:ListItem>
                                            <asp:ListItem>بازی</asp:ListItem>
                                            <asp:ListItem>مذهبی</asp:ListItem>
 
                                            <asp:ListItem>امنیتی</asp:ListItem>
                                            <asp:ListItem>آموزشی</asp:ListItem>
                                            <asp:ListItem>دیکشنری</asp:ListItem>
                                            <asp:ListItem>بانکهای ایران</asp:ListItem>
                                            <asp:ListItem>متفرقه</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT DISTINCT [subject_post] FROM [demah].[send_softwear] WHERE [subject_post]!='';-- ">
                                        </asp:SqlDataSource>
                                        <br />
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5">
                                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" 
                                            Text="New Subject :" />
&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                    
                                    
                                    
                                    </td>
                                </tr>

                                <tr>
                                   
 
            <td class="style16">
                                Key words:</td>
                            <td class="style16">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                                        </asp:ScriptManager>
                                        <table dir="rtl">
                                            <tr>
                                                <td align="right">
                                                    Keywords:</td>
                                                <td dir="rtl">
                                                    <asp:TextBox ID="TextBox16" runat="server" Height="75px" TextMode="MultiLine" 
                                                        Width="150px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    URl Link</td>
                                                <td dir="rtl">
                                                    <asp:TextBox ID="TextBox17" runat="server" Height="25px" Width="151px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Button ID="Button1" runat="server" CssClass="button" Height="26px" 
                                                        onclick="Button1_Click" Text="Add" />
                                                </td>
                                                <td dir="rtl">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h3>
                                                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                                   
                                             
                                   </h3>
                                                </td>
                                            </tr>






                                            <tr>
                                                <td colspan="2">
                                            
                                                    
      <asp:TextBox ID="TextBox19" runat="server" Height="25px" Width="50px"></asp:TextBox>
                                              
 
                                                </td>
                                            </tr>




                                        </table>
                                        <br />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </td>



                                </tr>



                                <tr>
                                    <td>
                                        Source</td>
                                    <td colspan="5">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                </tr>




                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="5">
                                        <asp:Button ID="Button2" runat="server" Text="--" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="Submit" Width="56px" onclick="Button3_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td colspan="5">
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        &nbsp;</td>
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

