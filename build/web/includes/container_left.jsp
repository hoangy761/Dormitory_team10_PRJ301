<%-- 
    Document   : container_left
    Created on : Feb 24, 2023, 10:30:28 PM
    Author     : PC
--%>
<%@page import="ass.user.UserDTO"%>
<div class="container">
    <div class="left">
        <ul class="left_menu">
            <a href="home.jsp" target="target">
                <li class="home">
                    <i class="fa-solid fa-house-user iconCss"></i>
                    <span>Home</span>
                </li>
            </a>

            <% if (loginUser != null) {
                    if ("MN".equals(loginUser.getRole())) { %>
            <a href="userList.jsp" target="target">
                <li class="pay">
                    <i class="fa-sharp fa-solid fa-credit-card iconCss"></i>
                    <span>List User</span>
                </li>
            </a>
            <% }
                }%>
            <a href="MainController?action=getListRoom&floor=1&dorm=A" target="target">
                <li class="myRoom ">
                    <i class="fa-solid fa-people-roof iconCss"></i>
                    <span>Room</span>
                </li>
            </a>
            <% if (loginUser != null) {
                    if ("RD".equals(loginUser.getRole())) { %>
            <a href="MainController?action=listRegistRoom&myRoom=myRoom&status=RG&role=<%= loginUser.getRole()%>&userId=<%= loginUser.getUserId()%>" target="target">
                <li class="pay">
                    <i class="fa-sharp fa-solid fa-credit-card iconCss"></i>
                    <span>My Room</span>
                </li>
            </a>
            <% }
                }%>


            <% if (loginUser != null) {%>
            <a href="MainController?action=listRegistRoom&myRoom=a&status=RG&role=<%= loginUser.getRole()%>&userId=<%= loginUser.getUserId()%>" target="target">
                <li class="pay">
                    <i class="fa-sharp fa-solid fa-credit-card iconCss"></i>
                    <span>History</span>
                </li>
            </a>
                <%}%>
            <a href="pay.jsp" target="target">
                <li class="pay">
                    <i class="fa-sharp fa-solid fa-credit-card iconCss"></i>
                    <span>Pay</span>
                </li>
            </a>
                <% if (loginUser != null) {%>
            <a href="MainController?action=listRegistRoom&myRoom=a&status=RG&role=<%= loginUser.getRole()%>&userId=<%= loginUser.getUserId()%>" target="target">
                <li class="pay">
                    <i class="fa-sharp fa-solid fa-credit-card iconCss"></i>
                    <span>Regist</span>
                </li>
            </a>
                <%}%>
            <a href="#" target="target">
                <li class="pay">
                    <i class="fa-sharp fa-solid fa-credit-card iconCss"></i>
                    <span>......</span>
                </li>
            </a>
            <a href="#" target="target">
                <li class="pay">
                    <i class="fa-sharp fa-solid fa-credit-card iconCss"></i>
                    <span>......</span>
                </li>
            </a>


            <% if (loginUser != null) {%>

            <a href="MainController?action=Logout" target="target">
                <li class="logout">
                    <i class="fa-sharp fa-solid fa-credit-card iconCss"></i>
                    <span>Logout</span>
                </li>
            </a>
            <% } else {%>
            <a href="login.jsp" target="target">
                <li class="login">
                    <i class="fa-sharp fa-solid fa-credit-card iconCss"></i>
                    <span>Login</span>
                </li>
            </a>
            <%}%>



            <li class="moreMenu">
                <i class="fa-solid fa-window-restore iconCss"></i>
                <span>More...</span>
            </li>
        </ul>
    </div>
