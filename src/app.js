const express = require('express'); //Correct
const app = express(); //Correct
const ProductController = require('../src/controllers/productController');
const UserController = require('../src/controllers/UserController');
const RegInvController = require('../src/controllers/RegInvController');

const puerto = 80;

app.use(express.json());

app.get('/', function (req, res) {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.send('Lets goo');
});

app.get('/user', UserController.indexGet);
app.get('/user/:id([0-9]+)', UserController.itemGet);
app.post('/user', UserController.indexPost);
app.put('/user/:id([0-9]+)', UserController.itemPut);
app.patch('/user/:id([0-9]+)', UserController.itemPatch);



app.get('/product',ProductController.indexGet);
app.get('/product/:id([1-2]+)', ProductController.itemGet);
app.get('/product/:id([1-2]+)/user', ProductController.itemGet);
app.get('/user',UserController.indexGet);
app.get('/user/:id([1-2]+)', UserController.itemGet);
app.get('/reginv',RegInvController.indexGet);
app.get('/reginv/:id([1-2]+)', RegInvController.itemGet);


app.listen(puerto, function() {
    console.log("Servidor en espera http://localhost");
});