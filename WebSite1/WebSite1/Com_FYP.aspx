<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Com_FYP.aspx.cs" Inherits="Com_FYP" %>

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
            z-index:10;
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
            height: 30vh;
            width: 50vw;
            z-index:10;
            margin-left: 23vw;
            margin-top:30vh;
            text-align:center;
         }

        .btn2 {
            width: 150px;
            height: 49px;
            outline:none;
            border: none;
            border-radius: 48px;
            background-color: #1d2941;
            color: white;
            text-transform: uppercase;
            font-weight: 600;
            margin-left:43vw;
            position: absolute;
            transition: all 0.5s;
            z-index: 16;
            margin-top:1vh;
        }

        .btn2:hover {
            background-color: #25334e;
            color: white;
        }

        .Box{
            background-color: darkslategrey;
            width: 60vw;
            height: 60vh;
            position:absolute;
            margin-left: 20vw;
            margin-top: 23vh;
            z-index:2;
        }
        .Box2{
            background-color: none;
            width: 80vw;
            height: 80vh;
            position:absolute;
            margin-left: 10vw;
            margin-top: 12vh;
            z-index:0;
            outline: 100px;
            outline: solid;
            outline-width:30px;
            outline-color:lightslategrey;
        }
        .Box3{
            background-color: none;
            width: 70vw;
            height: 70vh;
            position:absolute;
            margin-left: 15vw;
            margin-top: 17vh;
            z-index:1;
            outline: 100px;
            outline: solid;
            outline-width:30px;
            outline-color:azure;
        }
     </style>
</head>
<body>
   

    <div class="TopBar">
           <img src="logo.png" style="width: 50px; height: 50px; padding:5px;" alt=""/>
           <h1>Supervisors</h1>
    &nbsp;</div>

    <form id="form1" runat="server">
       

        
        <div class="Box"></div><div class="Box2"></div><div class="Box3"></div>
       <div class="wrapper side-panel-open">
          <div class="main">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FYP_ID" DataSourceID="AdminStart" ForeColor="#1D2941" GridLines="None" CssClass="grid">
                    <AlternatingRowStyle BackColor="transparent" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="FYP_ID" HeaderText="FYP_ID" SortExpression="FYP_ID" ReadOnly="True" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                        <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
                    </Columns>
                    <EditRowStyle BackColor="transparent" />
                    <FooterStyle BackColor="transparent" Font-Bold="True" ForeColor="transparent" />
                    <HeaderStyle BackColor="transparent" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#1d2941" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="transparent" ForeColor="#ffffff" />
                    <SelectedRowStyle BackColor="transparent" Font-Bold="True" ForeColor="#ffffff" />
                    <SortedAscendingCellStyle BackColor="transparent" />
                    <SortedAscendingHeaderStyle BackColor="transparent" />
                    <SortedDescendingCellStyle BackColor="transparent" />
                    <SortedDescendingHeaderStyle BackColor="transparent" />
        </asp:GridView>
        <asp:SqlDataSource ID="AdminStart" runat="server" ConnectionString="<%$ ConnectionStrings:Project1ConnectionString %>" SelectCommand="SELECT * FROM [FYP]"></asp:SqlDataSource>
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
    <script src="template.js"></script>
    </form>
    </body>
</html>