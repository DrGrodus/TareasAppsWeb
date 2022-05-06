/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.EvFinal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author eber
 */
@Entity
public class Usuario {

    public Usuario() {
    }

    public Usuario(Long id, String nombre, String apellidos, Integer codigoP, String ciudad, String estado) {
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.codigoP = codigoP;
        this.ciudad = ciudad;
        this.estado = estado;
    }
    
    @Id
    @GeneratedValue
    private Long id;
    
    private String nombre;
    
    private String apellidos;
    
    private Integer codigoP;
    
    private String ciudad;
    
    private String estado;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public Integer getCodigoP() {
        return codigoP;
    }

    public void setCodigoP(Integer codigoP) {
        this.codigoP = codigoP;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
}
