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


INSERT INTO dbo.Libro (nombre, descripcion, autor, fecha_publicacion, num_ejemplar, costo) VALUES ('Spring in Action 4th Edicion', 'Explorar� la programaci�n reactiva, los microservicios, el descubrimiento de servicios, las API RESTful, la implementaci�n y las mejores pr�cticas de los expertos', 'Craing Walls', '2014-10-05', 5, 38.99)
INSERT INTO dbo.Libro (nombre, descripcion, autor, fecha_publicacion, num_ejemplar, costo) VALUES ('Java EE 7 Tutorial', 'gu�a basada en ejemplos y orientada a tareas para desarrollar aplicaciones empresariales para la plataforma Java', 'Eric Jendrock', '2014-05-02', 6, 29.99)
INSERT INTO dbo.Libro (nombre, descripcion, autor, fecha_publicacion, num_ejemplar, costo) VALUES ('Docker in Action, Second Edition', 'Incluso las aplicaciones peque�as tienen docenas de componentes. Las aplicaciones grandes pueden tener miles, lo que dificulta su instalaci�n, mantenimiento y eliminaci�n.', 'Jeffrey Nickoloff', '2019-10-28', 9, 42.50)
INSERT INTO dbo.Libro (nombre, descripcion, autor, fecha_publicacion, num_ejemplar, costo) VALUES ('Murachs JavaScript and jQuery', 'Murach le ense�a c�mo codificar JavaScript moderno que se ajusta a los est�ndares ECMAScript, como lo hacen los profesionales. Al mismo tiempo, le ense�a c�mo usar jQuery', 'Mary Delamater', '2020-08-26', 16, 50.60)
INSERT INTO dbo.Libro (nombre, descripcion, autor, fecha_publicacion, num_ejemplar, costo) VALUES ('Murachs HTML5 and CSS3', 'Ahora, esta 4.� edici�n actualiza y mejora todo el contenido HTML y CSS del libro... y agrega cobertura de Flexible Box y Grid Layout, dos nuevas formas CSS3 de implementar dise�os de p�gina', 'Anne Boehm', '2018-03-02', 23, 31.53)

