'use strict';

const sql = require('./db');
const tableName = 'quotes';

const Quotes = function (info) {
    this.info = info.info;
    this.status = info.status;
    this.created_in = new Date();
};

Quotes.getAllQuotes = function getAllQuotes(results) {
    sql.query("SELECT * FROM " + tableName, (err, data) => {
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
        sql.query("SELECT  c.name  as quote_category,  q.quote ,  q.tags FROM " + tableName + " q LEFT JOIN  categories  c ON  q.category_id  =  c.id LIMIT 0," + limit, (err, data) => {
            if (err) {
                results(err, null);
            } else {
                results(null, data);
            }
        });
    } else {
        sql.query("SELECT  c.name  as quote_category,  q.quote ,  q.tags FROM " + tableName + " q LEFT JOIN  categories  c ON  q.category_id  =  c.id", (err, data) => {
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
    sql.query("SELECT a.name as author_name,  q.quote ,  q.tags FROM " + tableName + " q LEFT JOIN  authors  a ON  q.author_id  =  a.id LIMIT 0," + limit, (err, data) => {
      if(err) { results(err, null) }
      else { results(null, data) }
    });
  } else {
    sql.query("SELECT  a.name  as authors_name,  q.quote ,  q.tags FROM " + tableName + " q LEFT JOIN  authors  a ON  q.category_id  =  a.id", (err, data) => {
      if(err){ results(err, null) }
      else { results(null, data) }
    });
  }
};

module.exports = Quotes;
