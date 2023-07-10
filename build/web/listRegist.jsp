<%-- 
    Document   : listRegist
    Created on : Mar 17, 2023, 3:44:04 PM
    Author     : PC
--%>

<%@page import="java.util.List"%>
<%@page import="ass.log.LogDTO"%>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="includes/header.jsp" %>
<%@ include file="includes/container_left.jsp" %>

<div class="right" id="right-id" style="text-align: center;" >
    <h1>List Regist</h1>

    <% if (loginUser == null) {
            response.sendRedirect("login.jsp");
        } else {
            if ("BL".equals(loginUser.getStatus())) {
                response.sendRedirect("login.jsp");
            }
        }
    %>

    <%
        List<LogDTO> listRegist = (List<LogDTO>) session.getAttribute("LIST_REGIST");
    %>

    <% if (session.getAttribute("MESSAGE_ACCEPT") != null) {%>
    <h1><%= session.getAttribute("MESSAGE_ACCEPT")%></h1>
    <%}%>

    <%if (listRegist != null) {%>
    <table border="1" cellpadding="5" style="margin: 0 auto;">
        <thead>
            <tr>
                <th>No</th>
                <th>Log ID</th>
                <th>Room ID</th>
                <th>User ID</th>
                <th>Start Day</th>
                    <% if (!"MN".equals(loginUser.getRole())) { %>
                <th>Status</th>
                    <%}%>
            </tr>
        </thead>
        <tbody>
            <%
                int count = 1;
                if (listRegist != null) {
                    for (LogDTO list : listRegist) {%> 

            <tr>
        <form action="MainController" method="POST">
            <td><%= count++%></td>
            <td><%= list.getLogId()%></td>
            <td><%= list.getRoomId()%></td>
            <td><%= list.getUserId()%></td>
            <td><%= list.getbDay()%></td>
            <% if (!"MN".equals(loginUser.getRole())) {
                    if ("DO".equals(list.getStatus().trim())) {%>
            <td>Regist Success</td>
            <%}
                if ("NO".equals(list.getStatus().trim())) { %>
            <td>Regist Fail</td>
            <%   }
                if ("RG".equals(list.getStatus().trim())) { %>
            <td>Regist Processing</td>
            <%}
                }%>
            <input type="hidden" name="logId" value="<%= list.getLogId()%>">
            <input type="hidden" name="role" value="<%= loginUser.getRole()%>">
            <input type="hidden" name="userId" value="<%= loginUser.getUserId()%>">
            <% if ("MN".equals(loginUser.getRole())) {%>
            <td><a href="MainController?action=Accept&status=RG&logId=<%= list.getLogId()%>&role=<%= loginUser.getRole()%>&userId=<%= list.getUserId()%>" target="target"><input style="cursor: pointer" type="button" value="Accept"></a></td>
            <td><a href="MainController?action=No Accept&status=RG&logId=<%= list.getLogId()%>&role=<%= loginUser.getRole()%>&userId=<%= list.getUserId()%>" target="target"><input style="cursor: pointer" type="button" value="No Accept"></a></td>
                    <% }%>
        </form>
        </tr>



        <%}
            }%>

        </tbody>
    </table>
    <%}%>

</div>
<%@ include file="includes/footer.jsp" %>