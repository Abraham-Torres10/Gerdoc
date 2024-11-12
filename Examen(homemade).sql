
Create database TEST;
use TEST;

CREATE TABLE MARCA (
    clave INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

INSERT INTO MARCA (clave, nombre) VALUES (1, 'GERDOC'),
(2, 'Marca A'),
(3, 'Marca B'),
(4, 'Marca C'),
(5, 'Marca D');

select * from Marca;


CREATE TABLE PRODUCTO (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    clave INT,
    FOREIGN KEY (clave) REFERENCES MARCA(clave)
);

select * from Producto;

SELECT producto.Id_producto, producto.nombre AS Nombre, producto.Precio, marca.nombre AS Marca, marca.clave
FROM PRODUCTO INNER JOIN MARCA ON producto.clave = marca.Clave;

SELECT producto.Id_producto, producto.nombre AS Nombre, producto.Precio, 
                           marca.nombre AS Marca, marca.clave
                           FROM PRODUCTO INNER JOIN MARCA ON producto.clave = marca.Clave;