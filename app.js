var Hapi = require('hapi');

var server = new Hapi.Server('localhost', 3000);

server.route({
    method: 'GET',
    path: '/hello',
    handler: function (request, reply) {

        reply('it\'s working!');
    }
});

server.start();