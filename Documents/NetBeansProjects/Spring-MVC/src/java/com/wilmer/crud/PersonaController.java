package com.wilmer.crud;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PersonaController {

    @Autowired
    private PersonaDao personaDao;

    // raíz → listado
    @GetMapping({"/", "/index", "/home"})
    public String root() {
        return "redirect:/personas";
    }

    @GetMapping("/personas")
    public String listar(Model model) {
        List<Persona> lista = personaDao.listar();
        model.addAttribute("personas", lista);
        return "personas";
    }

    @GetMapping("/personas/nuevo")
    public String nuevo(Model model) {
        model.addAttribute("persona", new Persona());
        model.addAttribute("titulo", "Nueva persona");
        return "PersonaForm";
    }

    @PostMapping("/personas/guardar")
    public String guardar(@ModelAttribute Persona persona) {
        personaDao.agregar(persona);
        return "redirect:/personas";
    }

    @GetMapping("/personas/editar/{id}")
    public String editar(@PathVariable int id, Model model) {
        model.addAttribute("persona", personaDao.getById(id));
        model.addAttribute("titulo", "Editar persona");
        return "PersonaForm";
    }

    @PostMapping("/personas/actualizar")
    public String actualizar(@ModelAttribute Persona persona) {
        personaDao.actualizar(persona);
        return "redirect:/personas";
    }

    @GetMapping("/personas/eliminar/{id}")
    public String eliminar(@PathVariable int id) {
        personaDao.eliminar(id);
        return "redirect:/personas";
    }
}
