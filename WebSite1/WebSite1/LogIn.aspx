<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml>
    
<head runat="server">
 <meta charset="UTF-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
      integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"
      crossorigin="anonymous"
    />
 <title>FYP Management System</title>
 <link rel="stylesheet" href="SignUp_LognIn.css" />
</head>
<body>

 <!-- Main html class -->
<div class="container">

    <div class="forms-container">
        <div class="signin-signup">
            <form id="SUform" action="#" class="Sign-in-form" runat="server">
                <h2 class="title">Sign in</h2>
                <div class="input-field">
                    <i class="fas fa-user"></i>
                         <asp:TextBox runat="server" ID="username" placeholder="Username" ></asp:TextBox>
                </div>
                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <asp:TextBox runat="server" ID="password" placeholder="Password" TextMode="Password"></asp:TextBox>                        
                </div>
                <asp:Button onclick="LogInbtn" runat="server" Cssclass="btn solid" Text="Login" />
            </form>
        </div>

        <div class="signup-signup">
            <form id="SIform" action="#" class="Sign-up-form">
                <h2 class="title">Sign Up</h2>
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Username"/>                    
                </div>
                <div class="input-field">
                    <i class="fas fa-address-card"></i>
                    <input type="text" placeholder="Name"/>
                </div>
                <div class="input-field">
                    <i class="fas fa-hashtag"></i>
                    <input type="text" placeholder="RollNum"/>
                </div>
                <div class="input-field">
                    <i class="fas fa-envelope"></i>
                    <input type="email" placeholder="Email"/>
                </div>
                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password"/>
                </div>
                <input type="submit" class="btn solid" text="SignUP"/>
            </form>
        </div>
    </div>
    <!-- Left and right panels -->
    <div class="panels-container">

        <div class="panel left-panel">
            <div class="content">
                <h3>Not registered?</h3>
                <p> 
                    Register here for your fyp
                </p>
                <button class="btn transparent" id="sign-up-button">Sign Up</button>
            </div>
            <img src="Reg.png" alt="" class="image"/>
        </div>

        <div class="panel right-panel" >
            <div class="content">
                <h3>Already registered?</h3>
                <p> 
                    Lets log in and see where you are at!
                </p>
                <button class="btn transparent" id="sign-in-button">Sign In</button>
            </div>
            <img src="log.png" alt="" class="image"/>
        </div>

    </div>
 </div>

 <script src="LoginAndSignup.js"></script>
</body>
</html>

