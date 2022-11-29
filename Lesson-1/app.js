const http = require('http');
const os = require('os');

console.log("Kubia server starting....")

var handler = function(requset, responce) {
    console.log("Received request from " + requset.connection.remoteAddress);
    responce.writeHead(200);
    responce.end("You've hit " + os.hostname() + "\n")
}

var www = http.createServer(handler);
www.listen(8080);