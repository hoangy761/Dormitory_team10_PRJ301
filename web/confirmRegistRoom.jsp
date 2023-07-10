<%-- 
    Document   : confirmRegistRoom
    Created on : Mar 12, 2023, 5:46:15 PM
    Author     : PC
--%>

<%@page import="ass.room.RoomDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="includes/header.jsp" %>
<%@ include file="includes/container_left.jsp" %>
<!-- floor----------------------- -->
<%! String userId;%>
<% if (loginUser == null) {
        response.sendRedirect("login.jsp");
    } else {
        if ("BL".equals(loginUser.getStatus())) {
            response.sendRedirect("login.jsp");
        } else {
            userId = loginUser.getUserId();
        }

    }
%>
<div class="listRoom">

    <!-- floor----------------------- -->
    <%        List<RoomDTO> listRoom = (List<RoomDTO>) session.getAttribute("LIST_ROOM");

    %>
    <div class="listFloor">
        <ul class="listFloor_menu">
            <% for (int i = 1; i <= 5; i++) {%>
            <a href="listRoom.jsp?floor=<%=i%>&dorm=A" target="target">
                <li class="home">
                    <span>A - Floor <%=i%></span>
                </li>
            </a>
            <%}%>

        </ul>
        <ul class="listFloor_menu">
            <% for (int j = 1; j <= 5; j++) {%>
            <a href="listRoom.jsp?floor=<%=j%>&dorm=B" target="target">
                <li class="home">
                    <span>B - Floor <%=j%></span>
                </li>
            </a>
            <%}%>
        </ul>
    </div>
    <!--end Floor-->
    <div class="maps">
        <h1><%= request.getParameter("dorm")%> - Floor <%= request.getParameter("floor")%> </h1>
        <% int k = 1;%> 
        <% int slot = 1;%>
        <table>
            <tr>
                <!--Phong bat dau--> 
                <%
                    String roomId;
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->

                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->

                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->

                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->

                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->

                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->

                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <td class="room room-full" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= request.getParameter("dorm")%><%= request.getParameter("floor")%><%=k++%><br> 4/4
                    </a>
                </td>
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
                <!--Phong bat dau--> 
                <%
                    if (k < 10) {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat("0").concat(Integer.toString(k));
                    } else {
                        roomId = request.getParameter("dorm").concat(request.getParameter("floor")).concat(Integer.toString(k));
                    }


                %>
                <%                    for (RoomDTO room : listRoom) {
                        if (room.getRoomId().trim().equals(roomId)) {
                            slot = room.getCountSlot();%>
                <!--                phong full se hien mau do-->
                <td class="room <% if (slot > 3) { %>   room-full   <%}%>" >
                    <a href="confirmRegistRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%=k%>" target="target">
                        <%= roomId%><%k++;%><br> 

                        <%= slot%>/4
                    </a>
                </td>
                <%}
                    }
                %>
                <!--phong ket thuc-->
            </tr>
        </table>

        <h3 style="text-align: center"><--main gate--></h3>
    </div>
    <div class="confirmRoom">
        <div class="confirmRoom-border">

            <a href="listRoom.jsp?floor=<%= request.getParameter("floor")%>&dorm=<%= request.getParameter("dorm")%>&noRoom=<%= request.getParameter("noRoom")%>"><div class="confirmRoom-border-close">X</div></a>

            <div class="confirmRoom-border-box">
                <form action="MainController" method="post">
                    <input type="hidden" name="floor" value="<%= request.getParameter("floor")%>">
                    <input type="hidden" name="dorm" value="<%= request.getParameter("dorm")%>">
                    <input type="hidden" name="noRoom" value="<%= request.getParameter("noRoom")%>">
                    <% int noRoom = Integer.parseInt(request.getParameter("noRoom"));%>
                    <p>Room: <%= request.getParameter("dorm")%><%= request.getParameter("floor")%><% if (noRoom < 10) {%>0<%}%><%= noRoom%>
                    </p>
                    <p><% if (loginUser != null) {%>
                        Name: <%= loginUser.getFullName()%> - <%= loginUser.getUserId()%>
                        <%}%> </p>
                    <span>Start Day: </span>
                    <input type="date" name="bDay" id=""><br>
                    <p>Price: 3.200.000 vnđ </p>
                    <input type="hidden" name="price" value="3200000">
                    <p>*Condition:</p>
                    <div class="contract">
                        <p>***. Guests must fully refund after check-out,<br>
                            if there is any loss to be compensated. *** <br>
                            Assets include:<br>
                            + 1 Bed.<br>
                            + 1 Chair.<br>
                            + 1 Table.<br>
                            + 1 Fan. 
                        </p>
                    </div>

                    <input type="hidden" name="roomId" value="<%= request.getParameter("dorm")%><%= request.getParameter("floor")%><% if (noRoom < 10) {%>0<%}%><%= noRoom%>">
                    <input type="hidden" name="userId" value="<%= userId%>">

                    <% if (request.getAttribute("MESSAGE") != null) {%>
                    <div style="text-align: center; color: red;" >
                        <span>
                            <%=request.getAttribute("MESSAGE")%>
                        </span>
                    </div>
                    <% }%>
                    <input class="confirmRoom-regist" name="action" type="submit"  value="Regist Room">
                </form>
            </div>

        </div>
    </div>
</div>
<!-- <div class="right" id="right-id">

    <h1>Select Floor</h1>


</div> -->
<!-- floor----------------------- -->
<%@ include file="includes/footer.jsp" %>