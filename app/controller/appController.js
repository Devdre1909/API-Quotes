const Quotes = require('../models/appModel');

exports.listAllQuotes = (req, res) => {
    Quotes.getAllQuotes((err, data) => {
        if (err) {
            res.status(404).json({
                'Message': 'An error occured!'
            });
        } else {
            res.status(200).json({
                "Quotes": data
            });
        };
    });
};

exports.listByCategory = (req, res) => {
    Quotes.readByCategory(req.params.limit, (err, data) => {
        if (err) {
            res.status(404).json({
                'Message': 'An error occured!'
            });
        } else {
            res.status(200).json({
                "Quotes": data
            });
        };
    });
};