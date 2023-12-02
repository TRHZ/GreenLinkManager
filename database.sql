-- Crear la base de datos GLM
CREATE DATABASE IF NOT EXISTS GLM;
USE GLM;

-- Tabla de Usuarios
CREATE TABLE IF NOT EXISTS Usuarios (
    userID INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    nombreUsuario VARCHAR(50),
    correoElectronico VARCHAR(100),
    contrasena VARCHAR(100)
);

-- Tabla de Productos
CREATE TABLE IF NOT EXISTS Productos (
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
CREATE TABLE IF NOT EXISTS InventarioResumen (
    resumenID INT PRIMARY KEY,
    productoID INT,
    estado VARCHAR(20),
    FOREIGN KEY (productoID) REFERENCES Productos(productoID)
);

-- Tabla de RegistroCompartido
CREATE TABLE IF NOT EXISTS RegistroCompartido (
    registroID INT PRIMARY KEY,
    productoID INT,
    userID INT,
    FOREIGN KEY (productoID) REFERENCES Productos(productoID),
    FOREIGN KEY (userID) REFERENCES Usuarios(userID)
);

-- Tabla de ChatColaborativo
CREATE TABLE IF NOT EXISTS ChatColaborativo (
    mensajeID INT PRIMARY KEY,
    contenidoMensaje TEXT,
    userID INT,
    registroID INT,
    fechaHora DATETIME,
    FOREIGN KEY (userID) REFERENCES Usuarios(userID),
    FOREIGN KEY (registroID) REFERENCES RegistroCompartido(registroID)
);
