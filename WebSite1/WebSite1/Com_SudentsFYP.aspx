<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Com_SudentsFYP.aspx.cs" Inherits="Com_SudentsFYP" %>

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

        .grid{
            z-index:10;
            position:absolute;
             margin-top: 20vh;
             margin-left: 3vw;
             margin-right:0;
             text-align:center;
             top: 160px;
             left: 225px;
         }
     </style>
</head>
<body>
   

    <div class="TopBar">
           <img src="logo.png" style="width: 50px; height: 50px; padding:5px;" alt=""/>
           <h1>Students and Their Projects</h1>
    &nbsp;</div>

    <form id="form1" runat="server">
       

        

       <div class="wrapper side-panel-open">
          <div class="main">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="roll_num" DataSourceID="AdminStart" ForeColor="#1D2941" GridLines="None" CssClass="grid">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="S_ID" HeaderText="S_ID" SortExpression="S_ID" />
                        <asp:BoundField DataField="roll_num" HeaderText="roll_num" ReadOnly="True" SortExpression="roll_num" />
                        <asp:BoundField DataField="S_name" HeaderText="S_name" SortExpression="S_name" />
                        <asp:BoundField DataField="Group_ID" HeaderText="Group_ID" SortExpression="Group_ID" />
                        <asp:BoundField DataField="FYP_ID" HeaderText="FYP_ID" SortExpression="FYP_ID" />
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
        <asp:SqlDataSource ID="AdminStart" runat="server" ConnectionString="<%$ ConnectionStrings:Project1ConnectionString %>" SelectCommand="select Student.S_ID,Student.roll_num,Student.S_name,Student.Group_ID,WorksOn.FYP_ID from WorksOn,Student where Student.roll_num = WorksOn.roll_no"></asp:SqlDataSource>
               <p>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Cssclass="btn2" Text="Insert/Update " />
        </p>
          </div>
          <button class="side-panel-toggle" type="button">
            <span class="material-icons sp-icon-open">keyboard_double_arrow_left</span>
            <span class="material-icons sp-icon-close">keyboard_double_arrow_right</span>
          </button>
          <div class="side-panel">
              <h2>Menu</h2>
               <asp:Button OnClick="OpenHome" runat="server" ID="button5" Cssclass="btn"  Text="HOME" />
                <asp:Button OnClick="OpenUser" runat="server" ID="button1" Cssclass="btn"  Text="USER INFO" />
               <asp:Button OnClick="FYPINFO" runat="server" ID="button2" Cssclass="btn"  Text="FYP INFO" />
                <asp:Button OnClick="PANELINFO" runat="server" ID="button3" Cssclass="btn"  Text="PANEL INFO" />
                <asp:Button OnClick="SUPINFO" runat="server" ID="button0" Cssclass="btn"  Text="SUPERVISER INFO" />
                <asp:Button OnClick="STUINFO" runat="server" ID="button7" Cssclass="btn"  Text="STUDENT INFO" />
                <asp:Button OnClick="OpenEval" runat="server" ID="button4" Cssclass="btn"  Text="EVALUATION INFO" />
                <asp:Button OnClick="SIGNOUT" runat="server" ID="button8" Cssclass="btn"  Text="SIGN OUT" />
          </div>
       </div>
    </form>
    <script src="template.js"></script>
</body>
</html>