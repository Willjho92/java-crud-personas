package com.wilmer.crud;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class PersonaDaoImpl implements PersonaDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private final RowMapper<Persona> mapper = new RowMapper<Persona>() {
        @Override
        public Persona mapRow(ResultSet rs, int rowNum) throws SQLException {
            Persona p = new Persona();
            p.setId(rs.getInt("id"));
            p.setNombres(rs.getString("nombres"));
            p.setCorreo(rs.getString("correo"));
            p.setNacionalidad(rs.getString("nacionalidad"));
            return p;
        }
    };

    @Override
    public List<Persona> listar() {
        return jdbcTemplate.query("SELECT id,nombres,correo,nacionalidad FROM persona ORDER BY id", mapper);
    }

    @Override
    public Persona getById(int id) {
        return jdbcTemplate.queryForObject(
                "SELECT id,nombres,correo,nacionalidad FROM persona WHERE id=?",
                mapper, id);
    }

    @Override
    public int agregar(Persona p) {
        return jdbcTemplate.update(
                "INSERT INTO persona (nombres,correo,nacionalidad) VALUES (?,?,?)",
                p.getNombres(), p.getCorreo(), p.getNacionalidad());
    }

    @Override
    public int actualizar(Persona p) {
        return jdbcTemplate.update(
                "UPDATE persona SET nombres=?, correo=?, nacionalidad=? WHERE id=?",
                p.getNombres(), p.getCorreo(), p.getNacionalidad(), p.getId());
    }

    @Override
    public int eliminar(int id) {
        return jdbcTemplate.update("DELETE FROM persona WHERE id=?", id);
    }
}
