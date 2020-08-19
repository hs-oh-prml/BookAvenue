var express = require('express')
var app = express()

var http = require('http')
var server = http.Server(app)

var socket = require('socket.io')
var io = socket(server)

var port = 5000
var socketList = []

app.use('/', function(req, res){
    res.sendFile(__dirname + '/chat.html')    
})

io.on('connection', function(socket){
    console.log('User join')
    socketList.push(socket)
    socket.on('SEND', function(msg){
        console.log(msg)
        socketList.forEach(function(item, i){
            console.log(item.id);
            if(item != socket){
                item.emit('SEND', msg)
            }
        })
    })
    socket.on('disconnect', function(){
        socketList.splice(socketList.indexOf(socket), 1)
    })
})

server.listen(port, function(){
    console.log('Server is running')
})