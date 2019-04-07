
var net = require('net');
// Configuration parameters
var HOST = '192.168.1.56';
var PORT = 5432;
 
// Create Server instance 
var server = net.createServer(onClientConnected);  
 
server.listen(PORT, HOST, function() {  
  console.log('server listening on %j', server.address());
});
 
function onClientConnected(sock) {  
  var remoteAddress = sock.remoteAddress + ':' + sock.remotePort;
  console.log('new client connected: %s', remoteAddress);
 
  sock.on('data', function(data) {	 	
    console.log('%s Says: %s', remoteAddress, data);
    sock.write(data);
	
	llat = Number((data.slice(0, 9)));
	llon = Number((data.slice(10, 19)));
	console.log(llat);
	console.log(llon);
	
	
	//send to db
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
  var values = [
    ['tcp', llon, llat, 'Dog Agrifoos O2:99 77BPM']];
  //step-6
  con.query(sql, [values], function (err, result) {
    if (err) throw err;
    console.log("Number of records inserted: " + result.affectedRows);
	con.end();
  });
});
	
	
	
    sock.write(' exit');
	sock.destroy();
  });
  sock.on('close',  function () {
    console.log('connection from %s closed', remoteAddress);
  });
  sock.on('error', function (err) {
    console.log('Connection %s error: %s', remoteAddress, err.message);
  });
  console.log('Connection %s', sock.data);

	
	
};

 function initMap() {
	 lat=0;
	 lng=0;
	 console.log('inside');
     var myLatLng = {lat, lng};
	
     var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 17,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
		  icon: 'rsz_dog.png',
          map: map,
          title: 'Dog!'
        });
      }