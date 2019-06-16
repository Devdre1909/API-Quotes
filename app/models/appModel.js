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
    if (limit) {
        sql.query("SELECT  c.name  as quote_category,  q.quote ,  q.tags FROM " + tableName + " q LEFT JOIN  categories  c ON  q.category_id  =  c.id LIMIT 0," + limit, (err, data) => {
            if (err) {
                results(err, null);
            } else {
                results(null, data);
            }
        });
    } else if (limit == -1) {
        sql.query("SELECT  c.name  as quote_category,  q.quote ,  q.tags FROM " + tableName + " q LEFT JOIN  categories  c ON  q.category_id  =  c.id", (err, data) => {
            if (err) {
                results(err, null);
            } else {
                results(null, data);
            }
        });
    } else {
        results({
            'Message': 'No limit given, Use -1 to request for all'
        }, null);
    }
};

Quotes.readByAuthor = function readByAuthor(limit, results) {
  if(limit) {
    sql.query("SELECT  a.name  as authors_name,  q.quote ,  q.tags FROM " + tableName + " q LEFT JOIN  authors  a ON  q.category_id  =  a.id LIMIT 0," + limit", (err, data) => {
      if(err) { results(err, null) }
      else { results(null, err) }
    });
  } else if (limit == -1) {
    sql.query("SELECT  a.name  as authors_name,  q.quote ,  q.tags FROM " + tableName + " q LEFT JOIN  authors  a ON  q.category_id  =  a.id", (err, data) => {
      if(err){ results(err, null) }
      else { results(null, data) }
    });
  } else {
     results({'Message': 'No limit given, Use -1 to request for all'}, null);
  }
};

module.exports = Quotes;
