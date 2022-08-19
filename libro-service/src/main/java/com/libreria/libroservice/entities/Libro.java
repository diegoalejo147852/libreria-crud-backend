package com.libreria.libroservice.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;


@Entity
@Table(name="Libro")
@Data
@NoArgsConstructor @AllArgsConstructor
public class Libro implements Serializable {

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private long id;
    private String nombre;
    private String descripcion;
    private String autor;
    private Date fechaPublicacion;
    private int numEjemplar;
    private Double costo;


}
