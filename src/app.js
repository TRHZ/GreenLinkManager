const express = require('express'); //Correct
const app = express(); //Correct
const TemasController = require('../src/controllers/TemasController');//Correct
const AutoresController = require('../src/controllers/AutoresController');
const EditorialesController = require('../src/controllers/EditorialesController');
const LibrosController = require('../src/controllers/LibrosControllers');
const ProductController = require('../src/controllers/productController');
const puerto = 80;

app.use(express.json());

app.get('/', function (req, res) {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.send('¡Prueba 123456789012!');
});

app.get('/temas', TemasController.indexGet);
app.get('/temas/:id([0-9]+)', TemasController.itemGet);

app.get('/product',ProductController.indexGet);
app.get('/autores',AutoresController.indexGet);
app.get('/editoriales',EditorialesController.indexGet);
app.get('/libros',LibrosController.indexGet);

app.listen(puerto, function() {
    console.log("Servidor en espera http://localhost");
});