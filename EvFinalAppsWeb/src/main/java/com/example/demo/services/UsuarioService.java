/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/springframework/Service.java to edit this template
 */
package com.example.demo.services;

import com.example.demo.repositories.UsuarioRepository;
import com.example.demo.entity.Usuario;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author eber
 */
@Service
@Transactional
public class UsuarioService {
    
    @Autowired
    private UsuarioRepository usuarioRepository;
    
    public List<Usuario> listAll(){
        return usuarioRepository.findAll();
    }
    
    public void save(Usuario usuario){
        usuarioRepository.save(usuario);
    }
    
    public Usuario get(long id){
        return usuarioRepository.findById(id).get();
    }
}
