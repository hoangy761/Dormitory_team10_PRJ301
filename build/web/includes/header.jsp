<%-- 
    Document   : header
    Created on : Feb 24, 2023, 10:27:52 PM
    Author     : PC
--%>

<%@page import="ass.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/fontawesome-free-6.3.0-web/css/all.css">
        <link rel="stylesheet" href="CSS/cssBase.css"/>
        <link rel="stylesheet" href="CSS/homePage.css"/>
        <link rel="stylesheet" href="CSS/homepageTest.css"/>
        <%
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");

        %>
        <title>FPT University <% if(loginUser != null) { if("MN".equals(loginUser.getRole())){ %>
            - admin page
          <%  }} %>

        </title>
    </head>

    <body>
        <div class="header">
            <div class="nav_left">
                <div class="nav_left_iconSetting">
                    <div>
                        <i class="fa-solid fa-bars iconCss_hover"></i>
                    </div>
                </div>
                <div class="nav_left_home">
                    <a href="#" class="nav_left_home">
                        <div class="logo_FPT">
                            <img src="https://lmsdn.fpt.edu.vn/pluginfile.php/1/core_admin/logo/0x200/1657934026/2021-FPTU-Eng.png"
                                 alt="" srcset="">
                        </div>
                        <p style="color: #1177d1; font-size: 300;">FPT University Da Nang</p>
                    </a>
                </div>
            </div>
            <div class="nav_right">
                <div class="nav_right_iconMess">
                    <i class="fa-solid fa-comment-dots iconCss_hover"></i>
                </div>
                <div class="nav_right_iconNoti">
                    <i class="fa-regular fa-bell iconCss_hover"></i>
                </div>
                <div class="nav_right_info">
                    <span style="cursor:unset;"><% if (loginUser != null) {

                        %>
                        <%= loginUser.getFullName()%> <%= loginUser.getUserId()%>

                        <%
                        } else {%> 
                        <a href="login.jsp"> Login</a>
                        <%}%>
                    </span>
                    <div class="nav_right_info_avt">
                        <img src="<% if (loginUser != null) {

                        %><%= loginUser.getImgUser()%>
                        <%
                        } else {%> 
                        https://www.google.com/url?sa=i&url=https%3A%2F%2Fkhoinguonsangtao.vn%2Favatar-hai%2F&psig=AOvVaw0-pzp4_ctg2Dwu3_gVi1rw&ust=1677407432522000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOC1xuO7sP0CFQAAAAAdAAAAABAE
                        <%}%>"alt="">
                    </div>
                    
                    <div class="nav_right_info-icon">
                        <i class="fa-solid fa-caret-down iconCss_hover"></i>
                    </div>
                </div>
            </div>
        </div>
