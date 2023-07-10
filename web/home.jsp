<%-- 
    Document   : home.jsp
    Created on : Mar 10, 2023, 9:29:45 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="includes/header.jsp" %>
<%@ include file="includes/container_left.jsp" %>
<div class="right" id="right-id" style="text-align: center" >

    <h1>Welcome to FPT Dormitory Management System</h1>
    Thanks for visiting. Make yourself at home. We hope you like it as much as we do.
    
    <% if (request.getAttribute("MESSAGE") != null) {%>
    <div style="text-align: center; color: rgb(2, 172, 123);font-size: 33px;" >
        <span>
            <%=request.getAttribute("MESSAGE")%>
        </span>
    </div>
    <% }%>


</div>
<%@ include file="includes/footer.jsp" %>