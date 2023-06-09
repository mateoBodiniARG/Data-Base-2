
CREATE DATA BASE 

CREATE TABLE provedor(
    id_provedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    direccion VARCHAR(70),
    telefono INT,
    paginaWeb VARCHAR(80)
)

CREATE TABLE productos(
    id_productos INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    stock INT,
    precioActual INT,
    id_provedor,
    FOREING KEY (id_provedor) REFERENCES provedor (id_provedor),
    FOREING KEY (id_categorias) REFERENCES categorias (id_categorias)
)

CREATE TABLE clientes(
    id_clientes INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    direccion VARCHAR(70),
)

CREATE TABLE telefonos(
    id_telefono INT PRIMARY KEY AUTO_INCREMENT,
    telefono INT,
    id_clientes INT,
    FOREING KEY (id_clientes) REFERENCES clientes (id_clientes)
)

CREATE TABLE ventas(
    id_ventas INT PRIMARY KEY AUTO_INCREMENT,
    fecha INT,
    descuento INT,
    montoFinal INT,
    id_clientes INT,
    FOREING KEY (id_clientes) REFERENCES clientes (id_clientes)
)

CREATE TABLE prductosVentas(
    id_prodVen INT PRIMARY KEY AUTO_INCREMENT,
    montoTotal INT,
    cantidadVendida INT,
    precio INT,
    id_productos INT,
    id_ventas INT,
    FOREING KEY (id_productos) REFERENCES productos (id_productos),
    FOREING KEY (id_ventas) REFERENCES ventas (id_ventas)
)

CREATE TABLE categorias(
    id_categorias INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30),
    descripcion VARCHAR(200),
    id_productos INT,
)
