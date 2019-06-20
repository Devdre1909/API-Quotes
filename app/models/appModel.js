'use strict';

const sql = require('./db');
const tableName = 'quotes';

const Quotes = function (info) {
    this.info = info.info;
    this.status = info.status;
    this.created_in = new Date();
};

Quotes.getAllQuotes = function getAllQuotes(results) {
    sql.query("SELECT a.name AS Author , c.name AS category, q.quote AS Quote, q.tags AS Tags FROM " + tableName + " q , authors a, categories c WHERE q.author_id = a.id AND q.category_id = c.id ORDER BY RAND()", (err, data) => {
        if (err) {
            results(err, null);
        } else {
            results(null, data);
        }
    });
};

Quotes.readByCategory = function readByCategory(limit, results) {
  let a = 1;
    if (limit > 0) {
        sql.query("SELECT  c.name  as Category,  q.quote AS Quote ,  q.tags AS Tags FROM " + tableName + " q, categories c WHERE q.category_id  =  c.id ORDER BY RAND() LIMIT 0," + limit, (err, data) => {
            if (err) {
                results(err, null);
            } else {
                results(null, data);
            }
        });
    } else {
        sql.query("SELECT  c.name  as Category, q.quote AS Quote ,  q.tags AS Tags " + tableName + " q, categories c WHERE q.category_id  =  c.id ORDER BY RAND()", (err, data) => {
            if (err) {
                results(err, null);
            } else {
                results(null, data);
            }
        });
    }
};

Quotes.readByAuthor = function readByAuthor(limit, results) {
  if(limit > 0) {
    sql.query("SELECT a.name AS Author,  q.quote AS Quote ,  q.tags AS Tags FROM " + tableName + " q, authors a WHERE q.author_id  =  a.id ORDER BY RAND() LIMIT 0," + limit, (err, data) => {
      if(err) { results(err, null) }
      else { results(null, data) }
    });
  } else {
    sql.query("SELECT a.name as Author,  q.quote AS Quotes ,  q.tags AS Tags FROM " + tableName + " q, authors a WHERE q.author_id  =  a.id ORDER BY RAND()", (err, data) => {
      if(err){ results(err, null) }
      else { results(null, data) }
    });
  }
};

Quotes.readBySettings = function readBySettings(){};

module.exports = Quotes;
