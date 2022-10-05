package com.example.BibliotecaGDB.Servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.BibliotecaGDB.Repositorio.LibrosRepository;
import com.example.BibliotecaGDB.modelo.Libros;

import java.util.List;

@SuppressWarnings("unused")
@Service

public class LibrosService {
	 
		 @Autowired
	     LibrosRepository LibRepository;  
		
		 //@GetMapping("*/biblioteca")
		 //public List < Usuario > allUsuario(){
		// 	return empRepository.findAll();
		 
		 public List<Libros> getLibros() {
			    return LibRepository.findAll();
	 }
}
	 