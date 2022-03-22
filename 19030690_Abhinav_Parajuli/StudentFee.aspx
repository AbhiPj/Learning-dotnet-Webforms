<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentFee.aspx.cs" MasterPageFile="~/Site.Master" Inherits="_19030690_Abhinav_Parajuli.StudentFee" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="display:flex; align-items:center">
        <h2 style="color:white">Select the student</h2>
        <div style="margin-left:20px; margin-top:10px;">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="StudentDatasource" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID" AutoPostBack="true">
            </asp:DropDownList>
        </div> 
</div>
        <div style="margin-top:10px"class="content-box">
        <div class="grid-holder">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="StudentFeeDatasource" EmptyDataText="No records has been added." Width="100%" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
            <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
            <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" SortExpression="AMOUNT" />
            <asp:BoundField DataField="DATE_OF_PAYMENT" HeaderText="DATE_OF_PAYMENT" SortExpression="DATE_OF_PAYMENT" />
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
    <asp:SqlDataSource ID="StudentFeeDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, STUDENT.STUDENT_NAME, FEE.AMOUNT, FEE.DATE_OF_PAYMENT FROM FEE, STUDENT WHERE FEE.STUDENT_ID = STUDENT.STUDENT_ID AND (FEE.STUDENT_ID = :STUDENT_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="StudentDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT &quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot; FROM &quot;STUDENT&quot;"></asp:SqlDataSource>

</asp:Content>
