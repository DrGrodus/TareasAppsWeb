/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/springframework/Controller.java to edit this template
 */
package com.example.demo.controller;

import com.example.demo.entity.Usuario;
import com.example.demo.services.UsuarioService;
import com.example.demo.repositories.UsuarioRepository;

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
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 *
 * @author eber
 */
@Controller
public class UsuarioController implements WebMvcConfigurer {
    
    @Autowired
    private UsuarioService service;
    
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/index").setViewName("index");
    }
    
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
    
    @RequestMapping("/registro")
    public String registro(Usuario usuario){
        return "registro";
    }
    
}
