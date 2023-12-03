const { connectMysql } = require('../dbconnection');

class EditorialModel{
    static async consultar(){
        let db = await connectMysql();
        let query = db('editoriales');
        return await query;
    }
    static async consultarPorId(id) {
        let db = await connectMysql();
        return await db('editoriales').where('id_editorial', id);
    }
}

module.exports = EditorialModel;
