Ejemplo crud libreria

1. Ejecutar el script DBLibros.sql en SQLServer

2. En el proyecto de BACK-END: libro-service , en la direccion libro-service\src\main\resources\application.properties configurar un usuario y contraseña

spring.datasource.username=user
spring.datasource.password=1234

3. Ejecutar el servicio:  libro-service.

4. En el proyecto de FRONT-END: libro-front dentro de la carpeta principal abrir una terminal cmd o shell y ejecutar: ng serve --open 

5. Se desplegará la aplicación en localhost: http://localhost:4200/