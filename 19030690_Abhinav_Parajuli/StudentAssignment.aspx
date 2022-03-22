<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="StudentAssignment.aspx.cs" Inherits="_19030690_Abhinav_Parajuli.StudentAssignment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1" EmptyDataText="No records has been added.">
        <Columns>
            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
            <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
            <asp:BoundField DataField="ASSIGNMENT_TYPE" HeaderText="ASSIGNMENT_TYPE" SortExpression="ASSIGNMENT_TYPE" />
            <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
            <asp:BoundField DataField="GRADE" HeaderText="GRADE" SortExpression="GRADE" />
            <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, STUDENT.STUDENT_NAME, ASSIGNMENT.ASSIGNMENT_TYPE, &quot;MODULE&quot;.MODULE_NAME, MODULE_ASSIGNMENT.GRADE, MODULE_ASSIGNMENT.STATUS FROM MODULE_ASSIGNMENT, STUDENT, ASSIGNMENT, &quot;MODULE&quot; WHERE MODULE_ASSIGNMENT.STUDENT_ID = STUDENT.STUDENT_ID AND MODULE_ASSIGNMENT.ASSIGNMENT_ID = ASSIGNMENT.ASSIGNMENT_ID AND MODULE_ASSIGNMENT.MODULE_CODE = &quot;MODULE&quot;.MODULE_CODE AND (MODULE_ASSIGNMENT.STUDENT_ID = :student_id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="student_id" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="StudentDatasource" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID" AutoPostBack="true">
    </asp:DropDownList>
    <asp:SqlDataSource ID="StudentDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>

</asp:Content>


