<%! String Error_Msg; %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title> Artic Bank </title>
        <link rel="icon" type="image/x-icon" href="bank2.svg">
        <link rel="stylesheet" type="text/css" href="master.css"></link>
    </head>
    <body class="login">
        <div class="center float-box">
            <div class="bg-col col">
                <img src="bank.png" alt="Artic Bank" class="cir-logo-main" height="125px" width="125px">
                <h3 class="main-head t-title"> Welcome to </h3>
                <h1 class="main-head t-title"> Artic Bank</h1>
                <h4 class="main-head t-title" style="padding-top:10px;"> We safeguard and protect your money </h4>
            </div>
            <div class="center col">
                <h2 class="center" style="padding-top: 45px;"> Log In </h2>
                <div class="form">
                    <form id="login" autocomplete="off" action="Includes/Scripting/authhandler.jsp" method="post">
                        <div class="center">
                            <input type="text" id="username" name="uname" placeholder=" " class="form-input" required />
                            <label for="username" id="form-usrnm">Username</label>
                            <br><br>
                            <input type="password" id="Password" name="pswd" placeholder=" " class="form-input" required />
                            <label for="Password" id="form-psswd">Password</label>
                        </div>
                    </form>
                    <br><br>
                    <button class="animated-border-button" form="login">Log In</button>
                </div>
                <br>
                <div class="Error">
                    <%
                        Error_Msg = (String) session.getAttribute("Error_Msg");
                        if (Error_Msg != null){
                            out.println("<h3 class=\"Error\">" + Error_Msg +"</h3>");
                            session.setAttribute("Error_Msg", null);
                        }
                        else {
                            out.println("<h3 class=\"Error\"></h3>");
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
