<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="style.css" type="text/css" media="screen">
        <style>
            input[type="text"], input[type="password"], input[type="submit"]
            {
                border: none;
                background:silver;
                height: 50px;
                font-size: 16px;
                margin-left:35%;
                padding:15px;
                width:33%;
                border-radius: 25px;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <a href="#default" class="logo"><img class="logo" src="Logo1.png"></a>
            <div class="header-right">
                <a href="index.jsp">Home</a>
                <a class="active" href="adminLogin.jsp">Admin Login</a>
            </div>
        </div>
    <body>
        <div class="container">
            <br>
            <br>
            <% String msg = request.getParameter("msg");
            if ("invalid".equals(msg)) { %>
             <center><font color = "red" size = "5" > Invalid Username And/Or Password</font></center>
             <% }%>
            <form action="adminLoginAction.jsp" method="post">
                <div class="form-group">
                    <center><h2>Username</h2></center>
                    <input type="text" name="username" placeholder="Enter UserName" required="">
                    <center><h2>Password</h2></center>
                    <input type="password" name="password" placeholder="Enter Password" required="">
                    <center><button class="button" type="submit">Submit</button></center>

            </form>




        </div>
        <br>
        <br>
        <br>
        <br>
        <h3><center> ARIJIT GUHA's BLOOD BANK MANAGEMENT SYSTEM</center></h3>
    </body>
</html>
