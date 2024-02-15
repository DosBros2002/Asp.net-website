<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProjectDetails_Student.aspx.cs" Inherits="ProjectDetails_Student" %>

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
        }
        .auto-style2 {
            color: #0033CC;
        }
    </style>
</head>
<body style="height: 975px; background-color: #9999FF">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style2">Project Details </span>&nbsp;</strong></div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackImageUrl="~/blur.jpg" DataKeyNames="FYP_ID" DataSourceID="SqlDataSource1" Height="491px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="989px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="FYP_ID" HeaderText="FYP_ID" ReadOnly="True" SortExpression="FYP_ID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project1ConnectionString %>" SelectCommand="SELECT * FROM [FYP]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BorderColor="#6666FF" BorderStyle="Ridge" CssClass="auto-style2" style="z-index: 1; left: 1107px; top: 79px; position: absolute; height: 37px; width: 133px" Text="Back" />
    </form>
</body>
</html>
