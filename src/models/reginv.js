const { connectMysql } = require('../dbconnection');

class RegInvModel {
    static async consultar() {
        let db = await connectMysql();
        let query = db('registros_inventario'); 
        return await query;
    }

    static async consultarPorId(id) {
        let db = await connectMysql();
        return await db('registros_inventario').where('id_registro', id); 
    }
}

module.exports = RegInvModel;
