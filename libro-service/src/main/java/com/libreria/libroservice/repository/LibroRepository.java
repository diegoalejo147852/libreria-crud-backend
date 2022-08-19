package com.libreria.libroservice.repository;

import com.libreria.libroservice.entities.Libro;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LibroRepository extends JpaRepository<Libro,Long> {

}
