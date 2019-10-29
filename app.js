var express = require("express");
var app = express();

app.set('view engine', 'html');

app.use(express.static(__dirname + '/public'));

app.get("/", (req, res) => {
  res.render("index");
});

module.exports = app;

