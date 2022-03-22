<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="StudentAssignment.aspx.cs" Inherits="_19030690_Abhinav_Parajuli.StudentAssignment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div style="display:flex; align-items:center">
        <h2 style="color:white">Select the Student</h2>
        <div style="margin-left:20px; margin-top:10px;">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="StudentDatasource" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID" AutoPostBack="true">
            </asp:DropDownList>
        </div> 
    </div>



           <div style="margin-top:10px"class="content-box">
        <div class="grid-holder">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" EmptyDataText="No records has been added." Width="100%" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
            <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
            <asp:BoundField DataField="ASSIGNMENT_TYPE" HeaderText="ASSIGNMENT_TYPE" SortExpression="ASSIGNMENT_TYPE" />
            <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
            <asp:BoundField DataField="GRADE" HeaderText="GRADE" SortExpression="GRADE" />
            <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, STUDENT.STUDENT_NAME, ASSIGNMENT.ASSIGNMENT_TYPE, &quot;MODULE&quot;.MODULE_NAME, MODULE_ASSIGNMENT.GRADE, MODULE_ASSIGNMENT.STATUS FROM MODULE_ASSIGNMENT, STUDENT, ASSIGNMENT, &quot;MODULE&quot; WHERE MODULE_ASSIGNMENT.STUDENT_ID = STUDENT.STUDENT_ID AND MODULE_ASSIGNMENT.ASSIGNMENT_ID = ASSIGNMENT.ASSIGNMENT_ID AND MODULE_ASSIGNMENT.MODULE_CODE = &quot;MODULE&quot;.MODULE_CODE AND (MODULE_ASSIGNMENT.STUDENT_ID = :student_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="student_id" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="StudentDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>

</asp:Content>


