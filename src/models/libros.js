const db = require('../dbconnection')

class LibrosModel{
    static async consultar(){
        let query = db('libros');
        return await query;
    }
}

module.exports = LibrosModel;