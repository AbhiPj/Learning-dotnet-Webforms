<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_19030690_Abhinav_Parajuli._Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <asp:SqlDataSource ID="StudentDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT COUNT(STUDENT_ID) AS Total_Students FROM STUDENT"></asp:SqlDataSource>
    <div style="display:flex; flex-wrap:wrap">
            <div class="dashboard-content">
     <asp:DataList ID="DataList1" runat="server" DataSourceID="StudentDatasource">
        <HeaderStyle ForeColor="White" />
        <ItemStyle ForeColor="White" />
        <ItemTemplate>

            <box-icon style="height:50px;width:100px;" name='book'></box-icon>
            TOTAL_STUDENTS:
            <asp:Label CssClass="data-text" ID="TOTAL_STUDENTSLabel" runat="server" Text='<%# Eval("TOTAL_STUDENTS") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    </div>

            <div class="dashboard-content">
            <asp:DataList ID="DataList2" runat="server" DataSourceID="TeacherDatasource" Width="506px">
                <ItemStyle ForeColor="White" />
                <ItemTemplate>
            <box-icon style="height:50px;width:100px;" name='book'></box-icon>
                    TOTAL_TEACHER:
                    <asp:Label ID="TOTAL_TEACHERLabel" runat="server" Text='<%# Eval("TOTAL_TEACHER") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </div>
        
        <div class="dashboard-content">
            <asp:Chart ID="Chart1" runat="server" DataSourceID="studentchart" Width="502px">
                <series>
                    <asp:Series Name="Series1" XValueMember="MODULE_NAME" YValueMembers="STUDENTS" ChartType="StackedBar">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
         </div>



   </div>

            <asp:SqlDataSource ID="studentchart" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT COUNT(STUDENT.STUDENT_ID) AS Students, &quot;MODULE&quot;.MODULE_NAME FROM STUDENT, STUDENT_MODULE, &quot;MODULE&quot; WHERE STUDENT.STUDENT_ID = STUDENT_MODULE.STUDENT_ID AND STUDENT_MODULE.MODULE_CODE = &quot;MODULE&quot;.MODULE_CODE GROUP BY &quot;MODULE&quot;.MODULE_NAME"></asp:SqlDataSource>

            <asp:SqlDataSource ID="TeacherDatasource" runat="server" ConnectionString="<%$ ConnectionStrings:Berkeley_college %>" ProviderName="<%$ ConnectionStrings:Berkeley_college.ProviderName %>" SelectCommand="SELECT COUNT(TEACHER_ID) AS Total_teacher FROM TEACHER"></asp:SqlDataSource>
    </div>


    <style>
        .dashboard-content{
    min-height: 100px;
    height:auto;
    width:522px;
    margin-top:10px;
    background-color: #27293d;
    margin-right:20px;
    margin-right:30px;
    border-radius:10px;


    border-radius: 10px;
    box-shadow: 10px 10px inherit;
    padding: 10px;
        }

        .data-text{
            color:white;
            font-size:20px;
        }
    </style>

</asp:Content>
