const libros = require("../models/libros")
class LibrosController {
    static async indexGet(req, res){
        let data = await libros.consultar();
        res.send(data);
    } 
}

module.exports = LibrosController;