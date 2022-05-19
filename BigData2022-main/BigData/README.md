MySQL
1. Obtner la clave del root desde el execution log del docker:
   Ej. [Entrypoint] GENERATED ROOT PASSWORD: 5YkUH6Ij0lItEzWup1@gWoxyN%3
2. Ingresar al CLI del Mysql
3. sh-4.2# mysql -u root -p
4. Actualizar la contraseña del Root
5. mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY '<Clave>'; 
6. Crear un nuevo usuario que se pueda conectar desde 
7. mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY '<Clave>';
8. Crear una base de datos
9. mysql> create database bigdata;  
