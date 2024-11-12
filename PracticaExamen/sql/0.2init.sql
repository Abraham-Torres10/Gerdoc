/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  Usuario
 * Created: 22 oct. 2024
 */

use Test;

insert into USUARIOS (user_name,user_pass) values ( 'gerdoc', sha('gerdoc1234') );
insert into USUARIOS (user_name,user_pass) values ( 'alumno', sha('alumno1234') );

insert into ARTICULO (Clave,articulo,descripcion,precio) values ( 1, 'croquetas', 'para gato', '150' );
insert into ARTICULO (Clave,articulo,descripcion,precio) values ( 2, 'cama', 'para perro', '250' );
insert into ARTICULO (Clave,articulo,descripcion,precio) values ( 3, 'juguete de pez', 'para gato', '50' );
insert into ARTICULO (Clave,articulo,descripcion,precio) values ( 4, 'latas de pescado', 'para gato', '100' );
insert into ARTICULO (Clave,articulo,descripcion,precio) values ( 5, 'cepillo', 'para todo tipo de pelo de animal', '150' );

insert into ROL (USUARIOS_user_name, user_rol) values ( 'gerdoc', 'admin' );
insert into ROL (USUARIOS_user_name, user_rol) values ( 'alumno', 'alumno' );


