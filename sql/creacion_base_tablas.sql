-- *********** Facultad de Contaduria y Administracion ***********
-- 					Diplomado de BASES DE DATOS
-- 		Scripts de Lalos Burger				Junio, 2021.
-- ***************************************************************


CREATE DATABASE lalos_buger;

USE lalos_buger;

CREATE TABLE cliente(
    NoCliente INT(11) AUTO_INCREMENT,
    cliente_nombre VARCHAR(100) NOT NULL,
    cliente_apaterno VARCHAR(100) NOT NULL,
    cliente_amaterno VARCHAR(100),
    cliente_direccion VARCHAR(200),
    cliente_correo VARCHAR(100) NOT NULL,
    cliente_contrasenia VARCHAR(255),
    cliente_telefono INT(10) NOT NULL,
    cliente_fechaNac DATE NOT NULL,
    PRIMARY KEY(NoCliente)
    );

CREATE TABLE menu(
    codigo INT(11) AUTO_INCREMENT,
    menu_nombre VARCHAR(100) NOT NULL,
    menu_precio DECIMAL(8,2) NOT NULL,
    menu_tipo VARCHAR(100) NOT NULL,
    menu_descripcion VARCHAR(100) NOT NULL,
    PRIMARY KEY(codigo)
    );

CREATE TABLE pedido(
    NoPedido INT(11) AUTO_INCREMENT,
    pedido_fecha DATE NOT NULL,
    cliente INT(11) NOT NULL,
    PRIMARY KEY (NumFactura),
    FOREIGN KEY (cliente)
	    REFERENCES cliente(NoCliente)
);

CREATE pedidoDetalle(
    ticket INT(11) AUTO_INCREMENT,
    producto INT(11),
    cantidad INT(5,)
    total DECIMAL(8,2),
    pedido INT(11),
    PRIMARY KEY(ticket),
    FOREIGN KEY(producto)
        REFERENCES menu(codigo),
    FOREIGN KEY (pedido)
        REFERENCES pedido(NoPedido)
);

INSERT INTO `cliente`(`cliente_nombre`, `cliente_apaterno`, `cliente_amaterno`, 
    `cliente_direccion`, `cliente_correo`, `cliente_contrasenia`, `cliente_telefono`, `cliente_fechaNac`) 
VALUES ('Mario','Morales','Juarez','Naucalpan de Juarez Edo. Mexico',
    'maraju@gmail.com','1234abc',5519827989,'2021-05-22')
