var connection = require("./connection.js");

var orm = {
  selectAll: function(tableInput, cb) {
    connection.query("SELECT * From " + tableInput + ";", function(
      err,
      result
    ) {
      if (err) throw err;
      cb(result);
    });
  },

  updateOne: function(tableInput, burgerId, cb) {
    connection.query(
      "UPDATE burger SET devoured=true WHERE id=" + burgerId + ";",
      function(err, result) {
        if (err) throw err;
        cb(result);
      }
    );
  },

  insertOne: function(tableInput, val, cb) {
    connection.query(
      "INSERT INTO " + tableInput + " (burger_name) VALUES ('" + val + "');",
      function(err, result) {
        if (err) throw err;
        cb(result);
      }
    );
  }
};

module.exports = orm;
