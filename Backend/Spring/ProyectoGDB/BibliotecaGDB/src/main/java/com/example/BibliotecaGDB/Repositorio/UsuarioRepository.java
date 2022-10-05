package com.example.BibliotecaGDB.Repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.BibliotecaGDB.modelo.Usuario;


@Repository

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{

}


