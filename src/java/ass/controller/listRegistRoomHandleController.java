/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ass.controller;

import ass.log.LogDAO;
import ass.log.LogDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PC
 */
@WebServlet(name = "listRegistRoomHandleController", urlPatterns = {"/listRegistRoomHandleController"})
public class listRegistRoomHandleController extends HttpServlet {

    public static final String ERROR = "listRegistRoomController";
    public static final String SUCCESS = "listRegistRoomController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String status = request.getParameter("status");
            String role = request.getParameter("role");
            String logId = request.getParameter("logId");
            String userId = request.getParameter("userId");
            String action = request.getParameter("action");
            LogDAO dao = new LogDAO();
            boolean check;
            LogDTO userExist = dao.checkExistRoom(userId, "DO");
            HttpSession session = request.getSession();
            
            if (userExist == null) {
                if (action.equals("Accept")) {
                    check = dao.updateStatusLog("DO", logId);
                } else {
                    check = dao.updateStatusLog("NO", logId);
                }

                if (check) {
                    url = SUCCESS;
                }
            }else{
                session.setAttribute("MESSAGE_ACCEPT", "User Exist Room !!!");
            }
            
            if (action.equals("No Accept")) {
                    check = dao.updateStatusLog("NO", logId);
                    session.removeAttribute("MESSAGE_ACCEPT");
                }

        } catch (SQLException e) {
            log("Error at LoginController : " + e.toString());
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
