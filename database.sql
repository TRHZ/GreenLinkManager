CREATE DATABASE IF NOT EXISTS biblioteca;

USE biblioteca;

CREATE TABLE autores (
    id_autor    INTEGER         NOT NULL    AUTO_INCREMENT,
    nombre      VARCHAR(128)    NOT NULL,
    apellidos   VARCHAR(255)    NOT NULL,
    PRIMARY KEY (id_autor)
);

CREATE TABLE editoriales (
    id_editorial    INTEGER             NOT NULL    AUTO_INCREMENT,
    nombre          VARCHAR(255)        NOT NULL,
    PRIMARY KEY     (id_editorial)
);

CREATE TABLE temas (
    id_tema         INTEGER             NOT NULL    AUTO_INCREMENT,
    nombre          VARCHAR(255)        NOT NULL,
    PRIMARY KEY     (id_tema)
);

CREATE TABLE libros (
    id_libro        INTEGER             NOT NULL    AUTO_INCREMENT,
    titulo          VARCHAR(255)        NOT NULL,
    edicion         VARCHAR(32)         NOT NULL,
    fk_id_autor     INTEGER             NOT NULL,
    fk_id_editorial INTEGER             NOT NULL,
    fk_id_tema      INTEGER             NOT NULL,
    PRIMARY KEY     (id_libro),
    FOREIGN KEY     (fk_id_autor)       REFERENCES autores(id_autor),
    FOREIGN KEY     (fk_id_editorial)   REFERENCES editoriales(id_editorial),
    FOREIGN KEY     (fk_id_tema)        REFERENCES temas(id_tema)
);

-- Insertar datos en la tabla de autores
INSERT INTO autores (nombre, apellidos) VALUES
    ('Gabriel', 'García Márquez'),
    ('Jane', 'Austen'),
    ('George', 'Orwell');

-- Insertar datos en la tabla de editoriales
INSERT INTO editoriales (nombre) VALUES
    ('Penguin Random House'),
    ('HarperCollins'),
    ('Editorial Planeta');

-- Insertar datos en la tabla de temas
INSERT INTO temas (nombre) VALUES
    ('Ficción'),
    ('Historia'),
    ('Ciencia Ficción');

-- Insertar datos en la tabla de libros
INSERT INTO libros (titulo, edicion, fk_id_autor, fk_id_editorial, fk_id_tema) VALUES
    ('Cien años de soledad', 'Primera Edición', 1, 1, 1),
    ('Orgullo y prejuicio', 'Segunda Edición', 2, 2, 1),
    ('1984', 'Edición Especial', 3, 3, 3);
