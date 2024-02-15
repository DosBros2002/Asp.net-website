<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentHome.aspx.cs" Inherits="StudentHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
     <meta http-equiv="X-UA-Compatible" content="IE=edge" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
     <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'/>
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

     </style>
</head>
<body>
       
    <div class="TwoBox">
       
     </div>
     <p class="big-text">STUDENT INTERFACE</p>

    <div class="back"></div>
    <form id="form1" runat="server">
       <div class="wrapper side-panel-open">
          <div class="main"></div>
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
    <script src="AdminStart.js"></script>
</body>
</html>
