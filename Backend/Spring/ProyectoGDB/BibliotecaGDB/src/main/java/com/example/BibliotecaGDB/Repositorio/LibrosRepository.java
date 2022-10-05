package com.example.BibliotecaGDB.Repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.BibliotecaGDB.modelo.Libros;

@Repository

public interface LibrosRepository extends JpaRepository<Libros, Long>{

}
