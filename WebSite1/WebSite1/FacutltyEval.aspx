<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FacutltyEval.aspx.cs" Inherits="FacutltyEval" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
     <meta http-equiv="X-UA-Compatible" content="IE=edge" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <link href="../skins/all.css" rel="stylesheet"/>
    <link href="../skins/square/square.css" rel="stylesheet"/> 
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
            margin-top:8vh;
            flex-grow: 1;
            padding: 20px;
            overflow-y: auto;
            color: white;
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
            transition: all 0.5s;
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
            transition: all 1s;
        }

        .btn:hover {
            background-color: #25334e;
            color: white;
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
            margin: 10px 0;
            margin-left:35vw;
            transition: all 0.5s;
        }

        .btn2:hover {
            background-color: #25334e;
            color: white;
        }

        .textbox{
            height: 10vh;
            width: 70vw;
        }

        .list{
            margin-left:10vw;
            height: 1vh;
            width: 50vw;
        }
        .listitem{
            background-color:white;
        }
        .listitem:hover{
            color: grey;
        }
        .listHead{
            margin-left:7vw;

        }


        
     </style>
       
</head>
<body>

  

    <form id="form1" runat="server">
       <div class="TopBar">
           <img src="logo.png" style="width: 50px; height: 50px; padding:5px;" alt=""/>
           <h1>Faculty evaluation</h1>
       </div>
       <div class="wrapper side-panel-open">
          <div class="main">
              <div style="margin-left: 506px">
                &nbsp;
                </div>
                <p style="margin-left: 91px; height: 35px;">
                Enter Your Pannel Member ID : <asp:TextBox ID="TextBox2" runat="server" Width="149px"></asp:TextBox>
                </p>
                <p style="margin-left: 91px; height: 35px;padding-right:100px;">
                Enter the Project ID:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </p>
                <p style="margin-left: 91px; height: 35px;">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="1. FYP Poster"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Cssclass="list" RepeatDirection="Horizontal">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="2. Iteration Definition, FYP Plan, Work Breakdown"></asp:Label>
                </p>
                <asp:RadioButtonList  ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Cssclass="list" RepeatDirection="Horizontal">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="3. Work completed for the iteration(s) including design &amp; implementation"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="4. Slide Design and Content Quality"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList4" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal"  Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="5. Style (Delivery, Confidence, Clarity)"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList5" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="6. Clarity of Project Scope"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList6" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="7. Definition of Project Features"></asp:Label>
                </p>
                <asp:RadioButtonList  ID="RadioButtonList7" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="8. Team Dynamics (Coordination among team members)"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList8" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" Text="9. Timing of Presentation"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList9" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" Text="10. Implementation Work Completion"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList10" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" Text="11. Overall work quality and impression"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList11" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" Text="12. Code Quality"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" Text="13. Level of code integration"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Large" Text="14. Class Diagram/DFD (provided in the report) correctly maps to the Code Implemented"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList14" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p style="margin-left: 94px; height: 35px;">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" Text="15. Handling of Questions"></asp:Label>
                </p>
                <asp:RadioButtonList ID="RadioButtonList15" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Cssclass="list">
                    <asp:ListItem> 1</asp:ListItem>
                    <asp:ListItem> 2</asp:ListItem>
                    <asp:ListItem> 3</asp:ListItem>
                    <asp:ListItem> 4</asp:ListItem>
                    <asp:ListItem> 5</asp:ListItem>
                    <asp:ListItem> 6</asp:ListItem>
                    <asp:ListItem> 7</asp:ListItem>
                    <asp:ListItem> 8</asp:ListItem>
                    <asp:ListItem> 9</asp:ListItem>
                    <asp:ListItem> 10</asp:ListItem>
                </asp:RadioButtonList>
                <p class="auto-style1" style="margin-left: 80px">
                    <strong>Review Box</strong>
                </p>
                <p style="margin-left: 80px">
                    <asp:TextBox ID="TextBox1" runat="server" Cssclass="textbox"></asp:TextBox>
                </p>
                    <asp:Button ID="Button6" runat="server" Text="Confirm" OnClick="Button1_Click" Cssclass="btn2" />

            </div>


          <button class="side-panel-toggle" type="button">
            <span class="material-icons sp-icon-open">keyboard_double_arrow_left</span>
            <span class="material-icons sp-icon-close">keyboard_double_arrow_right</span>
          </button>


        <div class="side-panel">
            <h2>Menu</h2>
            <asp:Button OnClick="OpenHome" runat="server" ID="button5" Cssclass="btn"  Text="HOME" />
            <asp:Button OnClick="OpenUser" runat="server" ID="button1" Cssclass="btn"  Text="USER INFO" />
            <asp:Button OnClick="FYP" runat="server" ID="button2" Cssclass="btn"  Text="FYP DETAILS" />
            <asp:Button OnClick="Eval" runat="server" ID="button3" Cssclass="btn"  Text="EVALUATION" />
            <asp:Button OnClick="SignOut" runat="server" ID="button4" Cssclass="btn"  Text="SIGN OUT" />
        </div>


       </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="icheck.min.js"></script>
    <script>
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-green ',
            radioClass: 'iradio_square-green ',
        });
        document.querySelector(".side-panel-toggle").addEventListener("click", () => {
            document.querySelector(".wrapper").classList.toggle("side-panel-open");
        });
    </script>
</body>
</html>

