'use strict';

const sql = require('mysql');

// Local connection to database
const connection = sql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'api_quotes'
});

connection.connect(e => {
    if (e) throw e;
});

module.exports = connection;