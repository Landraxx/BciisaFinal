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


public class NewServletLogin extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
           
           
 
            String usuario = request.getParameter("usuario");
            if (usuario.length() > 0) {
                out.print("");
            }else{
            out.println(" 1)El usuario no fue ingresado" + "<br>");
            }
                       
            String password = request.getParameter("password");
             if (password.length()> 0) {
                out.print("");
            }else{
            out.println("2)La password no fue ingresado" + "<br>");
             }
             String cargo = request.getParameter("cargo");
             if (cargo.length() > 0) {
                out.print("");
            }else{
            out.println("3)El cargo no fue ingresado" + "<br>");
             }
            
             
            if( usuario.length() > 0 && password.length() > 0 && cargo.length() > 0) {
               
                out.println("Usuario:" + usuario + "<br><br>");
                out.println("password:" + password + "<br><br>");
                out.println("cargo:" + cargo + "<br><br>");
                
                response.sendRedirect("home.jsp");
                
                  //out.print("<a href=\"home.jsp\"> home </a>");
            } 
              
              
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

