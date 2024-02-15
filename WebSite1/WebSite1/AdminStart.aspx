<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminStart.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
     <meta http-equiv="X-UA-Compatible" content="IE=edge" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
     <title>FYP Management System</title>
     <style>
        body {
            margin: 0;
            font-family: sans-serif;
            line-height: 1.5;
            background-image: linear-gradient(180deg, #1d2941 5%,#304060 100%);
        }

     

        .bringToF1 {
            left: 15%;
            top: 25%;
            font-family: 'Roboto', sans-serif;
            position: absolute;
            color: black;
            z-index: 10;
        }

        .wrapper {
            display: flex;
            height: 100vh;
        }

        .main {
            flex-grow: 1;
            padding: 20px;
            overflow-y: auto;
        }


        .TopBar {
            background-color: #1d2941;
            color: white;
            position: absolute;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            top: 0;
            left: 0;
            width: 100%;
            height: 60px;
            margin: 0;
            z-index: 0;
        }

       .side-panel-toggle {
            z-index:4;
            width: 50px;
            height: 50px;
            flex-shrink: 0;
            display: grid;
            place-items: center;
            color: #ffffff;
            background: #22304d;
            border: none;
            border-radius: 5px 0 0 5px;
            outline: none;
            cursor: pointer;
        }

        .side-panel-toggle:hover {
            background: #304060;
        }

        .sp-icon-close {
            display: none !important;
        }

        .side-panel {
            z-index:100;
            text-align:center;
            align-content:center;
            z-index: 4;
            display: none;
            width: 15vw;
            flex-shrink: 0;
            padding: 10px;
            color: #ffffff;
            background: #1d2941;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.35);
        }

        .side-panel-open .side-panel {
            display: initial;
        }

        .side-panel-open .sp-icon-open {
            display: none !important;
        }

        .side-panel-open .sp-icon-close {
            display: initial !important;
        }

        .btn {
            width: 100%;
            height: 10%;
            outline: none;
            border: none;
            background-color: #1d2941;
            color: white;
            text-transform: uppercase;
            font-weight: 600;
            margin: 10px 0;
            transition: all 0.5s;
        }

        .btn:hover {
            background-color: #25334e;
            color: white;
        }

        .grid1{
            z-index:1;
            position:absolute;
            margin-top: 34vh;
            margin-left: 20vw;
            margin-right:0;
            text-align:center;
         }

         .grid2{
            z-index:1;
            position:absolute;
            margin-top: 34vh;
            margin-left: 55vw;
            margin-right:0;
            text-align:center;
         }
     </style>
</head>
<body>
   

    <div class="TopBar">
           <img src="logo.png" style="width: 50px; height: 50px; padding:5px;" alt=""/>
           <h1>FYP MANAGEMENT FORM</h1>
    &nbsp;</div>

    <form id="form1" runat="server">
       

        

       <div class="wrapper side-panel-open">
          <div class="main">
              <h1 style="position:absolute; margin-top:25vh; color:white; margin-left:24vw;">Your details</h1>
              <h1 style="position:absolute; margin-top:25vh; color:white; margin-left:63.5vw;">Account Info</h1>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="F_Num" DataSourceID="AdminStart" ForeColor="#1d2941" GridLines="None" CssClass="grid1">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                        <asp:BoundField DataField="F_Num" HeaderText="Faculty number" ReadOnly="True" SortExpression="F_Num" />
                        <asp:BoundField DataField="P_name" HeaderText="Name" SortExpression="P_name" />
                        <asp:BoundField DataField="roll_num" HeaderText="Roll Number" SortExpression="roll_num" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#25334e" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="AdminStart" runat="server" ConnectionString="<%$ ConnectionStrings:Project1ConnectionString %>" ></asp:SqlDataSource>
    
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="UserTable" ForeColor="#333333" GridLines="None" CssClass="grid2">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="RoleID" HeaderText="RoleID" SortExpression="RoleID" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#25334e" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="UserTable" runat="server" ConnectionString="<%$ ConnectionStrings:Project1ConnectionString %>"></asp:SqlDataSource>
        
          </div>
          <button class="side-panel-toggle" type="button">
            <span class="material-icons sp-icon-open">keyboard_double_arrow_left</span>
            <span class="material-icons sp-icon-close">keyboard_double_arrow_right</span>
          </button>
          <div class="side-panel">
              <h2>Menu</h2>
               <asp:Button OnClick="OpenHome" runat="server" ID="button5" Cssclass="btn"  Text="HOME" />
                <asp:Button OnClick="OpenUser" runat="server" ID="button1" Cssclass="btn"  Text="USER INFO" />
                <asp:Button OnClick="Page_Load" runat="server" ID="button2" Cssclass="btn"  Text="FYP DETAILS" />
                <asp:Button OnClick="OpenEval" runat="server" ID="button3" Cssclass="btn"  Text="EVALUATION" />
                <asp:Button OnClick="Page_Load" runat="server" ID="button4" Cssclass="btn"  Text="SIGN OUT" />
          </div>
       </div>
    <script src="template.js"></script>
        
    </form>
    </body>
</html>
