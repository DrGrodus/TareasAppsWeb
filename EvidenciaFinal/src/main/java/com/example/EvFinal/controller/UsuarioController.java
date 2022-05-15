/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.EvFinal.controller;

import com.example.EvFinal.entity.Usuario;
import com.example.EvFinal.repositories.UsuarioRepository;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

/**
 *
 * @author eber
 */
@RestController
//@RequestMapping("/")
public class UsuarioController {

    private final UsuarioRepository usuarioRepository;

    public UsuarioController(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    @RequestMapping("/")
    public String Inicio(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println("Esto es inicio");
        return "index";
//        out.println("<!DOCTYPE html>\n" +
//"<html lang= \"es \" >\n" +
//"    <head>\n" +
//"        <meta http-equiv= \"Content-Type \" content= \"text/html; charset=UTF-8 \">\n" +
//"        <title>Inicio</title>\n" +
//"        <meta name= \"viewport \" content= \"width=device-width, initial-scale=1.0 \">\n" +
//"    </head>\n" +
//"    <body>\n" +
//"        <form:form method= \"GET \" action= \"/LogIn \">\n" +
//"            <img src= \"img/LibroLogo.png \" alt= \"Logo de Libreria Garcia \">\n" +
//"            <h1>Libreria Garcia</h1>\n" +
//"            <label>Usuario: </label><br>\n" +
//"            <input type= \"text \" name= \"campoUsuario \" placeholder= \"Usuario \"><br><br>\n" +
//"            <label>Contrasena: </label><br>\n" +
//"            <input type= \"password \" name= \"campoContra \" placeholder= \"Contrasena \"><br><br>\n" +
//"            <input type= \"submit \" value= \"Iniciar sesion \"><br><br>\n" +
//"        </form:form>\n" +
//"        <form:form method=\"GET\" action=\"/registro\">\n" +
//"            <input name=\"registro\" type=\"submit\" value=\"No tienes cuenta? Registraste aqui\"/>\n" +
//"        </form:form>\n" +
//"\n" +
//"        <section>\n" +
//"            <h3>Libros mas populares</h3>\n" +
//"            <form method= \"POST \" action= \"DetallesLibro \">\n" +
//"                <article>\n" +
//"                    <h3>Investigacion</h3>\n" +
//"                    <img src= \"img/Libro1.png \" alt= \"Libro num1 \"><br>\n" +
//"                    <input type= \"submit \" value= \"Comprar \" name= \"P1 \" disabled= \"true \">\n" +
//"                    <label><b>Inicia sesion para comprar</b></label><br>\n" +
//"                </article><br>\n" +
//"\n" +
//"                <article>\n" +
//"                    <h3>Monstruos</h3>\n" +
//"                    <img src= \"img/Libro2.png \" alt= \"Libro num2 \"><br>\n" +
//"                    <input type= \"submit \" value= \"Comprar \" name= \"P2 \" disabled= \"true \">\n" +
//"                    <label><b>Inicia sesion para comprar</b></label><br>\n" +
//"                </article><br>\n" +
//"\n" +
//"                <article>\n" +
//"                    <h3>Robots</h3>\n" +
//"                    <img src= \"img/Libro3.png \" alt= \"Libro num3 \"><br>\n" +
//"                    <input type= \"submit \" value= \"Comprar \"  name= \"P3 \" disabled= \"true \">\n" +
//"                    <label><b>Inicia sesion para comprar</b></label><br>\n" +
//"                </article><br>\n" +
//"            </form>\n" +
//"        </section>\n" +
//"    </body>\n" +
//"</html>");
        //return "Inicio";
    }

    @RequestMapping(value = "/registro", method = RequestMethod.GET)
    public String registrar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
            return "registro";
        
//        out.println("<!DOCTYPE html>\n"
//                + "<html>\n"
//                + "    <head>\n"
//                + "        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
//                + "        <title>Registro de usuario</title>\n"
//                + "    </head>\n"
//                + "    <body>\n"
//                + "        <h2>Registrate</h2>\n"
//                + "        <form method=\"POST\" action=\"RegistroUsuario\">\n"
//                + "            <label>Nombre: </label><br>\n"
//                + "            <input type=\"text\" name=\"campoNombre\"><br><br>\n"
//                + "            <label>Apellidos: </label><br>\n"
//                + "            <input type=\"text\" name=\"campoApellidos\"><br><br>\n"
//                + "            <label>Codigo postal: </label><br>\n"
//                + "            <input type=\"text\" name=\"campoCPostal\"><br><br>\n"
//                + "            <label>Ciudad: </label><br>\n"
//                + "            <input type=\"text\" name=\"campoCiudad\"><br><br>\n"
//                + "            <label>Estado: </label><br>\n"
//                + "            <input type=\"text\" name=\"campoEstado\"><br><br>\n"
//                + "            \n"
//                + "            <input type=\"submit\" value=\"Registrar\">\n"
//                + "        </form>\n"
//                + "    </body>\n"
//                + "</html>");
        //return "RegistrarUsuario";
    }

    @PostMapping("/")
    @ResponseStatus(HttpStatus.CREATED)
    public Usuario crearUsuario(@RequestBody Usuario usuario) {
        return usuarioRepository.save(usuario);
    }

    @GetMapping("/usuarios")
    public Iterable<Usuario> getUsuario() {
        return usuarioRepository.findAll();
    }
}
