<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Students.aspx.cs" Inherits="_19030690_Abhinav_Parajuli.Students" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
        <h2 style="color:white; margin-bottom:50px">Students</h2>
    </div>
    <div class="content-box">
        <div class="grid-holder">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="StudentDatasource" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="100%">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                    <asp:BoundField DataField="STUDENT_ADDRESS" HeaderText="STUDENT_ADDRESS" SortExpression="STUDENT_ADDRESS" />
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
    <div  style="min-height:20vh; height:auto; margin-top:10px; padding:10px">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID" DataSourceID="StudentDatasource" Width="443px">
            <EditRowStyle ForeColor="White" />
            <InsertItemTemplate>
                STUDENT_NAME:
                <asp:TextBox CssClass="form-control input-sm" ID="STUDENT_NAMETextBox" runat="server" Text='<%# Bind("STUDENT_NAME") %>' />
                <br />
                STUDENT_ADDRESS:
                <asp:TextBox CssClass="form-control input-sm" ID="STUDENT_ADDRESSTextBox" runat="server" Text='<%# Bind("STUDENT_ADDRESS") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-default" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                &nbsp;<asp:LinkButton ID="NewButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <RowStyle ForeColor="White" Wrap="False" />
        </asp:FormView>
    </div>
    <asp:SqlDataSource ID="StudentDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;STUDENT_ADDRESS&quot;) VALUES (:STUDENT_ID, :STUDENT_NAME, :STUDENT_ADDRESS)" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;STUDENT_ADDRESS&quot; = :STUDENT_ADDRESS WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
        <DeleteParameters>
            <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
            <asp:Parameter Name="STUDENT_NAME" Type="String" />
            <asp:Parameter Name="STUDENT_ADDRESS" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="STUDENT_NAME" Type="String" />
            <asp:Parameter Name="STUDENT_ADDRESS" Type="String" />
            <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
        </UpdateParameters>
</asp:SqlDataSource>


</asp:Content>
