const express = require("express");
const bodyParser = require("body-parser");
const mysql = require("mysql");

const app = express();

app.use(bodyParser.urlencoded({ extended: true }));

//database settings
const db = mysql.createConnection({
  host: process.env.MYSQL_HOST,
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE
});
// connect to database
db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log("Connected to database");
});
global.db = db;

require("./routes/main")(app);

//import bootstrap
app.use('/css', express.static(__dirname + '/node_modules/bootstrap/dist/css'));

app.set("views", __dirname + "/views");
app.set("view engine", "ejs");
app.engine("html", require("ejs").renderFile);

app.listen(process.env.WEBAPP_SERVER_PORT, () => console.log(`App listening on port ${process.env.WEBAPP_SERVER_PORT}!`, `\n*** Please go to localhost:${process.env.WEBAPP_SERVER_PORT}/home ***`));