/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ass.controller;

import ass.log.LogDAO;
import ass.log.LogDTO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC
 */
@WebServlet(name = "RegistRoomController", urlPatterns = {"/RegistRoomController"})
public class RegistRoomController extends HttpServlet {

    public static final String ERROR = "confirmRegistRoom.jsp";
    public static final String SUCCESS = "home.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String userId = request.getParameter("userId");
            String roomId = request.getParameter("roomId");
            int price = Integer.parseInt(request.getParameter("price"));
            String bDay = request.getParameter("bDay");
            String checkbox = request.getParameter("contract"); 
            if (bDay.equals("")) {
                request.setAttribute("MESSAGE", "Chose Start Day !!!");
            } else {
                
                    LogDAO lDao = new LogDAO();
                    LogDTO log = new LogDTO(1, userId, roomId, price, bDay, "RG");
                    boolean check = lDao.addLog(log);
                    if (check) {
                        url = SUCCESS;
                        request.setAttribute("MESSAGE", "Regist room success! Please wait Admin Accept!");
                    } else {
                        request.setAttribute("MESSAGE", "Regist room fail success!!!");
                    }
                
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
