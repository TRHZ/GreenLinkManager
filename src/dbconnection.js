const fs = require('fs');
const knex = require("knex");

async function connectMysql(){
    const mysqlPassword = await fs.promises.readFile('/run/secrets/MYSQL_PASSWORD'); 
    const db = knex({
        client: 'mysql2',
        connection: {
            host : "mysql", //Nombre del docker-compose service
            user : "user_biblioteca",
            password : mysqlPassword,
            database : "biblioteca"
        }
    });
    return db;
}


module.exports = {
    connectMysql
};