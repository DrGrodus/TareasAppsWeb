/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Alumno;

/**
 *
 * @author eber
 */
@WebServlet(name = "Alumnos", urlPatterns = {"/Alumnos"})
public class Alumnos extends HttpServlet {

    boolean iniciador = false;

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
            out.println("<title>Servlet Revisor</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Revisor at " + request.getContextPath() + "</h1>");
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
        ArrayList<model.Alumno> alumnos = new ArrayList<>();
        alumnos.add(new Alumno(123456789, "Paco"));
        alumnos.add(new Alumno(234567890, "Lope"));
        alumnos.add(new Alumno(345678900, "Armando"));
        request.setAttribute("alumnos", alumnos);
        ArrayList matriculas = new ArrayList<>();
        matriculas.add(123456789);
        matriculas.add(234567890);
        matriculas.add(345678900);
        ArrayList nombres = new ArrayList<>();
        nombres.add("Paco");
        nombres.add("Lope");
        nombres.add("Armando");
        if(!iniciador){
            request.getRequestDispatcher("ListaAlumnos.jsp").forward(request, response);
            iniciador = true;
        }
        int matricula = Integer.parseInt(request.getParameter("matricula"));
        String nombre = request.getParameter("nombre");
        ArrayList revisor = new ArrayList<>();
        boolean bandera = false; boolean bandera1 = false;

        bandera = matriculas.contains(matricula);
        bandera1 = nombres.contains(nombre);
        
//        revisor.add(matricula);
//
//        bandera = alumnos.contains(this);
        if (bandera && bandera1) {
            request.setAttribute("nombre", nombre);
            request.setAttribute("matricula", matricula);
            request.getRequestDispatcher("Calificaciones.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("Perdido.htm").forward(request, response);
        }
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
