<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentFee.aspx.cs" MasterPageFile="~/Site.Master" Inherits="_19030690_Abhinav_Parajuli.StudentFee" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="StudentFeeDatasource" EmptyDataText="No records has been added.">
        <Columns>
            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
            <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
            <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
            <asp:BoundField DataField="DATE_OF_PAYMENT" HeaderText="DATE_OF_PAYMENT" SortExpression="DATE_OF_PAYMENT" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="StudentFeeDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, STUDENT.STUDENT_NAME, FEE.AMOUNT, FEE.DATE_OF_PAYMENT FROM FEE, STUDENT WHERE FEE.STUDENT_ID = STUDENT.STUDENT_ID AND (FEE.STUDENT_ID = :STUDENT_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="StudentDatasource" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID" AutoPostBack="true">
    </asp:DropDownList>
    <asp:SqlDataSource ID="StudentDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>

</asp:Content>
