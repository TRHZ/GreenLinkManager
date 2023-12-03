const { connectMysql } = require('../dbconnection');

class LibrosModel {
    static async consultar() {
        let db = await connectMysql();
        let query = db('libros');
        return await query;
    }

    static async consultarPorId(id) {
        let db = await connectMysql();
        return await db('libros').where('id_libro', id);
    }
}

module.exports = LibrosModel;