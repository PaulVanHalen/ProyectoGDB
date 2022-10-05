package com.example.BibliotecaGDB.Controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.BibliotecaGDB.Servicio.UsuarioService;
import com.example.BibliotecaGDB.modelo.Usuario;

@SuppressWarnings("unused")
@RestController
@RequestMapping("/api")

public class UsuarioController {

	 @Autowired
     UsuarioService empService;
	
}


