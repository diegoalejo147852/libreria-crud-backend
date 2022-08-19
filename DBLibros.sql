USE [master]
GO

CREATE DATABASE [DBLibros]
GO

USE DBLibros
GO

IF OBJECT_ID('Libro') IS NOT NULL 
	DROP TABLE dbo.Libro;

CREATE TABLE dbo.Libro(
	id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	nombre VARCHAR(150) UNIQUE NOT NULL,
	descripcion VARCHAR(300) NOT NULL,
	autor VARCHAR(150) NOT NULL,
	fecha_publicacion DATETIME NOT NULL,
	num_ejemplar INT NOT NULL,
	costo FLOAT NOT NULL
);


INSERT INTO dbo.Libro (nombre, descripcion, autor, fecha_publicacion, num_ejemplar, costo) VALUES ('Spring in Action 4th Edicion', 'Explorará la programación reactiva, los microservicios, el descubrimiento de servicios, las API RESTful, la implementación y las mejores prácticas de los expertos', 'Craing Walls', '2014-10-05', 5, 38.99)
INSERT INTO dbo.Libro (nombre, descripcion, autor, fecha_publicacion, num_ejemplar, costo) VALUES ('Java EE 7 Tutorial', 'guía basada en ejemplos y orientada a tareas para desarrollar aplicaciones empresariales para la plataforma Java', 'Eric Jendrock', '2014-05-02', 6, 29.99)
INSERT INTO dbo.Libro (nombre, descripcion, autor, fecha_publicacion, num_ejemplar, costo) VALUES ('Docker in Action, Second Edition', 'Incluso las aplicaciones pequeñas tienen docenas de componentes. Las aplicaciones grandes pueden tener miles, lo que dificulta su instalación, mantenimiento y eliminación.', 'Jeffrey Nickoloff', '2019-10-28', 9, 42.50)
INSERT INTO dbo.Libro (nombre, descripcion, autor, fecha_publicacion, num_ejemplar, costo) VALUES ('Murachs JavaScript and jQuery', 'Murach le enseña cómo codificar JavaScript moderno que se ajusta a los estándares ECMAScript, como lo hacen los profesionales. Al mismo tiempo, le enseña cómo usar jQuery', 'Mary Delamater', '2020-08-26', 16, 50.60)
INSERT INTO dbo.Libro (nombre, descripcion, autor, fecha_publicacion, num_ejemplar, costo) VALUES ('Murachs HTML5 and CSS3', 'Ahora, esta 4.ª edición actualiza y mejora todo el contenido HTML y CSS del libro... y agrega cobertura de Flexible Box y Grid Layout, dos nuevas formas CSS3 de implementar diseños de página', 'Anne Boehm', '2018-03-02', 23, 31.53)

