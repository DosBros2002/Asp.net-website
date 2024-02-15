<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SI_Panel_Info.aspx.cs" Inherits="SI_Panel_Info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            height: 59px;
            font-family: "Bodoni MT Black";
            font-size: xx-large;
            color: #0033CC;
        }
        .auto-style2 {
            color: #0033CC;
        }
        .auto-style3 {
            font-family: "Copperplate Gothic Light";
            font-size: large;
            color: #0000FF;
            background-color: #6699FF;
        }
    </style>
</head>
<body style="height: 975px; background-color: #9999FF">
    <form id="form1" runat="server">
        <div class="auto-style1">
            Panel Informantion</div>
        <span class="auto-style3">Panel Members for Your Project<br />
        <br />
        </span>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Number" DataSourceID="PanelMembers" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Number" HeaderText="Number" ReadOnly="True" SortExpression="Number" />
                <asp:BoundField DataField="Instructor_Name" HeaderText="Instructor_Name" SortExpression="Instructor_Name" />
                <asp:BoundField DataField="roll_num" HeaderText="roll_num" SortExpression="roll_num" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="PanelMembers" runat="server" ConnectionString="<%$ ConnectionStrings:Project1ConnectionString %>" SelectCommand="select F_Num as Number,P_name as Instructor_Name,Faculty.roll_num from Faculty, Evaluates,WorksOn where Evaluates.Proj_ID = WorksOn.FYP_ID"></asp:SqlDataSource>
        <br />
        <br />
        <span class="auto-style3">&nbsp;Reviews for Your Project<br />
        <br />
        </span>
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <br />
        <span class="auto-style3">&nbsp;Supervisor for Your Project<br />
        <br />
        </span>
        <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" BorderColor="#6666FF" BorderStyle="Ridge" CssClass="auto-style2" style="z-index: 1; left: 1108px; top: 79px; position: absolute; height: 37px; width: 133px" Text="Back" />
    </form>
</body>
</html>
