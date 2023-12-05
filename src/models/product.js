const { connectMysql } = require('../dbconnection');

class ProductModel {
    static async consultar() {
        let db = await connectMysql();
        let query = db('productos'); // Cambiado de 'product' a 'producto'
        return await query;
    }

    static async consultarPorId(id) {
        let db = await connectMysql();
        return await db('productos').where('id_producto', id); // Cambiado de 'productos' a 'producto'
    }
}

module.exports = ProductModel;
