'use strict';

module.exports = function (app) {
    const todoQuotes = require('../controller/appController');

    app.route('/api/quotes/all')
        .get(todoQuotes.listAllQuotes);

    app.route('/api/quotes/category/:limit')
        .get(todoQuotes.listByCategory);

    app.route('/api/quotes/category/')
        .get(todoQuotes.listByCategory);

    app.route('/api/quotes/authors/:limit')
        .get(todoQuotes.listByAuthor);

    app.route('/api/quotes/authors/')
        .get(todoQuotes.listByAuthor);
};
