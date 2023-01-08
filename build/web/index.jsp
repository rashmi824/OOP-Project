

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN_LOGIN</title>
        <style>
            body {

                margin: 0;
                padding: 0;
                background: url(admin_bg.jpg);
                background-size: cover;
                background-position: center;
                font-family: sans-serif;

            }
        </style>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>




    <body>
        <div class="loginbox">
            <h1>Login Here</h1><br><br><br><br>



            <form action="adminLogin" method="post">
                <p>Username :</p>
                <input type="text" name="username" id="" placeholder="Enter Username Here" required="">
                <br><br>
                <p>Password :</p>
                <input type="password" name="password" id="" placeholder="Enter Password Here" required="">
                <br><br><br><br>

                <input type="submit" name="submit" value="Login" />


                <br>

            </form>

            <%if (request.getParameter("msg") != null) {%>

            <h1 style="color: red"><%=request.getParameter("msg")%></h1>

            <%}%>

        </div>
    </body>

</html>

