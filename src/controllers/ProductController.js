const ProductModel = require('../models/product');

class ProductController {
    static async indexGet(req, res) {
        let data = await ProductModel.consultar();
        res.send(data);
    }

    static async itemGet(req, res) {
        let id = req.params.id;
        let data = await ProductModel.consultarPorId(id);
        if (data.length == 0) {
            res.status(404).send({ errno: 404, error: 'Not found' });
            return;
        }
        res.send(data[0]);
    }
}

module.exports = ProductController;
