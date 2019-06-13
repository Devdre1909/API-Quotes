// Require all dependencies
const express = require('express');
const path = require('path');
const mysql = require('mysql');
const bodyParser = require('body-parser');

// Init express and set port
const app = express();
const port = process.env.PORT || 3000;

const connect = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'api_quotes'
});

connect.connect();

// Init body-parser
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));


const routes = require('./app/routes/approutes');
routes(app);



// Activates server
app.listen(port, () => {
    console.log(`API Server started, Listening to PORT ${port}`);
});