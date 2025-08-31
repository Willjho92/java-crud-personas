package com.wilmer.crud;

public class Persona {
    private int id;
    private String nombres;
    private String correo;
    private String nacionalidad;

    public Persona() {}
    public Persona(int id, String nombres, String correo, String nacionalidad) {
        this.id = id; this.nombres = nombres; this.correo = correo; this.nacionalidad = nacionalidad;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getNombres() { return nombres; }
    public void setNombres(String nombres) { this.nombres = nombres; }
    public String getCorreo() { return correo; }
    public void setCorreo(String correo) { this.correo = correo; }
    public String getNacionalidad() { return nacionalidad; }
    public void setNacionalidad(String nacionalidad) { this.nacionalidad = nacionalidad; }
}
