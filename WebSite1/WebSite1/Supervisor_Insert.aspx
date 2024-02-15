<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Supervisor_Insert.aspx.cs" Inherits="Supervisor_Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
     <meta http-equiv="X-UA-Compatible" content="IE=edge" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
      integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"
      crossorigin="anonymous"
    />
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
            margin-left: 40vw;
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
         .btn3{
            width: 150px;
            height: 49px;
            outline:none;
            border: none;
            border-radius: 48px;
            background-color: rgb(41,53,76);
            color: white;
            text-transform: uppercase;
            font-weight: 600;
            margin: 10px 0;
            margin-left:6.5vw;
            transition: all 0.5s;
        }

        .btn3:hover {
            background-color: rgb(89, 113, 161);
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
            position:absolute;
            margin-left: 20vw;
            margin-right:20vw;
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

        .input-field{
            max-width: 20vw;
            width: 20vw;
            height: 6vh;
            background-color: #f0f0f0;
            margin: 10px 0;
            border-radius: 55px;
            display: grid;
            grid-template-columns: 15% 85%;
            padding: 0 0.4rem;
            position: relative;
        }   

        .input-field i{
            text-align: center;
            line-height: 55px;
            color: #acacac;
            font-size: 1.5rem;
        }

        .input-field input{
            background: none;
            outline: none;
            border: none;
            line-height: 1;
            font-weight: 600;
            font-size: 1.5rem;
            color: #333;
        }

        .input-field input:placeholder-shown {
            color: #aaa;
            font-weight: 500;
        }

         .signin-signup{
            position: absolute;
            top: 50%;
            left: 75%;
            margin-left: 10vw;
            transform: translate(-50%,-50%);
            display: grid;
            grid-template-columns: 1fr;
            transition: all 2s;
            z-index: 10;
        }
     </style>
</head>
<body>

  

    <form id="form1" runat="server">
       <div class="TopBar">
           <img src="logo.png" style="width: 50px; height: 50px; padding:5px;" alt=""/>
           <h1>FYP MANAGEMENT FORM</h1>
       </div>
       <div class="wrapper side-panel-open">
          <div class="main">
              <div class="signup-signup">
                <h2 style="margin-left:5vw">Add Superviser</h2>
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <asp:TextBox runat="server" ID="Username" placeholder="Username" ></asp:TextBox>
                </div>
                <div class="input-field">
                    <i class="fas fa-address-card"></i>
                <asp:TextBox runat="server" ID="Name" placeholder="Name" ></asp:TextBox>
                </div>
                <div class="input-field">
                    <i class="fas fa-hashtag"></i>
                         <asp:TextBox runat="server" ID="FNum" placeholder="Faculty Number" ></asp:TextBox>
                </div>
                  <div class="input-field">
                    <i class="fas fa-hashtag"></i>
                         <asp:TextBox runat="server" ID="TextBox1" placeholder="Roll Number" ></asp:TextBox>
                </div>
                <div class="input-field">
                    <i class="fas fa-hashtag"></i>
                         <asp:TextBox runat="server" ID="SId" placeholder="FYP ID" ></asp:TextBox>
                </div>
                <div class="input-field">
                    <i class="fas fa-envelope"></i>
                         <asp:TextBox runat="server" ID="Email" placeholder="Email" ></asp:TextBox>                        
                </div>
                <div class="input-field">
                    <i class="fas fa-lock"></i>
                         <asp:TextBox runat="server" ID="Password" placeholder="Password" TextMode="Password" ></asp:TextBox>                        
                </div>
                <asp:Button OnClick="ADD" runat="server" Cssclass="btn3 solid"  Text="ADD" />
        </div>
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