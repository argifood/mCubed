var mysql = require('mysql');
//step-2
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "test"
});

//step-3
con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  //step-4
  var sql = "INSERT INTO markers (name, lng, lat, type) VALUES ?";
  //step-5
  var test = 4;
  var values = [
    ['5', test, '3', 'sss']];
  //step-6
  con.query(sql, [values], function (err, result) {
    if (err) throw err;
    console.log("Number of records inserted: " + result.affectedRows);
  });
});