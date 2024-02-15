﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentInfo.aspx.cs" Inherits="StudentInfo" %>

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
            color: white;
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
            display:flex;
            flex-basis:33%;
            align-items: center;
            gap: 5vw;
            z-index:10;
        }


        .TopBar {
        background-color: #1d2941;
        color: white;
        position: absolute;
        display: flex;
        align-items: center;
        justify-content: center;
        top: 0;
        left: 0;
        width: 100%;
        height: 60px;
        margin: 0;
        z-index: 1;
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
        
        .big-text{
            color:white;
            background-image: url(TextBG3.jpg);
            background-position:top;
            background-size:contain;
            -webkit-text-fill-color:transparent;
            -webkit-background-clip: text;
            font-weight: 900;   
            font-size: 20vh;
            text-align:center;
            position:absolute;
        }
        .grid{
            height: 20vh;
            width: 50vw;
            z-index:1;
            margin-left: 20vw;
            
            text-align:center;
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

  

    <form id="form2" runat="server">
       <div class="TopBar">
           <img src="logo.png" style="width: 50px; height: 50px; padding:5px;" alt=""/>
           <h1>Student Info</h1>
       </div>
        <div class="Box"></div><div class="Box2"></div><div class="Box3"></div>
       <div class="wrapper side-panel-open">
          <div class="main">
              <br />
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="roll_num" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Cssclass =" grid">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <Columns>
                      <asp:BoundField DataField="S_ID" HeaderText="S_ID" SortExpression="S_ID" />
                      <asp:BoundField DataField="S_name" HeaderText="S_name" SortExpression="S_name" />
                      <asp:BoundField DataField="roll_num" HeaderText="roll_num" ReadOnly="True" SortExpression="roll_num" />
                      <asp:BoundField DataField="Group_ID" HeaderText="Group_ID" SortExpression="Group_ID" />
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
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Project1ConnectionString %>" ></asp:SqlDataSource>
        
          </div>
          <button class="side-panel-toggle" type="button">
            <span class="material-icons sp-icon-open">keyboard_double_arrow_left</span>
            <span class="material-icons sp-icon-close">keyboard_double_arrow_right</span>
          </button>
          <div class="side-panel">
              <h2>Menu</h2>
                <asp:Button OnClick="OpenHome" runat="server" ID="button5" Cssclass="btn"  Text="HOME" />
                <asp:Button OnClick="OpenInfo" runat="server" ID="button2" Cssclass="btn"  Text="USER INFO" />
                <asp:Button OnClick="OpenFYP" runat="server" ID="button3" Cssclass="btn"  Text="FYP DETAILS" />
                <asp:Button OnClick="Page_Load" runat="server" ID="button4" Cssclass="btn"  Text="EVALUATION" />
                <asp:Button OnClick="OpenPanel" runat="server" ID="button7" Cssclass="btn"  Text="Panel and Superviser" />
                <asp:Button OnClick="OpenGroup" runat="server" ID="button1" Cssclass="btn"  Text="Group details" />
                <asp:Button OnClick="OpenSU" runat="server" ID="button6" Cssclass="btn"  Text="SIGN OUT" />
          </div>
       </div>
    </form>
    <script src="template.js"></script>
</body>
</html>