/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.EvFinal.controller;

import com.example.EvFinal.entity.Usuario;
import com.example.EvFinal.services.UsuarioService;
import com.example.EvFinal.repositories.UsuarioRepository;

import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import javax.validation.Valid;
import org.springframework.ui.Model;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.*;
import org.springframework.validation.BindingResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


/**
 *
 * @author eber
 */
@RestController
public class UsuarioController implements WebMvcConfigurer {

    @Autowired
    private UsuarioService service;
    
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/index").setViewName("index");
    }

    /* 
        Aqui se empieza a ejecutar el programa, se revisa si el usuario tiene
        una sesion activa, sino se le redirigue a la pagina de login, en nuestro caso,
        la segunda opcion no se usa.
        Esta pagina de inicio viene siendo index.html, donde veremos los registros de imc
    */
    @RequestMapping("/")
    public String Inicio(HttpSession session, Model model) {
        
        if(session.getAttribute("tuSesion") != null){
            List<Usuario> listUsuario = service.listAll();
            model.addAttribute("listUsuario", listUsuario);
            return "index";
        } else {
//            model.addAttribute("formulario", new Formulario());
            return "login";
        }
    }
    
    /* 
        Luego de pulsar el enlace de registro, se nos se llevara a
        la direccion /registro, donde podremos ingresar datos de registro
        Esta es registro.html
    */
    @RequestMapping("/registro")
    public String registro(Usuario usuario){
        return "registro";
    }
    
    /* 
        Una vez hecho el registro se validan los campos y de ser correctos 
        se crea una sesion con estos y volvemos a index.html. De lo contrario se señalan los errores.
    */
    @PostMapping("/registro")
    public String checarInfo(@Valid Usuario usuario, BindingResult bindingResult, HttpSession session){
        if(bindingResult.hasErrors()){
            return "registro";
        }
        return "redirect:/";
    }
    
    @RequestMapping("/login")
    public String login(HttpSession session) {
//        session.setAttribute("mySessionAttribute", "sasas");

        // model.addAttribute("listProducts", listProducts);
        return "redirect:/";
    }
    

//    @PostMapping("/")
//    @ResponseStatus(HttpStatus.CREATED)
//    public Usuario crearUsuario(@RequestBody Usuario usuario) {
//        return usuarioRepository.save(usuario);
//    }

//    @GetMapping("/usuarios")
//    public Iterable<Usuario> getUsuario() {
//        return usuarioRepository.findAll();
//    }
}
