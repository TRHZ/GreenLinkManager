const express = require('express');
const app = express();
const TemasControler = require('../controllers/TemasControllers');
const AutoresController = require('../controllers/AutoresController');
const EditorialesController = require('../controllers/EditorialesController');
const LibrosController = require('../controllers/LibrosControllers');
const puerto = 80;

app.use(express.json());


app.get("/", function(req, res){
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end("Hello Birds");
});

app.get('/temas',TemasControler.indexGet);
app.get('/temas/:id([0-9]+)', TemasControler.itemGet);

app.get('/autores',AutoresController.indexGet);
app.get('/editoriales',EditorialesController.indexGet);
app.get('/libros',LibrosController.indexGet);

app.listen(puerto, function(){
    console.log("Servidor en espera http://localhost");
});