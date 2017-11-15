<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="Edit_Softwear.aspx.cs" Inherits="Admin_Edit_Softwear" ValidateRequest="false" %>

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
            Edit Software</td>
    </tr>
    <tr>
        <td align="right">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [demah].[send_softwear] WHERE [code_post] = @original_code_post" 
                InsertCommand="INSERT INTO [demah].[send_softwear] ([date], [title], [img_address], [soft_address], [body], [Abstruct], [type], [lenght], [source_company], [seo], [subject_post],[password_softwear]) VALUES (@date, @title, @img_address, @soft_address, @body, @Abstruct, @type, @lenght, @source_company, @seo, @subject_post,@password_softwear)" 
                OldValuesParameterFormatString="original_{0}" 

                SelectCommand="SELECT [code_post], [date], [title], [img_address], [soft_address], [body], [Abstruct], [type], [lenght], [source_company], [seo], [subject_post],[password_softwear] FROM [demah].[send_softwear] order by [code_post] DESC" 
 

                UpdateCommand="UPDATE [demah].[send_softwear] SET [date] = @date, [title] = @title, [img_address] = @img_address, [soft_address] = @soft_address, [body] = @body, [Abstruct] = @Abstruct, [type] = @type, [lenght] = @lenght, [source_company] = @source_company, [seo] = @seo, [subject_post] = @subject_post , [password_softwear] = @password_softwear WHERE [code_post] = @original_code_post">
                <DeleteParameters>
                    <asp:Parameter Name="original_code_post" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="date" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="img_address" Type="String" />
                    <asp:Parameter Name="soft_address" Type="String" />
                    <asp:Parameter Name="body" Type="String" />
                    <asp:Parameter Name="Abstruct" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="lenght" Type="String" />
                    <asp:Parameter Name="source_company" Type="String" />
   <asp:Parameter Name="password_softwear" Type="String" />
                                      
<asp:Parameter Name="seo" Type="String" />
                    <asp:Parameter Name="subject_post" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="date" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="img_address" Type="String" />
                    <asp:Parameter Name="soft_address" Type="String" />
                    <asp:Parameter Name="body" Type="String" />
                    <asp:Parameter Name="Abstruct" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="lenght" Type="String" />
                    <asp:Parameter Name="source_company" Type="String" />
   <asp:Parameter Name="password_softwear" Type="String" />
                                      
<asp:Parameter Name="seo" Type="String" />
                    <asp:Parameter Name="subject_post" Type="String" />
                    <asp:Parameter Name="original_code_post" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="code_post" 
                DataSourceID="SqlDataSource1" EnableModelValidation="True" 
                onselectedindexchanged="ListView1_SelectedIndexChanged1">
                <AlternatingItemTemplate>
                    کد<span style="background-color: #F1F17C; "> پست:&nbsp;&nbsp;
                    <asp:Label ID="code_postLabel" runat="server" Text='<%# Eval("code_post") %>'></asp:Label>
                    <br />
                    Date of Submission:&nbsp;
                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                    <br />
                    Title:&nbsp;
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                    <br />
                    ULR pic:&nbsp;
                    <asp:Label ID="img_addressLabel" runat="server" 
                        Text='<%# Eval("img_address") %>'></asp:Label>
                    <br />
                    URL Software:&nbsp;
                    <asp:Label ID="soft_addressLabel" runat="server" 
                        Text='<%# Eval("soft_address") %>'></asp:Label>
                    <br />
                    Text:&nbsp;&nbsp;
                    <asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>'></asp:Label>
                    <br />
                    Pre-Text:&nbsp;&nbsp;
                    <asp:Label ID="AbstructLabel" runat="server" Text='<%# Eval("Abstruct") %>'></asp:Label>
                    <br />
                    Type of Software:&nbsp;&nbsp;
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                    <br />
                    Size:&nbsp;&nbsp;
                    <asp:Label ID="lenghtLabel" runat="server" Text='<%# Eval("lenght") %>'></asp:Label>

                    <br />
                    Source:&nbsp;&nbsp;
                    <asp:Label ID="source_companyLabel" runat="server" 
                        Text='<%# Eval("source_company") %>'></asp:Label>
                    <br />



                    <br />
                    Password:&nbsp;&nbsp;
                    <asp:Label ID="password_softwear" runat="server" 
                        Text='<%# Eval("password_softwear") %>'></asp:Label>
                    <br />


                    Keywords:&nbsp;&nbsp;
                    <asp:Label ID="seoLabel" runat="server" Text='<%# Eval("seo") %>'></asp:Label>
                    <br />
                    Related Part:&nbsp;&nbsp;
                    <asp:Label ID="subject_postLabel" runat="server" 
                        Text='<%# Eval("subject_post") %>'></asp:Label>
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Remove" />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    ID Post<span style="background-color: #DFC24F; color: #0000FF;">:
                    <asp:Label ID="code_postLabel1" runat="server" Text='<%# Eval("code_post") %>'></asp:Label>
                    <br />
                   Date of Submission:
                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                    <br />
                    Title:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                    <br />
                    URl Pic:
                    <asp:TextBox ID="img_addressTextBox" runat="server" 
                        Text='<%# Bind("img_address") %>'></asp:TextBox>
                    <br />
                    Url Software:
                    <asp:TextBox ID="soft_addressTextBox" runat="server" 
                        Text='<%# Bind("soft_address") %>'></asp:TextBox>
                    <br />
                    Text:
                    <asp:TextBox ID="bodyTextBox" runat="server" Text='<%# Bind("body") %>'></asp:TextBox>
                    <br />
                    Pre-Text:
                    <asp:TextBox ID="AbstructTextBox" runat="server" Text='<%# Bind("Abstruct") %>'></asp:TextBox>
                    <br />
                    Type of Software:
                    <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                    <br />
                    Size:
                    <asp:TextBox ID="lenghtTextBox" runat="server" Text='<%# Bind("lenght") %>'></asp:TextBox>
                    <br />
                    Source:
                    <asp:TextBox ID="source_companyTextBox" runat="server" 
                        Text='<%# Bind("source_company") %>'></asp:TextBox>
                    <br />


