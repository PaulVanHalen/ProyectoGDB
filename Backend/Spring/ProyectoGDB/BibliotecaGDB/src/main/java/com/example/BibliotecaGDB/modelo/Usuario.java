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
@Table(name = "usuario")
@EntityListeners(AuditingEntityListener.class)
		
public class Usuario {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)  
	 
   @Column (name = "DNI")
   private Integer DNI;
   @Column(name = "nombre")
   private String nombre;
   @Column(name = "apellido")
   private String apellido;
   @Column(name = "email")
   private String email;
   @Column(name = "password")
   private String password;
   @Column(name="telefono")
   private int telefono;
   @Column(name = "domicilio")
   private String domicilio;
   @Column(name = "fecha_nacimiento")
   private String fecha_nacimiento;
   @Column(name = "id_TipoUsuario")
   private int id_TipoUsuario;

   public int getDNI() {
		return DNI;
	}

	public void setDNI(Integer dNI) {
		DNI = dNI;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public String getDomicilio() {
		return domicilio;
	}

	public void setDomicilio(String domicilio) {
		this.domicilio = domicilio;
	}

	public String getFecha_nacimiento() {
		return fecha_nacimiento;
	}

	public void setFecha_nacimiento(String fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}

	public int getId_TipoUsuario() {
		return id_TipoUsuario;
	}

	public void setId_TipoUsuario(int id_TipoUsuario) {
		this.id_TipoUsuario = id_TipoUsuario;
	}
	
	
}
