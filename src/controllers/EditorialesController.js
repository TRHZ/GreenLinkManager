const editoriales = require("../models/editoriales")
class EditorialesController {
    static async indexGet(req, res){
        let data = await editoriales.consultar();
        res.send(data);
    } 
}

module.exports = EditorialesController;