<br />
                    Password:
                    <asp:TextBox ID="password_softwear" runat="server" 
                        Text='<%# Bind("password_softwear") %>'></asp:TextBox>
                    <br />

                    Keywords:
                    <asp:TextBox ID="seoTextBox" runat="server" Text='<%# Bind("seo") %>'></asp:TextBox>
                    <br />
                    Related Part:
                    <asp:TextBox ID="subject_postTextBox" runat="server" 
                        Text='<%# Bind("subject_post") %>'></asp:TextBox>
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Close" Text="Close" />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <div ID="itemPlaceholderContainer" runat="server" 
                        style="font-family: Verdana, Arial, Helvetica, sans-serif; background-color: #F1F17C;">
                        کد پست<span style="background-color: #008A8C; color: #FFFFFF;">:
                        <asp:Label ID="code_postLabel1" runat="server" Text='<%# Eval("code_post") %>'></asp:Label>
                        <br />
                        تاریخ ارسال:
                        <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                        <br />
                        عنوان:
                        <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>'></asp:TextBox>
                        <br />
                        آدرس عکس:
                        <asp:TextBox ID="img_addressTextBox" runat="server" 
                            Text='<%# Bind("img_address") %>'></asp:TextBox>
                        <br />
                        آدرس نرم افزار:
                        <asp:TextBox ID="soft_addressTextBox" runat="server" 
                            Text='<%# Bind("soft_address") %>'></asp:TextBox>
                        <br />
                        متن:
                        <asp:TextBox ID="bodyTextBox" runat="server" Text='<%# Bind("body") %>'></asp:TextBox>
                        <br />
                        پیش متن:
                        <asp:TextBox ID="AbstructTextBox" runat="server" Text='<%# Bind("Abstruct") %>'></asp:TextBox>
                        <br />
                        نوع نرم افزار:
                        <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                        <br />
                        اندازه:
                        <asp:TextBox ID="lenghtTextBox" runat="server" Text='<%# Bind("lenght") %>'></asp:TextBox>
                        <br />
                        منبع:
                        <asp:TextBox ID="source_companyTextBox" runat="server" 
                            Text='<%# Bind("source_company") %>'></asp:TextBox>
                        <br />


 <br />
                        پسورد:
                        <asp:TextBox ID="password_softwear" runat="server" 
                            Text='<%# Bind("password_softwear") %>'></asp:TextBox>
                        <br />



                        کلمات کلیدی:
                        <asp:TextBox ID="seoTextBox" runat="server" Text='<%# Bind("seo") %>'></asp:TextBox>
                        <br />
                        بخش مربوطه:
                        <asp:TextBox ID="subject_postTextBox" runat="server" 
                            Text='<%# Bind("subject_post") %>'></asp:TextBox>
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="به روز رسانی" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="بستن" Text="ب" />
                        <br />
                        <br />
                        </span>
                    </div>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" FirstPageText="اولی" 
                                    ShowFirstPageButton="True" ShowNextPageButton="False" 
                                    ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" FirstPageText="اولی" 
                                    LastPageText="آخری" ShowLastPageButton="True" ShowNextPageButton="False" 
                                    ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">date:
                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                    <br />
                    title:
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                    <br />
                    img_address:
                    <asp:TextBox ID="img_addressTextBox" runat="server" 
                        Text='<%# Bind("img_address") %>' />
                    <br />
                    soft_address:
                    <asp:TextBox ID="soft_addressTextBox" runat="server" 
                        Text='<%# Bind("soft_address") %>' />
                    <br />
                    body:
                    <asp:TextBox ID="bodyTextBox" runat="server" Text='<%# Bind("body") %>' />
                    <br />
                    Abstruct:
                    <asp:TextBox ID="AbstructTextBox" runat="server" 
                        Text='<%# Bind("Abstruct") %>' />
                    <br />
                    type:
                    <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                    <br />
                    lenght:
                    <asp:TextBox ID="lenghtTextBox" runat="server" Text='<%# Bind("lenght") %>' />
                    <br />
                    source_company:
                    <asp:TextBox ID="source_companyTextBox" runat="server" 
                        Text='<%# Bind("source_company") %>' />
                    <br />

 <br />
                    password_softwear:
                    <asp:TextBox ID="password_softwear" runat="server" 
                        Text='<%# Bind("password_softwear") %>' />
                    <br />

                    seo:
                    <asp:TextBox ID="seoTextBox" runat="server" Text='<%# Bind("seo") %>' />
                    <br />
                    subject_post:
                    <asp:TextBox ID="subject_postTextBox" runat="server" 
                        Text='<%# Bind("subject_post") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                    <br />
                    <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    کد پست<span style="background-color: #F1F17C; color: #0000FF;">:
                    <asp:Label ID="code_postLabel" runat="server" Text='<%# Eval("code_post") %>'></asp:Label>
                    <br />
                    تاریخ ارسالی:
                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                    <br />
                    عنوان:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                    <br />
                    آدرس عکس:
                    <asp:Label ID="img_addressLabel" runat="server" 
                        Text='<%# Eval("img_address") %>'></asp:Label>
                    <br />
                    آدرس نرم افزار:
                    <asp:Label ID="soft_addressLabel" runat="server" 
                        Text='<%# Eval("soft_address") %>'></asp:Label>
                    <br />
                    متن:
                    <asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>'></asp:Label>
                    <br />
                    پیش متن:
                    <asp:Label ID="AbstructLabel" runat="server" Text='<%# Eval("Abstruct") %>'></asp:Label>
                    <br />
                    نوع نرم افزار:
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                    <br />
                    اندازه:
                    <asp:Label ID="lenghtLabel" runat="server" Text='<%# Eval("lenght") %>'></asp:Label>
                    <br />
                    منبع:
                    <asp:Label ID="source_companyLabel" runat="server" 
                        Text='<%# Eval("source_company") %>'></asp:Label>
                    <br />

