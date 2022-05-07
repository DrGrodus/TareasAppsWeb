/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.example.EvFinal;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author eber
 */
public class RegistroUsuario extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegistroUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegistroUsuario at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        PrintWriter out = response.getWriter();
        String usuario = request.getParameter("campoNombre");
        String contra = request.getParameter("campoApellidos");

        HttpSession session = request.getSession();
        session.setAttribute("usuario", usuario);
        session.setAttribute("contra", contra);
        
        request.setAttribute("usuario", usuario);
        request.setAttribute("contra", contra);

        if (usuario != null && contra != null) {
            Cookie cookieU = new Cookie("usuario", usuario);
            Cookie cookieC = new Cookie("contra", contra);

            cookieU.setMaxAge(30 * 60);
            response.addCookie(cookieU);
            response.addCookie(cookieC);

            out.println("<!DOCTYPE html>\n"
                    + "<html lang='es'>\n"
                    + "<head>\n"
                    + "<title>Usuario registrado!</title>\n"
                    + "<meta charset=\"UTF-8\">\n"
                    + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                    + "</head>\n"
                    + "<body>\n"
                    + "<p>Muchas gracias por registrarse!"
                    + "</p>"
                    + "<p>"
                    + "Su usuario es: "
                    + usuario + "\n"
                    + "</p>"
                    + "<p>"
                    + "Y su contraseña es: "
                    + contra + "\n"
                    + "</p>"
                    + "<p><a href=\"/Inicio\">Volver a inicio</a></p>"
                    + "</body>\n"
                    + "</html");
        } else{
            
        }
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
