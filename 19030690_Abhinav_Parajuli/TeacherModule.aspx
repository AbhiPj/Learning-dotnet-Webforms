<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TeacherModule.aspx.cs" Inherits="_19030690_Abhinav_Parajuli.TeacherModule" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="display:flex; align-items:center">
        <h2 style="color:white">Select the Teacher</h2>
        <div style="margin-left:20px; margin-top:10px;">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="TeacherDatasource" DataTextField="TEACHER_NAME" DataValueField="TEACHER_ID" AutoPostBack="true">
            </asp:DropDownList>
        </div> 
    </div>
   

    <div style="margin-top:10px"class="content-box">
        <div class="grid-holder">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID,MODULE_CODE" DataSourceID="TeacherModuleDatasource" EmptyDataText="No records has been added." BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="100%">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                    <asp:BoundField DataField="TEACHER_NAME" HeaderText="TEACHER_NAME" SortExpression="TEACHER_NAME" />
                    <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" ReadOnly="True" SortExpression="MODULE_CODE" />
                    <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                    <asp:BoundField DataField="CREDIT_HOUR" HeaderText="CREDIT_HOUR" SortExpression="CREDIT_HOUR" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
         </div>
     </div>
    <asp:SqlDataSource ID="TeacherModuleDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT TEACHER.TEACHER_ID, TEACHER.TEACHER_NAME, &quot;MODULE&quot;.MODULE_CODE, &quot;MODULE&quot;.MODULE_NAME, &quot;MODULE&quot;.CREDIT_HOUR FROM TEACHER_MODULE, TEACHER, &quot;MODULE&quot; WHERE TEACHER_MODULE.TEACHER_ID = TEACHER.TEACHER_ID AND TEACHER_MODULE.MODULE_CODE = &quot;MODULE&quot;.MODULE_CODE AND (TEACHER_MODULE.TEACHER_ID = :TEACHER_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="TEACHER_ID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="TeacherDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT &quot;TEACHER_ID&quot;, &quot;TEACHER_NAME&quot; FROM &quot;TEACHER&quot;"></asp:SqlDataSource>

</asp:Content>
