<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BaseTemplate.aspx.cs" Inherits="BaseTemplate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
     <meta http-equiv="X-UA-Compatible" content="IE=edge" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
     <title>FYP Management System</title>
     <link rel="stylesheet" href="template.css" />
</head>
<body>

  

    <form id="form1" runat="server">
       <div class="TopBar">
           <img src="logo.png" style="width: 50px; height: 50px; padding:5px;" alt=""/>
           <h1>FYP MANAGEMENT FORM</h1>
       </div>
       <div class="wrapper side-panel-open">
          <div class="main">


          </div>
          <button class="side-panel-toggle" type="button">
            <span class="material-icons sp-icon-open">keyboard_double_arrow_left</span>
            <span class="material-icons sp-icon-close">keyboard_double_arrow_right</span>
          </button>
          <div class="side-panel">
              <h2>Menu</h2>
          </div>
       </div>
    </form>
    <script src="template.js"></script>
</body>
</html>
