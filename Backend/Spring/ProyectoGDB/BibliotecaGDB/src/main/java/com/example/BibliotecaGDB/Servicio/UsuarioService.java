package com.example.BibliotecaGDB.Servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.BibliotecaGDB.Repositorio.UsuarioRepository;
import com.example.BibliotecaGDB.modelo.Usuario;

import java.util.List;

@SuppressWarnings("unused")
@Service

public class UsuarioService {

	 @Autowired
     UsuarioRepository empRepository;  
	
	 //@GetMapping("*/biblioteca")
	 //public List < Usuario > allUsuario(){
	// 	return empRepository.findAll();
	 
	 public List<Usuario> getUsuario() {
		    return empRepository.findAll();
}
	 
	 }
	 
	 
