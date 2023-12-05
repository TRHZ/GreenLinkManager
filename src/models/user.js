const { connectMysql } = require('../dbconnection');

class UserModel {
    static async consultar() {
        let db = await connectMysql();
        let query = db('usuarios'); 
        return await query;
    }

    static async consultarPorId(id) {
        let db = await connectMysql();
        return await db('usuarios').where('id_usuario', id); 
    }
}

module.exports = UserModel;
