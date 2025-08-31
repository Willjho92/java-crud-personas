package com.wilmer.crud;

import java.util.List;

public interface PersonaDao {
    List<Persona> listar();
    Persona getById(int id);
    int agregar(Persona p);
    int actualizar(Persona p);
    int eliminar(int id);
}
