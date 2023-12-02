const autores = require("../models/autores")
class AutoresController {
    static async indexGet(req, res){
        let data = await autores.consultar();
        res.send(data);
    } 
}

module.exports = AutoresController;