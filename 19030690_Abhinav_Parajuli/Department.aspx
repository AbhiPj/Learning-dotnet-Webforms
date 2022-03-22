<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="_19030690_Abhinav_Parajuli.Department" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div>
        <h2 style="color:white; margin-bottom:50px">Department</h2>
    </div>
    <div class="content-box">
    <div class="grid-holder">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="DepartmentDatasource" Width="100%" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
             <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
                <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
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
<asp:SqlDataSource ID="DepartmentDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME)" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID">
    <DeleteParameters>
        <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
        <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
        <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
    <div style="padding:10px">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPARTMENT_ID" DataSourceID="DepartmentDatasource">
        <InsertItemTemplate>
            DEPARTMENT_NAME:
            <asp:TextBox CssClass="form-control input-sm" ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-default" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="New" Text="Add Department" />
        </ItemTemplate>
    <RowStyle ForeColor="White" />
</asp:FormView>
    </div>



</asp:Content>
