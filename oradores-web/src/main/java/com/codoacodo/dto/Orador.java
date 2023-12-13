package com.codoacodo.dto;

import java.util.Date;

public class Orador {
	private Long id_orador; 
	private String nombre;
        private String apellido;
        private String mail;
        private String tema;
	private Date fecha_alta; 

	
	public Orador(Long id_orador, String nombre, String apellido, String mail, String tema, Date fecha_alta) {
		this.id_orador = id_orador;
		this.nombre = nombre;
		this.apellido = apellido;
		this.mail = mail;
		this.tema = tema;
		this.fecha_alta = fecha_alta;
	}

	public Long getIdOrador() {
		return id_orador;
	}

	public void setIdOrador(Long idProducto) {
		this.id_orador = idProducto;
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
        
        public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}
        
        public String getTema() {
		return tema;
	}

	public void setTema(String tema) {
		this.tema = tema;
	}
	
	public Date getFechaAlta() {
		return fecha_alta;
	}

	public void setFechaAlta(Date fecha_alta) {
		this.fecha_alta = fecha_alta;
	}


}
