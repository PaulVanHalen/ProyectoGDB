package com.example.BibliotecaGDB.modelo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Column;

@Entity
@Table(name = "libros")
@EntityListeners(AuditingEntityListener.class)

public class Libros {
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY) 
		
		@Column (name = "ISBN")
		private String ISBN;
		
		   @Column(name = "titulo")
		   private String titulo;
		   @Column(name = "autor")
		   private String autor;
		   @Column(name = "fecha_publicacion")
		   private String fecha_publicacion;
		   @Column(name = "editorial")
		   private String editorial;
		   @Column(name="imagen_libro")
		   private String imagen_libro;
	
			
		public String getISBN() {
			return ISBN;
		}

		public void setISBN(String ISBN) {
			ISBN = ISBN;
		}
		
		public String getTitulo() {
			return titulo;
		}
		
		public String getAutor() {
			return autor;
		}
		
		public String getFechaPublicacion() {
			return fecha_publicacion;
		}
		
		public String getEditorial() {
			return editorial;
		}
		
		public String getImagenLibro() {
			return imagen_libro;
		}
	
	}