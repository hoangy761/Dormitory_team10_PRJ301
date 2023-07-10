/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ass.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PC
 */
public class MainController extends HttpServlet {

    public static final String ERROR = "error.jsp";
    public static final String LOGIN = "LoginController";
    public static final String LOGOUT = "LogoutController";
    public static final String REGIST_ROOM = "RegistRoomController";
    public static final String LIST_REGIST_ROOM = "listRegistRoomController";
    public static final String LIST_REGIST_ROOM_HANDLE = "listRegistRoomHandleController";
    public static final String SEARCH_USER = "SearchUserController";
    public static final String GET_LIST_ROOM = "GetListRoomController";
    public static final String BLOCK_USER = "BlockUserController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String action = request.getParameter("action");
            switch (action) {
                case "Login":
                    url = LOGIN;
                    break;
                case "Logout":
                    url = LOGOUT;
                    break;
                case "Regist Room":
                    url = REGIST_ROOM;
                    break;
                case "listRegistRoom":
                    url = LIST_REGIST_ROOM;
                    break;
                case "Accept":
                    url = LIST_REGIST_ROOM_HANDLE;
                    break;
                case "No Accept":
                    url = LIST_REGIST_ROOM_HANDLE;
                    break;
                case "Get All User":
                    url = SEARCH_USER;
                    break;
                case "SearchUser":
                    url = SEARCH_USER;
                    break;
                case "getListRoom":
                    url = GET_LIST_ROOM;
                    break;
                case "Block":
                    url = BLOCK_USER;
                    break;
                default:
                    HttpSession session = request.getSession();
                    session.setAttribute("ERROR_MESSAGE", "Function is not availible!!!");
            }
        } catch (Exception e) {
            log("Error at MainController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
