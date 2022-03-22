<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Address.aspx.cs" Inherits="_19030690_Abhinav_Parajuli.Address" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 style="color:white; margin-bottom:50px">Address</h2>
    </div>
    <div class="content-box">
        <div class="grid-holder">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="AddressDatasource" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="100%">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
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

    <div style="padding:10px">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="AddressDatasource">
            <InsertItemTemplate>
                ADDRESS:
                <asp:TextBox CssClass="form-control input-sm" ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-default" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CssClass="btn btn-default" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CssClass="btn btn-default" CommandName="New" Text="Add address" />
            </ItemTemplate>
            <RowStyle ForeColor="White" />
        </asp:FormView>
    </div>
<asp:SqlDataSource ID="AddressDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;ADDRESS&quot;) VALUES (:ADDRESS_ID, :ADDRESS)" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;ADDRESS&quot; = :ADDRESS WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
    <DeleteParameters>
        <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
        <asp:Parameter Name="ADDRESS" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ADDRESS" Type="String" />
        <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
