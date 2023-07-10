<%-- 
    Document   : login
    Created on : Feb 24, 2023, 3:59:42 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="CSS/login.css"/>
    </head>
    <body>
        <div class="container">
        <div class="box">
            <div class="header">
                <img src="https://lmsdn.fpt.edu.vn/pluginfile.php/1/core_admin/logo/0x200/1657934026/2021-FPTU-Eng.png"
                    alt="" srcset="">
            </div>
            
                <% if(session.getAttribute("ERROR_MESSAGE") != null){ %>
                <div class="incorrect-login">
                <%=session.getAttribute("ERROR_MESSAGE") %>
                </div>
                <% }%>
            
            <div class="body_box">
                
                <form action="MainController" method="post">
                    <input class="input_" type="text" name="userId" placeholder="Enter Username"> <br>
                    <input class="input_" type="password" name="password" placeholder="Enter password"> <br>
                    <input type="checkbox"> Remember username  <br>
                    <input class="input_tbn login_tbn" name="action" type="submit" value="Login">
                </form>
                <div class="forgot">
                    <a class="forgot_password" href="#">Forgotten your username or password?</a><br>
                    <span>Cookies must be enabled in your browser</span>
                    <i class="icon fa fa-question-circle text-info fa-fw "></i>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
