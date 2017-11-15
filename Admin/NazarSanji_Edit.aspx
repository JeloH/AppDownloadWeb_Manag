<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="NazarSanji_Edit.aspx.cs" Inherits="Admin_NazarSanji_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
        {
            height: 97px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
                <table bgcolor="#F9F988" dir="rtl" 
        style="height: 19px;">
                    <tr>
                        <td bgcolor="#D2B026" class="style12" dir="rtl">
                            نتیجه نظر سنجی</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" DataKeyNames="code" 
                                DataSourceID="SqlDataSource1" AllowSorting="True">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                        CancelText="Close" DeleteText="Remove" EditText="Edit" 
                                        UpdateText="Update" />
                                    <asp:BoundField DataField="code" HeaderText="ID" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="code" />
                                    <asp:BoundField DataField="question" HeaderText="Question" 
                                        SortExpression="question" />
                                    <asp:BoundField DataField="a" HeaderText="Choose_A" SortExpression="a" />
                                    <asp:BoundField DataField="b" HeaderText="Choose_B" SortExpression="b" />
                                    <asp:BoundField DataField="c" HeaderText="Choose_C" SortExpression="c" />
                                    <asp:BoundField DataField="d" HeaderText="Choose_D" SortExpression="d" />
                                    <asp:BoundField DataField="a_text" HeaderText="Text_Choose_A" 
                                        SortExpression="a_text" />
                                    <asp:BoundField DataField="b_text" HeaderText="Text_Choose_B" 
                                        SortExpression="b_text" />
                                    <asp:BoundField DataField="c_text" HeaderText="Text_Choose_C" 
                                        SortExpression="c_text" />
                                    <asp:BoundField DataField="d_text" HeaderText="Text_Choose_D" 
                                        SortExpression="d_text" />
                                    <asp:BoundField DataField="date_create" HeaderText="Date:" 
                                        SortExpression="date_create" />
                                    <asp:CheckBoxField DataField="Enable" HeaderText="Status_for_show_in_Website" 
                                        SortExpression="Enable" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [nazarsanji] WHERE [code] = @original_code AND (([question] = @original_question) OR ([question] IS NULL AND @original_question IS NULL)) AND (([a] = @original_a) OR ([a] IS NULL AND @original_a IS NULL)) AND (([b] = @original_b) OR ([b] IS NULL AND @original_b IS NULL)) AND (([c] = @original_c) OR ([c] IS NULL AND @original_c IS NULL)) AND (([d] = @original_d) OR ([d] IS NULL AND @original_d IS NULL)) AND (([a_text] = @original_a_text) OR ([a_text] IS NULL AND @original_a_text IS NULL)) AND (([b_text] = @original_b_text) OR ([b_text] IS NULL AND @original_b_text IS NULL)) AND (([c_text] = @original_c_text) OR ([c_text] IS NULL AND @original_c_text IS NULL)) AND (([d_text] = @original_d_text) OR ([d_text] IS NULL AND @original_d_text IS NULL)) AND (([date_create] = @original_date_create) OR ([date_create] IS NULL AND @original_date_create IS NULL)) AND (([Enable] = @original_Enable) OR ([Enable] IS NULL AND @original_Enable IS NULL))" 
                                InsertCommand="INSERT INTO [nazarsanji] ([question], [a], [b], [c], [d], [a_text], [b_text], [c_text], [d_text], [date_create], [Enable]) VALUES (@question, @a, @b, @c, @d, @a_text, @b_text, @c_text, @d_text, @date_create, @Enable)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [code], [question], [a], [b], [c], [d], [a_text], [b_text], [c_text], [d_text], [date_create], [Enable] FROM [nazarsanji]" 
                                UpdateCommand="UPDATE [nazarsanji] SET [question] = @question, [a] = @a, [b] = @b, [c] = @c, [d] = @d, [a_text] = @a_text, [b_text] = @b_text, [c_text] = @c_text, [d_text] = @d_text, [date_create] = @date_create, [Enable] = @Enable WHERE [code] = @original_code AND (([question] = @original_question) OR ([question] IS NULL AND @original_question IS NULL)) AND (([a] = @original_a) OR ([a] IS NULL AND @original_a IS NULL)) AND (([b] = @original_b) OR ([b] IS NULL AND @original_b IS NULL)) AND (([c] = @original_c) OR ([c] IS NULL AND @original_c IS NULL)) AND (([d] = @original_d) OR ([d] IS NULL AND @original_d IS NULL)) AND (([a_text] = @original_a_text) OR ([a_text] IS NULL AND @original_a_text IS NULL)) AND (([b_text] = @original_b_text) OR ([b_text] IS NULL AND @original_b_text IS NULL)) AND (([c_text] = @original_c_text) OR ([c_text] IS NULL AND @original_c_text IS NULL)) AND (([d_text] = @original_d_text) OR ([d_text] IS NULL AND @original_d_text IS NULL)) AND (([date_create] = @original_date_create) OR ([date_create] IS NULL AND @original_date_create IS NULL)) AND (([Enable] = @original_Enable) OR ([Enable] IS NULL AND @original_Enable IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_code" Type="Int32" />
                                    <asp:Parameter Name="original_question" Type="String" />
                                    <asp:Parameter Name="original_a" Type="Int32" />
                                    <asp:Parameter Name="original_b" Type="Int32" />
                                    <asp:Parameter Name="original_c" Type="Int32" />
                                    <asp:Parameter Name="original_d" Type="Int32" />
                                    <asp:Parameter Name="original_a_text" Type="String" />
                                    <asp:Parameter Name="original_b_text" Type="String" />
                                    <asp:Parameter Name="original_c_text" Type="String" />
                                    <asp:Parameter Name="original_d_text" Type="String" />
                                    <asp:Parameter Name="original_date_create" Type="String" />
                                    <asp:Parameter Name="original_Enable" Type="Boolean" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="question" Type="String" />
                                    <asp:Parameter Name="a" Type="Int32" />
                                    <asp:Parameter Name="b" Type="Int32" />
                                    <asp:Parameter Name="c" Type="Int32" />
                                    <asp:Parameter Name="d" Type="Int32" />
                                    <asp:Parameter Name="a_text" Type="String" />
                                    <asp:Parameter Name="b_text" Type="String" />
                                    <asp:Parameter Name="c_text" Type="String" />
                                    <asp:Parameter Name="d_text" Type="String" />
                                    <asp:Parameter Name="date_create" Type="String" />
                                    <asp:Parameter Name="Enable" Type="Boolean" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="question" Type="String" />
                                    <asp:Parameter Name="a" Type="Int32" />
                                    <asp:Parameter Name="b" Type="Int32" />
                                    <asp:Parameter Name="c" Type="Int32" />
                                    <asp:Parameter Name="d" Type="Int32" />
                                    <asp:Parameter Name="a_text" Type="String" />
                                    <asp:Parameter Name="b_text" Type="String" />
                                    <asp:Parameter Name="c_text" Type="String" />
                                    <asp:Parameter Name="d_text" Type="String" />
                                    <asp:Parameter Name="date_create" Type="String" />
                                    <asp:Parameter Name="Enable" Type="Boolean" />
                                    <asp:Parameter Name="original_code" Type="Int32" />
                                    <asp:Parameter Name="original_question" Type="String" />
                                    <asp:Parameter Name="original_a" Type="Int32" />
                                    <asp:Parameter Name="original_b" Type="Int32" />
                                    <asp:Parameter Name="original_c" Type="Int32" />
                                    <asp:Parameter Name="original_d" Type="Int32" />
                                    <asp:Parameter Name="original_a_text" Type="String" />
                                    <asp:Parameter Name="original_b_text" Type="String" />
                                    <asp:Parameter Name="original_c_text" Type="String" />
                                    <asp:Parameter Name="original_d_text" Type="String" />
                                    <asp:Parameter Name="original_date_create" Type="String" />
                                    <asp:Parameter Name="original_Enable" Type="Boolean" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" bgcolor="#D2B026">
                            </td>
                    </tr>
                </table>
                <br />
    </p>
</asp:Content>

