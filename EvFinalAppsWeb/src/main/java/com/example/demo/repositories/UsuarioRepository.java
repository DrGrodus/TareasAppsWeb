package com.example.demo.repositories;

import com.example.demo.entity.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author eber
 */
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    
}
