package com.codoacodo.dto;

public class Orador {
	private Long idOrador; 
	private String nombre;
        private String apellido;
        private String mail;
        private String tema;
        
	
	public Orador(Long idOrador, String nombre, String apellido, String mail, String tema /*Float precio, Date fecha, String imagen, String codigo, String hechoEn*/) {
		this.idOrador = idOrador;
		this.nombre = nombre;
                this.apellido = apellido; 
                this.mail = mail; 
                this.tema= tema;
               
	}

	public Long getIdOrador() {
		return idOrador;
	}

	public void setIdOrador(Long idOrador) {
		this.idOrador = idOrador;
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
}
