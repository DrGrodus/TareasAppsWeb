/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.EvFinal;

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
    public void Inicio(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>\n"
                + "<html lang=\"es\" >\n"
                + "    <head>\n"
                + "        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
                + "        <title>Inicio</title>\n"
                + "        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                + "    </head>\n"
                + "    <body>\n"
                + "        <form method=\"POST\" action=\"#\">\n"
                + "            <img src=\"img/LibroLogo.png\" alt=\"Logo de Libreria Garcia\">\n"
                + "            <h1>Libreria Garcia</h1>\n"
                + "            <label>Usuario: </label><br>\n"
                + "            <input type=\"text\" name=\"campoUsuario\" placeholder=\"Usuario\"><br><br>\n"
                + "            <label>Contrasena: </label><br>\n"
                + "            <input type=\"password\" name=\"campoContra\" placeholder=\"Contrasena\"><br><br>\n"
                + "            <input type=\"submit\" value=\"Iniciar sesion\"><br><br>\n"
                + "        </form>\n"
                + "        <p><a title=\"registro\" href=\"/registro\">No tienes cuenta? Registraste aqui</a></p>\n"
                + "\n"
                + "        <section>\n"
                + "            <h3>Libros mas populares</h3>\n"
                + "            <form method=\"POST\" action=\"DetallesLibro\">\n"
                + "                <article>\n"
                + "                    <h3>Investigacion</h3>\n"
                + "                    <img src=\"img/Libro1.png\" alt=\"Libro num1\"><br>\n"
                + "                    <input type=\"submit\" value=\"Comprar\" name=\"P1\" disabled=\"true\">\n"
                + "                    <label><b>Inicia sesion para comprar</b></label><br>\n"
                + "                </article><br>\n"
                + "\n"
                + "                <article>\n"
                + "                    <h3>Monstruos</h3>\n"
                + "                    <img src=\"img/Libro2.png\" alt=\"Libro num2\"><br>\n"
                + "                    <input type=\"submit\" value=\"Comprar\" name=\"P2\" disabled=\"true\">\n"
                + "                    <label><b>Inicia sesion para comprar</b></label><br>\n"
                + "                </article><br>\n"
                + "\n"
                + "                <article>\n"
                + "                    <h3>Robots</h3>\n"
                + "                    <img src=\"img/Libro3.png\" alt=\"Libro num3\"><br>\n"
                + "                    <input type=\"submit\" value=\"Comprar\"  name=\"P3\" disabled=\"true\">\n"
                + "                    <label><b>Inicia sesion para comprar</b></label><br>\n"
                + "                </article><br>\n"
                + "            </form>\n"
                + "        </section>\n"
                + "    </body>\n"
                + "</html>");
        //return "Inicio";
    }

    @RequestMapping("/registro")
    public String registrar() {
        return "RegistrarUsuario";
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
