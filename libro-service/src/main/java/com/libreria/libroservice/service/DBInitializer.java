package com.libreria.libroservice.service;

import com.libreria.libroservice.entities.Libro;
import com.libreria.libroservice.repository.LibroRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.Date;

@Service
public class DBInitializer {

    private Logger logger = LoggerFactory.getLogger(DBInitializer.class);

    @Autowired
    private final LibroRepository libroRepository;

    public DBInitializer(LibroRepository libroRepository) {
        this.libroRepository = libroRepository;
    }

    @PostConstruct
    public void initDB(){

        logger.info("Comenzando la inicialización de la base de datos...");

        //Libro libro = new Libro();
        //libro.setNombre("Libro 1");
        //libro.setDescripcion("Descripcion 1");
        //libro.setAutor("Autor 1");
        //libro.setFechaPublicacion("10-10-2020");
        //libro.setNumEjemplar(10);
        //libro.setCosto(50.50);
        //libroRepository.save(libro);

        logger.info("Finalizando la inicialización de la base de datos...");

    }

}
