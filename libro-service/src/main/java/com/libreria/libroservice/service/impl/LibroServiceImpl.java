package com.libreria.libroservice.service.impl;

import com.libreria.libroservice.entities.Libro;
import com.libreria.libroservice.repository.LibroRepository;
import com.libreria.libroservice.service.LibroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/libros")
public class LibroServiceImpl implements LibroService {

    @Autowired
    private LibroRepository libroRepository;



    @Override
    @GetMapping
    public List<Libro> findAll() {
        return libroRepository.findAll();
    }

    @Override
    @GetMapping("/{id}")
    public Libro findOne(@PathVariable("id") long id) {
        return libroRepository.findById(id).orElse(null);
    }

    @Override
    @PostMapping
    public void saveLibro(@RequestBody Libro libro) {
        try {
            libroRepository.save(libro);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
        }
    }

    @Override
    @PutMapping("/{id}")
    public void updateLibro(@RequestBody Libro libro) {
        try {
            libroRepository.save(libro);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
        }
    }

    @Override
    @DeleteMapping("/{id}")
    public void deleteLibro(@PathVariable("id") long id) {
        try {
            libroRepository.deleteById(id);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            ex.printStackTrace();
        }
    }
}
