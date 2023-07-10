<%-- 
    Document   : pay
    Created on : Mar 18, 2023, 6:05:45 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="includes/header.jsp" %>
<%@ include file="includes/container_left.jsp" %>
<div class="right" id="right-id" style="text-align: center" >

    <h1>Payment Dormitory</h1>
    <img style="width: 20rem" src="img/payment.jpg" alt="alt"/>
    
    <% if(loginUser != null){%>
    <h3>Conten: <%= loginUser.getFullName() %> <%= loginUser.getUserId()%> - PayDormFPT </h3>
    <%}%>


</div>
<%@ include file="includes/footer.jsp" %>