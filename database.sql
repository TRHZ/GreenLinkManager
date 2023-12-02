CREATE DATABASE GLM;

USE GLM;

-- Tabla de Usuarios
CREATE TABLE Usuarios (
    userID INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    nombreUsuario VARCHAR(50),
    correoElectronico VARCHAR(100),
    contrasena VARCHAR(100)
);

-- Tabla de Productos
CREATE TABLE Productos (
    productoID INT PRIMARY KEY,
    nombreProducto VARCHAR(100),
    tipo VARCHAR(20),
    descripcion TEXT,
    unidadMedida VARCHAR(20),
    cantidadDisponible INT,
    umbralNotificacion INT,
    userID INT,
    FOREIGN KEY (userID) REFERENCES Usuarios(userID)
);

-- Tabla de InventarioResumen
CREATE TABLE InventarioResumen (
    resumenID INT PRIMARY KEY,
    productoID INT,
    estado VARCHAR(20),
    FOREIGN KEY (productoID) REFERENCES Productos(productoID)
);

-- Tabla de RegistroCompartido
CREATE TABLE RegistroCompartido (
    registroID INT PRIMARY KEY,
    productoID INT,
    userID INT,
    FOREIGN KEY (productoID) REFERENCES Productos(productoID),
    FOREIGN KEY (userID) REFERENCES Usuarios(userID)
);

-- Tabla de ChatColaborativo
CREATE TABLE ChatColaborativo (
    mensajeID INT PRIMARY KEY,
    contenidoMensaje TEXT,
    userID INT,
    registroID INT,
    fechaHora DATETIME,
    FOREIGN KEY (userID) REFERENCES Usuarios(userID),
    FOREIGN KEY (registroID) REFERENCES RegistroCompartido(registroID)
);

-- Insertar datos en la tabla Usuarios
INSERT INTO Usuarios (userID, nombre, apellido, nombreUsuario, correoElectronico, contrasena)
VALUES
    (10, 'Juan', 'Pérez', 'juanito', 'juanito@example.com', 'contraseña123'),
    (20, 'María', 'Gómez', 'maria89', 'maria@example.com', 'claveSegura');

-- Insertar datos en la tabla Productos
INSERT INTO Productos (productoID, nombreProducto, tipo, descripcion, unidadMedida, cantidadDisponible, umbralNotificacion, userID)
VALUES
    (1, 'Manzanas', 'Fruta', 'Manzanas frescas', 'Kg', 100, 10, 1),
    (2, 'Martillo', 'Material', 'Martillo de alta calidad', 'Unidad', 50, 5, 2);

-- Insertar datos en la tabla InventarioResumen
INSERT INTO InventarioResumen (resumenID, productoID, estado)
VALUES
    (1, 1, 'Completo'),
    (2, 2, 'Agotándose');

-- Insertar datos en la tabla RegistroCompartido
INSERT INTO RegistroCompartido (registroID, productoID, userID)
VALUES
    (1, 1, 2),
    (2, 2, 1);

-- Insertar datos en la tabla ChatColaborativo
INSERT INTO ChatColaborativo (mensajeID, contenidoMensaje, userID, registroID, fechaHora)
VALUES
    (1, 'Hagamos un pedido adicional de manzanas', 1, 1, '2023-01-01 12:30:00'),
    (2, 'De acuerdo, agregaré más martillos al inventario', 2, 2, '2023-01-02 14:45:00');
