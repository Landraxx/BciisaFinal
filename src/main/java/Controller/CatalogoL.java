/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author landr
 */
public class CatalogoL extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String nombreL = request.getParameter("nombreL");
            String stock = request.getParameter("stock");
            String cantidadA = request.getParameter("cantidadA");         
            String restriccion = request.getParameter("restriccion");
            String editorial = request.getParameter("editorial");
            String autor = request.getParameter("autor");

            if (nombreL.length() > 0 && stock.length() > 0 && cantidadA.length() > 0 && restriccion.length() > 0 && editorial.length() > 0 && autor.length() > 0) {
                out.println("REGISTRO DE LIBRO EXITOSO!!!" + "<br><br><br>");
                
                out.println("*Libro:" + nombreL  + "<br><br>");
                out.println("*Stock:" + stock + "<br><br>");
                out.println("*Cantidad Actual:" + cantidadA + "<br><br>");
                out.println("*Restriccion:" + restriccion + "<br><br>");
                out.println("*Editorial:" + editorial + "<br><br>");
                out.println("*Autor:" + autor + "<br><br>");
                out.print("<a href=\"home.jsp\"> HOME </a>");
            
            }
        
        }
    }    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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