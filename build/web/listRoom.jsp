<%-- 
    Document   : roomFloor
    Created on : Mar 11, 2023, 9:13:21 PM
    Author     : PC
--%>

<%@page import="ass.room.RoomDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="includes/header.jsp" %>
<%@ include file="includes/container_left.jsp" %>
<!-- floor----------------------- -->

<div class="listRoom">
    <!-- floor----------------------- -->
    <% if (loginUser == null) {
            response.sendRedirect("login.jsp");
        } else {
            if ("BL".equals(loginUser.getStatus())) {
                response.sendRedirect("login.jsp");
            }
        }
    %>
    
    
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
        <%int k = 1;%>
        <% int slot = 1;%>

        <h1><%= request.getParameter("dorm")%> - Floor <%= request.getParameter("floor")%> </h1>
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
</div>
<!-- <div class="right" id="right-id">

    <h1>Select Floor</h1>


</div> -->
<!-- floor----------------------- -->
<%@ include file="includes/footer.jsp" %>