<br />
                    پسورد:
                    <asp:Label ID="password_softwear" runat="server" 
                        Text='<%# Eval("password_softwear") %>'></asp:Label>
                    <br />



                    کلمات کلیدی:
                    <asp:Label ID="seoLabel" runat="server" Text='<%# Eval("seo") %>'></asp:Label>
                    <br />
                    بخش مربوطه:
                    <asp:Label ID="subject_postLabel" runat="server" 
                        Text='<%# Eval("subject_post") %>'></asp:Label>
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="ویرایش" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="حذف" />
                    <br />
                    <br />
                    </span>
                    <br />
                    <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div ID="itemPlaceholderContainer" runat="server" 
                        style="font-family: Verdana, Arial, Helvetica, sans-serif; background-color: #F1F17C; color: #1E21FE;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" FirstPageText="اولی" 
                                    ShowFirstPageButton="True" ShowNextPageButton="False" 
                                    ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" FirstPageText="اولی" 
                                    LastPageText="آخری" ShowLastPageButton="True" ShowNextPageButton="False" 
                                    ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                    <br />
                    <br />
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
                    code_post:
                    <asp:Label ID="code_postLabel" runat="server" Text='<%# Eval("code_post") %>' />
                    <br />
                    date:
                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                    <br />
                    title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    <br />
                    img_address:
                    <asp:Label ID="img_addressLabel" runat="server" 
                        Text='<%# Eval("img_address") %>' />
                    <br />
                    soft_address:
                    <asp:Label ID="soft_addressLabel" runat="server" 
                        Text='<%# Eval("soft_address") %>' />
                    <br />
                    body:
                    <asp:Label ID="bodyLabel" runat="server" Text='<%# Eval("body") %>' />
                    <br />
                    Abstruct:
                    <asp:Label ID="AbstructLabel" runat="server" Text='<%# Eval("Abstruct") %>' />
                    <br />

                    type:
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br />
                    lenght:
                    <asp:Label ID="lenghtLabel" runat="server" Text='<%# Eval("lenght") %>' />
                    <br />
                    source_company:
                    <asp:Label ID="source_companyLabel" runat="server" 
                        Text='<%# Eval("source_company") %>' />
                    <br />

Password:
                    <asp:Label ID="password_softwear" runat="server" 
                        Text='<%# Eval("password_softwear") %>' />
                    <br />

                    seo:
                    <asp:Label ID="seoLabel" runat="server" Text='<%# Eval("seo") %>' />
                    <br />
                    subject_post:
                    <asp:Label ID="subject_postLabel" runat="server" 
                        Text='<%# Eval("subject_post") %>' />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <br />
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
        </td>
    </tr>
    <tr>
        <td bgcolor="#D2B026">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

