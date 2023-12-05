const express = require('express'); //Correct
const app = express(); //Correct
const TemasController = require('../src/controllers/TemasController');//Correct
const ProductController = require('../src/controllers/productController');
const UserController = require('../src/controllers/UserController');
const RegInvController = require('../src/controllers/RegInvController');

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
app.get('/user',UserController.indexGet);
app.get('/reginv',RegInvController.indexGet);


app.listen(puerto, function() {
    console.log("Servidor en espera http://localhost");
});