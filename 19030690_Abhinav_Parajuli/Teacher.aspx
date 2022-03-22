<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Teacher.aspx.cs" Inherits="_19030690_Abhinav_Parajuli.Teacher" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div>
        <h2 style="color:white; margin-bottom:50px">Teacher</h2>
    </div>
    <div class="content-box">
        <div class="grid-holder">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="TeacherDatasource" Width="100%" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                <asp:BoundField DataField="TEACHER_NAME" HeaderText="TEACHER_NAME" SortExpression="TEACHER_NAME" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="PHONE_NUMBER" HeaderText="PHONE_NUMBER" SortExpression="PHONE_NUMBER" />
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
        <asp:SqlDataSource ID="TeacherDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" DeleteCommand="DELETE FROM &quot;TEACHER&quot; WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID" InsertCommand="INSERT INTO &quot;TEACHER&quot; (&quot;TEACHER_ID&quot;, &quot;TEACHER_NAME&quot;, &quot;EMAIL&quot;, &quot;PHONE_NUMBER&quot;) VALUES (:TEACHER_ID, :TEACHER_NAME, :EMAIL, :PHONE_NUMBER)" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHER&quot;" UpdateCommand="UPDATE &quot;TEACHER&quot; SET &quot;TEACHER_NAME&quot; = :TEACHER_NAME, &quot;EMAIL&quot; = :EMAIL, &quot;PHONE_NUMBER&quot; = :PHONE_NUMBER WHERE &quot;TEACHER_ID&quot; = :TEACHER_ID">
            <DeleteParameters>
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                <asp:Parameter Name="TEACHER_NAME" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="PHONE_NUMBER" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TEACHER_NAME" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="PHONE_NUMBER" Type="Decimal" />
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </div>

    <div style="padding:10px" >
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="TeacherDatasource">
            <EditRowStyle ForeColor="White" />
            <InsertItemTemplate>
                TEACHER_NAME:
                <asp:TextBox CssClass="form-control input-sm" ID="TEACHER_NAMETextBox" runat="server" Text='<%# Bind("TEACHER_NAME") %>' />
                <br />
                EMAIL:
                <asp:TextBox CssClass="form-control input-sm" ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                <br />
                PHONE_NUMBER:
                <asp:TextBox CssClass="form-control input-sm" ID="PHONE_NUMBERTextBox" runat="server" Text='<%# Bind("PHONE_NUMBER") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CssClass="btn btn-default" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CssClass="btn btn-default" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <InsertRowStyle ForeColor="White" />
            <ItemTemplate>
                <br />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CssClass="btn btn-default" CommandName="New" Text="Add teacher" />
            </ItemTemplate>
            <RowStyle ForeColor="White" />
        </asp:FormView>
    </div>
</asp:Content>
