<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Module.aspx.cs" Inherits="_19030690_Abhinav_Parajuli.Module" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div>
        <h2 style="color:white; margin-bottom:50px">Module</h2>
    </div>
        <div class="content-box">
            <div class="grid-holder">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MODULE_CODE" DataSourceID="ModuleDatasource" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="100%">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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

<asp:SqlDataSource ID="ModuleDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" DeleteCommand="DELETE FROM &quot;MODULE&quot; WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE" InsertCommand="INSERT INTO &quot;MODULE&quot; (&quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;CREDIT_HOUR&quot;) VALUES (:MODULE_CODE, :MODULE_NAME, :CREDIT_HOUR)" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT * FROM &quot;MODULE&quot;" UpdateCommand="UPDATE &quot;MODULE&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDIT_HOUR&quot; = :CREDIT_HOUR WHERE &quot;MODULE_CODE&quot; = :MODULE_CODE">
    <DeleteParameters>
        <asp:Parameter Name="MODULE_CODE" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MODULE_CODE" Type="String" />
        <asp:Parameter Name="MODULE_NAME" Type="String" />
        <asp:Parameter Name="CREDIT_HOUR" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="MODULE_NAME" Type="String" />
        <asp:Parameter Name="CREDIT_HOUR" Type="Decimal" />
        <asp:Parameter Name="MODULE_CODE" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>

<div style="padding:10px">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MODULE_CODE" DataSourceID="ModuleDatasource">
        <EditRowStyle ForeColor="White" />
        <InsertItemTemplate>
            MODULE_NAME:
            <asp:TextBox CssClass="form-control input-sm" ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
            <br />
            CREDIT_HOUR:
            <asp:TextBox CssClass="form-control input-sm" ID="CREDIT_HOURTextBox" runat="server" Text='<%# Bind("CREDIT_HOUR") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CssClass="btn btn-default" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CssClass="btn btn-default" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CssClass="btn btn-default" CommandName="New" Text="Add module" />
        </ItemTemplate>
    </asp:FormView>
</div>
</asp:Content>
