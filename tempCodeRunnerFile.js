// Require all dependencies
const express = require('express');
const path = require('path');

// Init express and set port
const app = express();
const port = process.env.PORT || 8000;

// Init body-parser
app.use(express.json());
app.use(express.urlencoded({
    extended: false
}));


// Activtes server
app.listen(port, () => {
    console.log(`Server started, Listening to PORT ${port}`);
});