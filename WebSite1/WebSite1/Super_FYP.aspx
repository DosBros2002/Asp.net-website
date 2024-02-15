<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Super_FYP.aspx.cs" Inherits="Super_FYP" %>

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
            background-image: url('TextBG3.jpg');
            background-position:50% top;
            background-size:contain;
            -webkit-text-fill-color:transparent;
            -webkit-background-clip: text;
            font-weight: 900;   
            font-size: 20vh;
            text-align:center;
            position:absolute;
             top: 40px;
             left: 0px;
         }

         .auto-style1 {
             text-align: center;
             font-family: "Trebuchet MS";
             font-size: x-large;
             color: #FFFFFF;
         }

     </style>
</head>
<body>
       
    <div class="TwoBox">
       
     </div>

    <div class="auto-style1"><strong>Missing Evaluations of FYP</strong></div>
    <form id="form1" runat="server">
       <div class="wrapper side-panel-open">
          <div class="main">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                  <Columns>
                      <asp:BoundField DataField="S_ID" HeaderText="S_ID" SortExpression="S_ID" />
                      <asp:BoundField DataField="Proj_ID" HeaderText="Proj_ID" SortExpression="Proj_ID" />
                      <asp:BoundField DataField="Q1" HeaderText="Q1" SortExpression="Q1" />
                      <asp:BoundField DataField="Q2" HeaderText="Q2" SortExpression="Q2" />
                      <asp:BoundField DataField="Q3" HeaderText="Q3" SortExpression="Q3" />
                      <asp:BoundField DataField="Q4" HeaderText="Q4" SortExpression="Q4" />
                      <asp:BoundField DataField="Q5" HeaderText="Q5" SortExpression="Q5" />
                      <asp:BoundField DataField="Q6" HeaderText="Q6" SortExpression="Q6" />
                      <asp:BoundField DataField="Q7" HeaderText="Q7" SortExpression="Q7" />
                      <asp:BoundField DataField="Q8" HeaderText="Q8" SortExpression="Q8" />
                      <asp:BoundField DataField="Q9" HeaderText="Q9" SortExpression="Q9" />
                      <asp:BoundField DataField="Q10" HeaderText="Q10" SortExpression="Q10" />
                      <asp:BoundField DataField="Q11" HeaderText="Q11" SortExpression="Q11" />
                      <asp:BoundField DataField="Q12" HeaderText="Q12" SortExpression="Q12" />
                      <asp:BoundField DataField="Q13" HeaderText="Q13" SortExpression="Q13" />
                      <asp:BoundField DataField="Q14" HeaderText="Q14" SortExpression="Q14" />
                      <asp:BoundField DataField="Q15" HeaderText="Q15" SortExpression="Q15" />
                      <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
                      <asp:BoundField DataField="GradeS" HeaderText="GradeS" SortExpression="GradeS" />
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
            <asp:Button OnClick="OpenUser" runat="server" ID="button1" Cssclass="btn"  Text="USER INFO" />
            <asp:Button OnClick="FYP" runat="server" ID="button2" Cssclass="btn"  Text="FYP DETAILS" />
            <asp:Button OnClick="Eval" runat="server" ID="button3" Cssclass="btn"  Text="EVALUATION" />
            <asp:Button OnClick="SignOut" runat="server" ID="button4" Cssclass="btn"  Text="SIGN OUT" />
             </div>
       </div>

        
    </form>
    <script src="AdminStart.js"></script>
</body>
</html>
