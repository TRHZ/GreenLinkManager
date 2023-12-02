const db = require('../dbconnection')

class EditorialModel{
    static async consultar(){
        let query = db('editoriales');
        return await query;
    }
}

module.exports = EditorialModel;