<%-- 
    Document   : userList
    Created on : Mar 17, 2023, 6:49:53 PM
    Author     : PC
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="includes/header.jsp" %>
<%@ include file="includes/container_left.jsp" %>
<div class="right" id="right-id" style="margin-left: 2rem;">
 
    <% if (loginUser == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (!"MN".equals(loginUser.getRole())) {
                response.sendRedirect("login.jsp");
            }
        }
    %>
    

    <%
        List<UserDTO> listUser = (List<UserDTO>) session.getAttribute("LIST_USER");
    %>

    <h1>User list</h1>
    <% String search = request.getParameter("searchUser");

        String getAll = request.getParameter("action");
        if (search == null || "Get All User".equals(getAll)) {
            search = "";
        }
    %>
    <% if(request.getAttribute("ERROR_MESSAGE") != null) {%>
    <h3><%= request.getAttribute("ERROR_MESSAGE")%></h3>
        <%}%>
    <form action="MainController">
        <input type="search" name="searchUser" value="<%= search%>" placeholder="Enter user">
        <input style="cursor: pointer"type="submit" name="action" value="SearchUser">
        <input style="cursor: pointer"type="submit" name="action" value="Get All User">
    </form>
    <br><!-- comment -->
    

    <%if (loginUser != null) {%>
    <table border="1" cellpadding="5">
        <thead>
            <tr>
                <th>No</th>
                <th>User ID</th>
                <th>Full Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Tel</th>
                <th>BirthDay</th>
                <th>role</th>
                <th>Status</th>
                <th>Password</th>
            </tr>
        </thead>
        <tbody>
            <%
                int count = 1;
                if (listUser != null) {
                    for (UserDTO user : listUser) {%> 

            <tr>
                <td><%= count++%></td>
                <td><%= user.getUserId()%></td>
                <td><%= user.getFullName()%></td>
                <td><%= user.getEmail()%></td>
                <td><%= user.getAddress() %></td>
                <td><%= user.getTel()%></td>
                <td><%= user.getBirthDay()%></td>
                <td><%= user.getRole()%></td>
                <td><%= user.getStatus()%></td>
                <td>*****</td>
                <td><input style="cursor: pointer"type="submit" name="action" value="Update"></td>
                <td><a href="MainController?action=Block&userId=<%= user.getUserId()%>&searchUser=<%= search%>" target="target"><input style="cursor: pointer"type="button" name="action" value="Block"> </a></td>
                

            </tr>

            <%}
                }%>

        </tbody>
    </table>
    <%} else {%>
    <a href="login.jsp">Login to search</a>
    <%}%>
</div>
<%@ include file="includes/footer.jsp" %>