<%-- 
    Document   : conditionLogin
    Created on : Mar 16, 2023, 7:17:00 PM
    Author     : PC
--%>

<% if (loginUser == null) {
        response.sendRedirect("login.jsp");
    } 
%>
