const { connectMysql } = require('../dbconnection');

class AutoresModel{
    static async consultar(){
        let db = await connectMysql();
        let query = db('autores');
        return await query;
    }
    static async consultarPorId(id) {
        let db = await connectMysql();
        return await db('temas').where('id_tema', id);
    }
}

module.exports = AutoresModel;