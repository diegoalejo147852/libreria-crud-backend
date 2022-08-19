package com.libreria.libroservice.service;

import com.libreria.libroservice.entities.Libro;

import java.util.List;

public interface LibroService {

    public List<Libro> findAll();
    public Libro findOne(long id);
    public void saveLibro(Libro libro);
    public void updateLibro(Libro libro);
    public void deleteLibro(long id);

}
