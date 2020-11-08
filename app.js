const http = require('http');
require('dotenv').config();

http.createServer();

const server =http.createServer((req,res)=>{
    console.log('Server Started');
    //res.writeHead('Junior');
});

server.listen(process.env.PORT);