package com.fp.security.libreria.model.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fp.security.libreria.model.entityBeans.Usuario;


public interface UsuarioRepository extends JpaRepository<Usuario, String>{

}
